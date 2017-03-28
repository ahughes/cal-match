<?php
    require_once('db_functions.php');
    
    $conn = db_connect();
    $stmt = $conn->prepare("SELECT * FROM `item`");
    // $stmt->bind_param('s', $searchTerm);
    $stmt->execute();
    $result = $stmt->get_result();

    $results = array(); //Create array to store results
    while ($each = mysqli_fetch_assoc($result)) {
        $results[] = array(label => $each['name'], value => $each['itemID']);
    }
    $result->free();
    $conn->close();
    
    echo json_encode($results);
?>