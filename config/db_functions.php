<?php

require_once('credentials.php'); //this contains all of our db connect info

function db_connect() {
    $conn = new mysqli(DBHOST,DBUSER,DBPASS,DBNAME);

    // If connection is unsuccessful, handle error here
    if($conn->connect_error) die("Connection failed: " . $conn->connect_error);

    return $conn;
}

function db_query($query) {
    // Connect to the database
    $conn = db_connect();

    // If connection is unsuccessful, handle error here
    if($conn->connect_error) die("Connection failed: " . $conn->connect_error);
    
    // Query the database
    $result = $conn->query($query);

    if(!$result) die($conn->error);
    $conn->close();
    return $result;
}

function db_select($query) {
    $rows = array();
    $result = db_query($query);

    // If query fails, return `false`
    if($result === false) {
        return false;
    }

    // If query is successful, stick all the rows in an array
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    $result->free();
    return $rows;
}

function items_under_cal_value($cals) {
    $conn = db_connect(); //connect to db

    $stmt = $conn->prepare("SELECT * FROM `item` WHERE `calories` <= ? ORDER BY RAND() LIMIT 20");
    $stmt->bind_param('i', $cals);
    $stmt->execute();
    $result = $stmt->get_result();

    if($result === false) { return false; } // If query fails, return `false`
    $rows = array(); //Create array to store results
    while ($row = mysqli_fetch_assoc($result)) { $rows[] = $row; } // If query is successful, stick all the rows in an array
    $result->free();
    $conn->close();
    return $rows;
}

function alert($msg) {
    echo "<script type='text/javascript'>alert('$msg');</script>";
}

function redirect($url) {
    if (!headers_sent())
    {    
        header('Location: '.$url);
        exit;
        }
    else
        {  
        echo '<script type="text/javascript">';
        echo 'window.location.href="'.$url.'";';
        echo '</script>';
        echo '<noscript>';
        echo '<meta http-equiv="refresh" content="0;url='.$url.'" />';
        echo '</noscript>'; exit;
    }
}

function salted($password) {
    $salt1 = SALT_1;
    $salt2 = SALT_2;
    $token = hash('ripemd128', "$salt1$password$salt2");
    return $token;
}

function sanitize($connection, $string) { return htmlentities(mysql_fix_string($connection, $string)); }
function mysql_fix_string($connection, $string) {
    if (get_magic_quotes_gpc()) $string = stripslashes($string);
    return $connection->real_escape_string($string);
}

?>