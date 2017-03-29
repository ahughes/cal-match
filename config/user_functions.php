<?php
session_start();

//Credentials for connection
require_once('../config/db_functions.php');

if(isset($_REQUEST['action'])) {
	switch($_REQUEST['action']) {
		case add:
			create_user();
			break;
		case update:
			update_user();
			break;
		case updatePass:
			update_password();
			break;
		case delete:
			delete_user($_SESSION['userID']);
			break;
		case logout:
			destroy_session();
			session_start();
			alert('You have been successfully logged out. Come back soon!');
			redirect('../current.php');
			break;
	}
}

function create_user() {
	if(!isset($_REQUEST['first']) || !isset($_REQUEST['last']) || !isset($_REQUEST['email']) || !isset($_REQUEST['password'])) {
		alert('Please fill all required fields before submitting.'); redirect('../current.php');
	}
	$conn = db_connect(); //connect to db

	if($_REQUEST['password'] == $_REQUEST['confirm']) {
		$token = salted($_REQUEST['password']);
	} else { alert('Passwords do not match, please try again.'); redirect('../current.php'); }
    $stmt = $conn->prepare("INSERT INTO `user` (`userID`, `firstName`, `lastName`, `email`, `phone`, `password`) VALUES (NULL, ?, ?, ?, ?, ?)");
    $stmt->bind_param('issis', $_REQUEST['first'], $_REQUEST['last'], $_REQUEST['email'], $_REQUEST['phone'], $token);
    $stmt->execute();
    if($conn->error) die('Error: ' . $conn->error);
    $conn->close();
    redirect('../current.php');
}

function update_user() {
	$conn = db_connect(); //connect to db
    $stmt = $conn->prepare("UPDATE `user` SET firstName = ?, lastName = ?, email = ?, phone =? WHERE userID = ?");
    $stmt->bind_param('ssssi', $_REQUEST['first'], $_REQUEST['last'], $_REQUEST['email'], $_REQUEST['phone'], $_SESSION['userID']);
    $stmt->execute();
    if($conn->error) die('Error: ' . $conn->error);
    $conn->close();
    $_SESSION['firstName'] = $_REQUEST['first'];
    $_SESSION['lastName'] = $_REQUEST['last'];
    $_SESSION['phone'] = $_REQUEST['phone'];
    $_SESSION['email'] = $_REQUEST['email'];
    alert('Successfully updated profile.');
    redirect('../current.php');
}

function delete_user($userID) {
	$query = "DELETE FROM user WHERE userID = '$userID'";
	db_query($query);
	destroy_session();
	session_start();
	alert('User deleted!');
	redirect('../current.php');
}

function update_password() {
	if($_REQUEST['password'] == $_REQUEST['confirm']) {
		$token = salted($_REQUEST['password']);
	} else { alert('Passwords do not match, please try again.'); redirect('../current.php'); }
	$conn = db_connect(); //connect to db

    $stmt = $conn->prepare("UPDATE `user` SET `password` = ? WHERE userID = ?");
    $stmt->bind_param('si', $token, $_SESSION['userID']);
    $stmt->execute();
    if($conn->error) die('Error: ' . $conn->error);
    $conn->close();
    destroy_session(); session_start();
    alert('Successfully updated password. Please log in again.');
    redirect('../current.php');
}

function destroy_session() {
    session_start();
    $_SESSION = array();
    session_destroy();
}

?>