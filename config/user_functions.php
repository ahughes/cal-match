<?php
session_start();

//Credentials for connection
require_once('../config/db_functions.php');

if(isset($_REQUEST['action'])) {
	switch($_REQUEST['action']) {
		case add:
			create_user();
			break;
		case authenticate:
			authenticate();
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
			redirect('../index.php');
			break;
	}
}

function create_user() {
	if(!isset($_REQUEST['first']) || !isset($_REQUEST['last']) || !isset($_REQUEST['email']) || !isset($_REQUEST['password'])) {
		alert('Please fill all required fields before submitting.'); redirect('../index.php');
	}
	$conn = db_connect(); //connect to db

	if($_REQUEST['password'] == $_REQUEST['confirm']) {
		$token = salted($_REQUEST['password']);
	} else { alert('Passwords do not match, please try again.'); redirect('../index.php'); }
    $stmt = $conn->prepare("INSERT INTO `user` (`userID`, `firstName`, `lastName`, `email`, `phone`, `password`) VALUES (NULL, ?, ?, ?, ?, ?)");
    $stmt->bind_param('sssis', $_REQUEST['first'], $_REQUEST['last'], $_REQUEST['email'], $_REQUEST['phone'], $token);
    $stmt->execute();
    if($conn->error) die('Error: ' . $conn->error);
    $conn->close();
    redirect('../index.php');
}

function authenticate() {
	require_once('../config/db_functions.php');

	if(isset($_REQUEST['email']) && isset($_REQUEST['password'])) {
		$conn = db_connect();
		$email = sanitize($conn, $_REQUEST['email']);
		$token = salted(sanitize($conn, $_REQUEST['password']));
	} else { $conn->close(); redirect('../index.php'); exit; }

	$stmt = $conn->prepare("SELECT * FROM user WHERE email=?");
	if($conn->error) die("Pre-bind error: " . $conn->error);
	$stmt->bind_param('s', $email);
	$stmt->execute();
	$result = $stmt->get_result();

	if($result === false) { return false; }
	$rows = array();
	while ($row = mysqli_fetch_assoc($result)) { $rows[] = $row; }
	$result->free();
	$conn->close();

	foreach($rows as $user) { 
		if($token == $user['password']) {
		  session_start();
		  $_SESSION['email'] = $user['email'];
		  $_SESSION['firstName'] = $user['firstName'];
		  $_SESSION['lastName'] = $user['lastName'];
		  $_SESSION['phone'] = $user['phone'];
		  $_SESSION['userID'] = $user['userID'];
		  $_SESSION['loggedIn'] = true;
		  alert('Welcome, ' . $_SESSION['firstName'] . ', you have successfully logged in.');
		} else {
		  alert('Incorrect email address or password. Please try again.');
		}
	}
	redirect('../index.php');
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
    redirect('../index.php');
}

function delete_user($userID) {
	$query = "DELETE FROM user WHERE userID = '$userID'";
	db_query($query);
	destroy_session();
	session_start();
	alert('User deleted!');
	redirect('../index.php');
}

function update_password() {
	if($_REQUEST['password'] == $_REQUEST['confirm']) {
		$token = salted($_REQUEST['password']);
	} else { alert('Passwords do not match, please try again.'); redirect('../index.php'); }
	$conn = db_connect(); //connect to db

    $stmt = $conn->prepare("UPDATE `user` SET `password` = ? WHERE userID = ?");
    $stmt->bind_param('si', $token, $_SESSION['userID']);
    $stmt->execute();
    if($conn->error) die('Error: ' . $conn->error);
    $conn->close();
    destroy_session(); session_start();
    alert('Successfully updated password. Please log in again.');
    redirect('../index.php');
}

function destroy_session() {
    session_start();
    $_SESSION = array();
    session_destroy();
}

?>