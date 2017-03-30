<?php
session_start();

//Credentials for connection
require_once('../config/db_functions.php');

if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'create') { create_cart(); }
if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'deleteCart') { delete_cart($_SESSION['cartID']); }

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
  if(isset($_SESSION['remaining'])) change_remaining_calories('down',$_GET['addItem']);
  redirect('../index.php#afterJumbo');
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
  if(isset($_SESSION['remaining'])) change_remaining_calories('up',$_GET['delItem']);
  redirect('../editCart.php');
  exit;
}

function change_remaining_calories($dir,$itemID) {
  $query = "SELECT calories FROM item WHERE itemID = $itemID";
  $rows = db_select($query);
  foreach($rows as $row) {$calories = $row['calories'];}
  if($dir == 'down') {
    $_SESSION['remaining'] -= $calories;
  }
  if($dir == 'up') {
    $_SESSION['remaining'] += $calories;
  }
}

function create_cart() {
  if(!isset($_SESSION['cartID'])) {
    $query = "SELECT MAX(cartID) AS lastCart FROM cart";

    $rows = db_select($query);
    foreach($rows as $row){ $newCartID = $row['lastCart'] + 1; }
    $_SESSION['cartID'] = $newCartID;
  }

  if(isset($_REQUEST['r'])) {
    if($_REQUEST['r'] == 'editCart') redirect('../editCart.php');
    if($_REQUEST['r'] == 'home') redirect('../index.php');
  } else {redirect('../index.php');}
}

function delete_cart($cart) {
  $query = "DELETE FROM cart WHERE cartID = $cart";
  db_query($query);
  alert('Order successfully submitted');
  $_SESSION['itemsInCart'] = 0;
  redirect('../index.php');
}

?>