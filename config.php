<?php

function db_connect() {

    // Define connection as a static variable, to avoid connecting more than once 
    static $connection;

    // Connect to the database, if a connection has not been established yet
    if(!isset($connection)) {
        $conn = mysqli($dbhost,$dbuser,$dbpass,$dbname);
    }

    // If connection is unsuccessful, handle error here
    if($conn->connect_error) {
        // TO DO: Set up error handling here
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
}

function db_query($query) {
    // Connect to the database
    $conn = db_connect();

    // Query the database
    $result = $conn->query($query);

    return $result;
}

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
/*function db_error() {
    $connection = db_connect();
    return mysqli_error($connection);
}
*/
/*$rows = db_select("SELECT 'calories' FROM 'myitems' ORDER BY calories DESC"); //test query
if(!$rows) { $error = db_error(); echo "<h1>Error:</h1><p>$error</p>"; } //display any db errors
echo "<h1>Results:</h1>";
foreach($rows as $row) {
	echo "<p>$row</p>";
}*/
?>

