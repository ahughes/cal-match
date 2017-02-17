<?php

function db_connect() {
    $dbhost = 'localhost';
    $dbuser = 'Ala';
    $dbpass = 'AlBr4460!';
    $dbname = 'calories';
    $conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);

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

