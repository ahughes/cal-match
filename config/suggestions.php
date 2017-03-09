<?php
require_once('../config/db_functions.php'); //this contains all of our db connect info

// Create array with food items
$allitems = "SELECT `name` FROM `item`";
$rows = db_select($allitems);

// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all suggestions from array if $q is not empty
if ($q !== "") {
    $q = strtolower($q);
    $len=strlen($q);
    foreach($rows as $item) {
        if (stristr($q, substr($item['name'], 0, $len))) {
            if ($hint === "") {
                $hint = $item['name'];
            } else {
                $name = $item['name'];
                $hint .= ", $name";
            }
        }
    }
}

// Output "no suggestion" if no hint was found or output correct values 
echo $hint === "" ? "no suggestion" : $hint;

?>