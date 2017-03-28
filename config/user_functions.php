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
		case delete:
			delete_user();
			break;
		case logout:
			destroy_session();
			break;
	}
}

function create_user() {
	$conn = db_connect(); //connect to db

	if($_REQUEST['password'] == $_REQUEST['confirm']) { $token = salted($_REQUEST['password']); }
    $stmt = $conn->prepare("INSERT INTO `user` (`userID`, `locationID`, `firstName`, `lastName`, `email`, `phone`, `password`) VALUES (NULL, ?, ?, ?, ?, ?, ?)");
    if($conn->error) die('Pre-execution error: ' . $conn->error);
    alert('Token: ' . $token);
    $stmt->bind_param('isssis', $_REQUEST['loc'], $_REQUEST['first'], $_REQUEST['last'], $_REQUEST['email'], $_REQUEST['phone'], $token);
    $stmt->execute();
    if($conn->error) die('Error: ' . $conn->error);
    $conn->close();
    redirect('../current.php');
}

function update_user() {
	//Update user logic here...
}

function delete_user() {
	//Delete user logic here...
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