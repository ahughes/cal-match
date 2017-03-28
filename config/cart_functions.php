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
  redirect('../editCart.php');
  exit;
}

//COUNT ITEMS IN CART

?>