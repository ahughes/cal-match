<?php
session_start();

//Credentials for connection
require_once('../config/db_functions.php');

//CREATE CART
if(!isset($_SESSION['cartID'])) {
  $query = "SELECT MAX(cartID) AS lastCart FROM cart";

  $rows = db_select($query);
  foreach($rows as $row){ alert('MAX cart: ' . $row['lastCart']); $newCartID = $row['lastCart'] + 1; }
  $_SESSION['cartID'] = $newCartID;
  alert('Cart ID: ' . $_SESSION['cartID']);
}

if(isset($_REQUEST['r'])) {
	if($_REQUEST['r'] == 'editCart') redirect('../editCart.php');
	if($_REQUEST['r'] == 'home') redirect('../current.php');
} else {redirect('../current.php');}

?>
