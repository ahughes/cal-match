<?php session_start(); ?>
<!doctype html>
<html>

  <!-- Include the html HEAD tag -->
  <?php include_once('includes/head.html'); ?>

  <body>
    <!-- Include the navigation bar -->
    <?php include_once('../includes/nav.html'); ?>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">Burger King</h1>
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

    <!-- Page-specific javascript -->

  </body>
</html>