<?php

function db_connect() {

    // Define connection as a static variable, to avoid connecting more than once 
    static $connection;

    // Connect to the database, if a connection has not been established yet
    if(!isset($connection)) {
        $config = parse_ini_file('../config.ini'); //parse config.ini containing credentials
        $connection = mysqli_connect($config['dbhost'],$config['dbuser'],$config['dbpass'],$config['dbname']);
    }

    // If connection is unsuccessful, handle error here
    if(!$connection) {
        // TO DO: Set up error handling here
        return mysqli_connect_error();
    }

    return $connection;
}

function db_query($query) {
    // Connect to the database
    $connection = db_connect();

    // Query the database
    $result = mysqli_query($connection,$query);

    return $result;
}

function db_select($query) {
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

function db_error() {
    $connection = db_connect();
    return mysqli_error($connection);
}

?>

