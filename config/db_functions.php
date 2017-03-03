<?php

require_once('config/credentials.php'); //this contains all of our db connect info

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

?>

