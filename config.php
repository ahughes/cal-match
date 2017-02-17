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

//This will eventually be a db_select function to DRY up our code
/*function db_select($query) {
    $rows = array();
    $result = db_query($query);

    // If query failed, return `false`
    if($result === false) {
        return false;
    }

    // If query was successful, retrieve all the rows into an array
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
*/
?>

