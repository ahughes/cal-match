<?php
//Credentials for connection
require_once('../config/db_functions.php');

//CREATE CART
if(!isset($_SESSION['cartID'])) {
  $query = "SELECT * FROM cart ORDER BY cartID DESC LIMIT 1";
  $rows = db_select($query);
  foreach($rows as $row){ $newCartID = $row['cartID'] + 1; }
  $_SESSION['cartID'] = $newCartID;
}

//ADD ITEM
//if(isset($_GET['addItem']) && isset($_SESSION['cartID'])){
if(isset($_GET['addItem'])){ //testing only
  $conn = db_connect();
  $stmt = $conn->prepare("INSERT INTO cart (cartID, itemID) VALUES(?,?)");
  $cartID = 1;// $stmt->bind_param('ii', $_SESSION['cartID'], $_GET['addItem']);
  $stmt->bind_param('ii', $cartID, $_GET['addItem']);
  $stmt->execute();
  if($conn->error) {
      die('Unable to add item to cart. Error: ' . $conn->error);
  } else {
      alert('Successfully added item to cart.');
  }
  $conn->close();
  redirect('../current.php');
  exit;
}

//DELETE ITEM
// if(isset($_GET['delItem']) && isset($_SESSION['cartID'])){
if(isset($_GET['delItem'])){
  $conn = db_connect();
  $stmt = $conn->prepare("DELETE FROM `cart` WHERE `cartID` = ? AND `itemID` = ?");
  $cartID = 1; // $stmt->bind_param('ii', $_SESSION['cartID'], $_GET['delItem']);
  $stmt->bind_param('ii', $cartID, $_GET['delItem']);
  $stmt->execute();
  if($conn->error) {
      die('Unable to remove item from cart. Error: ' . $conn->error);
  } else {
      alert('Successfully removed item from cart.');
  }
  $conn->close();
  redirect('../editCart.php');
  exit;
}
?>