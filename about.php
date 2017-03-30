<?php session_start(); ?>
<!doctype html>
<html>
  <?php include_once('config/db_functions.php'); ?>
  
  <!-- Include the html HEAD tag -->
  <?php include_once('includes/head.html'); ?>
  
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
      include_once('includes/cartModal.php');
      include_once('includes/checkoutModal.html');
      include_once('includes/updateAccount.html');
      include_once('includes/updatePassword.html');
    ?>

    <!-- Include global script links -->
    <?php include_once('includes/scripts.html'); ?>

    <!-- Page-specifc javascript -->
    <script>$("#nav-about").addClass("active");</script>

  </body>
</html>