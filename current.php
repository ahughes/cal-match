<?php
  session_start();
  // $_SESSION['loggedIn'] = true;
?>
<!doctype html>
<html>
  <?php require_once('config/db_functions.php'); if(!isset($_SESSION['cartID'])) {redirect('../config/create_cart.php');}?>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Calorie Match</title>
    <meta name="description" content="IS4460 Project by Group 19">
    <meta name="author" content="Ala Brown, Alexander Hughes, and David Houghton">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script>window.html5 || document.write('<script src="js/html5shiv.js"><\/script>')</script>
    <![endif]-->
  </head>
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

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
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

  </body>
</html>