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
    $stmt = $conn->prepare("INSERT INTO `user` (`userID`, `locationID`, `firstName`, `lastName`, `email`, `phone`, `password`) VALUES (NULL, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param('isssis', $_REQUEST['loc'], $_REQUEST['first'], $_REQUEST['last'], $_REQUEST['email'], $_REQUEST['phone'], $token);
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
    alert('Successfully updated profile.');
    redirect('../current.php');
}

function delete_user($userID) {
	$query = "DELETE FROM user WHERE userID = $userID";
	db_query($query);
	alert('User deleted!');
	destroy_session();
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
    alert('Successfully updated password.');
    redirect('../current.php');
}

function destroy_session() {
    session_start();
    $_SESSION = array();
    session_destroy();
    alert('You are logged out.');
    redirect('../current.php');
    exit;
}

?>