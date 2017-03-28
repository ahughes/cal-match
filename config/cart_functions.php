<?php
session_start();

//Credentials for connection
require_once('../config/db_functions.php');

//CHECK FOR CART ID
if(!isset($_SESSION['cartID'])) { redirect('../config/create_cart.php'); }

//ADD ITEM
if(isset($_GET['addItem'])){
  $conn = db_connect();
  $stmt = $conn->prepare("INSERT INTO cart (cartID, itemID) VALUES(?,?)");
  $stmt->bind_param('ii', $_SESSION['cartID'], $_GET['addItem']);
  $stmt->execute();
  if($conn->error) {
      die('Unable to add item to cart. Error: ' . $conn->error);
  } else {
      alert('Successfully added item to cart.');
  }
  $conn->close();
  $_SESSION['itemsInCart'] += 1;
  change_remaining_calories('down',$_GET['addItem']);
  redirect('../current.php');
  exit;
}

//DELETE ITEM
if(isset($_GET['delItem'])){
  $conn = db_connect();
  $stmt = $conn->prepare("DELETE FROM `cart` WHERE `cartID` = ? AND `itemID` = ?");
  $stmt->bind_param('ii', $_SESSION['cartID'], $_GET['delItem']);
  $stmt->execute();
  if($conn->error) {
      die('Unable to remove item from cart. Error: ' . $conn->error);
  } else {
      alert('Successfully removed item from cart.');
  }
  $conn->close();
  $_SESSION['itemsInCart'] -= 1;
  change_remaining_calories('up',$_GET['addItem']);
  redirect('../editCart.php');
  exit;
}

function change_remaining_calories($dir,$itemID) {
  $query = "SELECT calories FROM item WHERE itemID = $itemID";
  $rows = db_select($query);
  foreach($rows as $row) {$lowerBy = $row['calories'];}
  if($dir = 'down') {
    $_SESSION['remaining'] -= $lowerBy;
  } else {
    $_SESSION['remaining'] += $lowerBy;
  }
  
}

?>