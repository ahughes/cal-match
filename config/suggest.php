<?php
    require_once('db_functions.php');
    
    //get search term from URL
    if(isset($_GET['s'])) { 
        $searchTerm = '%'.$_GET['s'].'%';
    }
    
    $conn = db_connect();
    $stmt = $conn->prepare("SELECT * FROM `item`");
    // $stmt->bind_param('s', $searchTerm);
    $stmt->execute();
    $result = $stmt->get_result();

    $results = array(); //Create array to store results
    while ($each = mysqli_fetch_assoc($result)) {$results[] = $each['name'];}
    $result->free();
    $conn->close();

    $suggestions = array();
    $suggestions[] = $results;
    echo json_encode($results);
?>