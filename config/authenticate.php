<?php // authenticate.php
  require_once('../config/db_functions.php');

  if(isset($_REQUEST['email']) && isset($_REQUEST['password'])) {
    $conn = db_connect();
    $email = sanitize($conn, $_REQUEST['email']);
    $token = salted(sanitize($conn, $_REQUEST['password']));
  } else { $conn->close(); redirect('../current.php'); exit; }
  
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
      $_SESSION['userID'] = $user['userID'];
      $_SESSION['loggedIn'] = true;
      alert('Welcome, ' . $_SESSION['firstName'] . ', you have successfully logged in.');
    } else {
      alert('Incorrect email address or password. Please try again.');
    }
  }
  redirect('../current.php');

?>
