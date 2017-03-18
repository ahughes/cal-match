<?php
//Credentials for connection
include_once('config/db_functions.php');

//Declare variables to be used
$cartID   = "";
$itemID   = "";
$addItem  = "";
$message  = "";
$msg      = "";

//If a cart exists, keep the same cart
if(isset($_GET['cartID'])){
  $cartID = $_GET['cartID'];
}
else{
  $query4 = "SELECT * FROM cart ORDER BY cartID DESC LIMIT 1";
  $rows   = db_select($query4);
  foreach($rows as $row){
    $cartID = $row['cartID'] + 1;
  }
}

//If an itemID is passed in grab the value
if(isset(   $_GET['itemID'])){
  $itemID = $_GET['itemID'];
}

//If you are adding an item to a cart grab that value
if(isset(     $_GET['addItem'])){
  $addItem =  $_GET['addItem'];
}

//Checks to make sure all paramaters are in place for adding to a 
if(($cartID != "") && ($itemID != "") && ($addItem == "add")){
  $query5 = "INSERT INTO cart (cartID ,  itemID) 
                      VALUES('$cartID','$itemID')";
  $rows = db_query($query5);
  
  //Checks to make sure no errors occured while inserting data
  if($rows){
    $msg = "Item has been added to your cart";
    header("Location: alacurrent.php?cartID=".$cartID."&msg=".$msg);
  }
  else{
    $msg = "Failed to add item to cart"
    header("Location: alacurrent.php?cartID=".$cartID."&msg=".$msg);
  }
}

?>

<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Calorie Match</title>
    <meta name="description" content="IS4460 Project by Group 19">
    <meta name="author" content="Ala Brown, Alexander Hughes, and David Houghton">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <?php

      if(isset($_GET['msg'])){
          $message = $_GET['msg'];

          if($message != ""){
            echo'<SCRIPT>';
              echo'alert("'.$message.'")';
            echo'</SCRIPT>';
          }
      }

    ?>
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script>window.html5 || document.write('<script src="js/html5shiv.js"><\/script>')</script>
    <![endif]-->
  </head>
  <body>
    <!-- Include the navigation bar -->
    <?php include_once('includes/nav.html'); ?>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">Hello, world!</h1>
        <p>Welcome to Calorie Match! This is being developed as part of a group project for IS 4460. It's soon going to be an awesome web application to help track calorie consumption by matching "available calories" with menu items from fast food restaurants.</p>
        <p>Want to give it a shot? Simply enter an amount of calories in the box below, and you will be shown all the possible food items with less than or equal to the amount of calories provided.</p>
        <hr>
        <p>Have an awesome idea for our project? Found a bug? Want to give us a thumbs up? <a class="btn btn-primary btn-sm" href="#" role="button" data-toggle="modal" data-target="#contactUs">Contact us &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Search by item name -->
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto mb-3">Search available items:</div>
      </div>
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto">
          <form class="form-inline" method="POST">
            <!-- <div class="form-group"> -->
              <input type="text" onkeyup="suggest(this.value)">
            <!-- </div> -->
          </form>
        </div>
      </div>
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto mb-3"><p>Suggestions: <span id="search_suggestions"></span></p></div>
      </div>

      <!-- Search by number of calories -->
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto mb-3">Enter available calories:</div>
      </div>
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto">
          <form class="form-inline" method="POST">
            <div class="form-group">
              <input name="cal_value" type="text" class="form-control" placeholder="Example: 500" aria-describedby="Available Calories">
              <span class="input-group-addon">calories</span>
            </div>
            <button type="submit" class="btn btn-primary mx-3" id="cal_val_submit">Submit</button>
          </form>
        </div>
      </div>

      <br><br>

      <div class="row">
        <?php
          if(isset($_POST['cal_value'])) {
            $cal_value = $_POST['cal_value'];
            $remaining = $cal_value - 10;
            $items = items_under_cal_value($cal_value);
            echo '
              <div class="progress" style="width: 100vw;">
                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: ' . ($remaining/$cal_value)*100 . '%">' . $remaining .' calories remaining</div>
              </div><br><br>';
            echo '<div class="card-columns">';
            foreach($items as $item) { echo '
              <div class="card text-center">
                <img class="card-img-top mx-auto logo" style="max-width: 150px;" src="img/logo' . $item['restaurantID'] . '.png" alt="Item image">
                <div class="card-block">
                  <h4 class="card-title">' . $item['name'] . '</h4>
                  <p class="card-text">' . $item['calories'] . ' calories  |  $' . $item['price'] . '</p>
                  <p class="card-text"><a href="alacurrent.php?cartID='.$cartID.'&itemID='.$item['itemID'].'&addItem=add" class="btn btn-primary" role="button">ORDER NOW</a></p>

                </div>
              </div>';
            }
          }
        ?>
      </div>

      <hr>

      <footer>
        <p>&copy; 2017 | Group 19 | IS4460</p>
      </footer>
    </div> <!-- /container -->
    
    <!-- Include modals -->
    <?php
      include_once('includes/contactUsModal.html');
      include_once('includes/signUpModal.html');
    ?>

    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>


  </body>
</html>