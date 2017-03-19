<!doctype html>
<html>
  <?php include_once('config/db_functions.php'); ?>
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
    <script>
      $("#nav-home").removeClass("active");
      $("#nav-about").addClass("active");
    </script>


  </body>
</html>