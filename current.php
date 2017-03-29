<?php
  session_start();
?>
<!doctype html>
<html>
  <?php require_once('config/db_functions.php'); if(!isset($_SESSION['cartID'])) {redirect('../config/create_cart.php');}?>
  
  <!-- Include the html HEAD tag -->
  <?php include_once('includes/head.html'); ?>
  
  <body>
    <!-- Include the navigation bar -->
    <?php include_once('includes/nav.html'); ?>
    
    <div class="jumbotron jumbotron-fluid" id="hero-container">
      <div class="jumbotron" id="hero">
        <div class="container text-center">
          <div class="btn-lg"><img src="../img/fast-food-info.svg" id="icon" alt="Fast Food Icon"></div>
          <!-- Icons made by Freepik from flaticon.com CC 3.0 license -->
          <span class="lead" style="font-family: cursive;">Welcome to</span>
          <h1 class="display-3 text-center font-weight-bold pb-5 mb-5">Calorie Match</h1>
          <hr class="m-y-md mt-5">
          <p>This was created as part of a group project for IS 4460.</p>
          <p class="lead">
            <a class="btn btn-info btn-lg mx-2" href="#" role="button">Get Started</a>
            <a class="btn btn-warning btn-lg mx-2" href="about.php">Learn More</a>
          </p>
        </div>
      </div>
    </div>

    <div id="afterJumbo" class="container"> 
      <div class="row">
        <!-- Search by item name -->
        <div class="col-md-6">
          <div class="col-12 text-center mb-1">Search all items:</div>
          <form class="col-12 justify-content-center">
            <div class="form-group col-8 mx-auto justify-content-center">
              <input id="search-box" type="text" class="form-control col-12 ui-autocomplete-input" autocomplete="off">
            </div>
            <div class="justify-content-center text-center">
              <a class="btn btn-outline-success text-center" id="addButton">Add to cart</a>
            </div>
          </form>
        </div>
        <!-- Search by total remaining calories -->
        <div class="col-md-6">
          <div class="col-12 text-center mb-1">Enter available calories:</div>
          <form class="col-12 justify-content-center" method="POST">
            <div class="col-10 form-group form-inline mx-auto">
              <input name="cal_value" type="text" class="form-control" placeholder="Example: 500" aria-describedby="Available Calories" <?php if(isset($_SESSION['totalCals'])) { echo "value=" . $_SESSION['totalCals']; } ?>>
              <span class="input-group-addon">calories</span>
              <button type="submit" class="btn btn-primary mx-3" id="cal_val_submit">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="container">

      <br><br>

      <div class="row">
        <?php
          if(!isset($_SESSION['totalCals'])) {
            if(isset($_POST['cal_value'])) {
              $_SESSION['totalCals'] = $_POST['cal_value'];
            }
          }
            
          if(!isset($_SESSION['remaining'])) {
            if(isset($_SESSION['totalCals'])) {
              $_SESSION['remaining'] = $_SESSION['totalCals'];
            }
          }
          
          if(isset($_SESSION['remaining'])) {
            $cal_value = $_SESSION['remaining'];
            $items = items_under_cal_value($cal_value);
            echo '
              <div class="progress" style="width: 100vw;">
                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: ' . ($_SESSION['remaining']/$_SESSION['totalCals'])*100 . '%">' . $_SESSION['remaining'] .' calories remaining</div>
              </div><br><br>';
            echo '<div class="card-columns">';
            foreach($items as $item) { echo '
              <div class="card text-center">
                <img class="card-img-top mx-auto logo" style="max-width: 150px;" src="img/logo' . $item['restaurantID'] . '.png" alt="Item image">
                <div class="card-block">
                  <h4 class="card-title">' . $item['name'] . '</h4>
                  <p class="card-text">' . $item['calories'] . ' calories  |  $' . $item['price'] . '</p>
                  <p class="card-text">
                    <a href="config/cart_functions.php?addItem=' . $item['itemID'] . '" class="btn btn-primary" role="button">Order Now</a>
                  </p>
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
      include_once('includes/cartModal.php');
      include_once('includes/checkoutModal.html');
      include_once('includes/updateAccount.html');
      include_once('includes/updatePassword.html');
    ?>

    <!-- Include global script links -->
    <?php include_once('includes/scripts.html'); ?>

    <!-- Page specific javascript -->
    <script>$("#nav-home").addClass("active");</script>
    <script>
      $("#addButton").hide();
      var jSuggestions = <?php include_once('config/suggest.php'); ?>;
      $('#search-box').autocomplete({
        maxResults: 5,
        source: function(request, response) {
        var results = $.ui.autocomplete.filter(jSuggestions, request.term);
        response(results.slice(0, this.options.maxResults)); },
        select: function(event, ui) {
          // prevent autocomplete from updating the textbox
          event.preventDefault();
          // manually update the textbox and hidden field
          $(this).val(ui.item.label);
          $("#addButton").show();
          var link = "../config/cart_functions.php?addItem=" + ui.item.value;
          $("#addButton").attr("href", link);
        },
        minLength: 2
      });
    </script>
    <?php 
      if(isset($_SESSION['alert'])) {
        $alert = $_SESSION['alert'];
        echo "<script>$.alert('$alert');</script>";
        unset($_SESSION['alert']);
      }
    ?>
  </body>
</html>