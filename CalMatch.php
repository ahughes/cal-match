<!DOCTYPE html>
<html>
<body>

<form action="#" method="POST">
    <input name="cal_value" type="text" placeholder="100" />
    <input type="submit" value="Submit" />
</form>

<?php
echo "<br/>";
$cal_value = $_POST['cal_value'];



echo "<table style='border: solid 1px black;'>";
echo "<tr><th>Name</th><th>Restaurant</th><th>Type</th><th>Calories</th></tr>";

class TableRows extends RecursiveIteratorIterator { 
     function __construct($it) { 
         parent::__construct($it, self::LEAVES_ONLY); 
     }

     function current() {
         return "<td style='width: 150px; border: 1px solid black;'>" . parent::current(). "</td>";
     }

     function beginChildren() { 
         echo "<tr>"; 
     } 

     function endChildren() { 
         echo "</tr>" . "\n";
     } 
} 

$config = parse_ini_file('../config.ini'); //parse config.ini containing credentials
$servername = $config['dbhost']
$username = $config['dbuser']
$password = $config['dbpass']
$dbname = $config['dbname']

try {
     $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     if(!string.empty($cal_value))
     {
        $stmt = $conn->prepare("SELECT name, type, restaurant, calories FROM myItems WHERE $holdvalue >= calories ORDER BY calories DESC"); 
        $stmt->execute();
     }
     else
     {
        $stmt = $conn->prepare("SELECT name, restaurant, type, calories FROM myItems WHERE $cal_value >= calories ORDER BY calories DESC"); 
        $stmt->execute();
     }

     // set the resulting array to associative
     $result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 

     foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
         echo $v;
     }
}
catch(PDOException $e) {
     echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";

?>  

</body>
</html>