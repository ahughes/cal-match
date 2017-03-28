<?php session_start(); ?>
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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css/main.css">
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script>window.html5 || document.write('<script src="js/html5shiv.js"><\/script>')</script>
    <![endif]-->
  </head>
  <body>
    <!-- Include the navigation bar -->
    <?php include_once('includes/nav.html');?>
    
    <?php
      if(isset($_SESSION['cartID'])) { $cartID = $_SESSION['cartID']; } else { redirect('../config/create_cart.php'); }
      $query1 = "SELECT * FROM cart c INNER JOIN item i ON i.itemID = c.itemID INNER JOIN restaurant r ON r.restaurantID = i.restaurantID WHERE c.cartID = $cartID";
      $items = db_select($query1);
      $totalAmt = 0;
      $totalCal = 0;
      define("TAX", 0.0471);
    ?>

    <div class="container py-5">
      <table id="cart-table" class="table">
        <thead class="thead-default">
          <tr>
            <th>Restaurant</th>
            <th>Item&nbsp;(Calories)</th>
            <th>Price</th>
            <th class="text-center"><img src="img/remove.png" width="40px"></th>
          </tr>
        </thead>
        <tbody>
        <?php
          $_SESSION['itemsInCart'] = 0;
          foreach($items as $item){
            $totalAmt += $item['price'];
            $totalCal += $item['calories'];
            $_SESSION['itemsInCart'] += 1;
            echo '
            <tr class="lineitem">
              <td><strong>' . $item['restaurantName'] .'</strong></td>
              <td>' . $item['name'] .' (' . $item['calories'] . ')</td>
              <td>$&nbsp;' . $item['price'] .'</td>
              <td class="text-center">
                <a href="config/cart_functions.php?delItem=' . $item['itemID'] .'"><i class="remove-btn fa fa-minus-circle hidden"></i></a>
              </td>
            </tr>';
          }
        ?>
        
          <tr class="table-border-top">
            <th scope="row" colspan="2">Subtotal</th>
            <td colspan="2"><?php echo '$ ' . $totalAmt; ?></td>
          </tr>

          <tr>
            <th scope="row" colspan="2">Tax</th>
            <td colspan="2"><?php echo '$ ' . money_format('%i',$totalAmt * TAX); ?></td>
          </tr>

          <tr class="table-active table-border-top">
            <th scope="row" colspan="2">Total</th>
            <td colspan="2"><?php echo '$ ' . money_format('%i',($totalAmt * TAX)+$totalAmt); ?></td>
          </tr>

        </tbody>
      </table>

      <hr>
      
      <div class="text-center">
        <a href="current.php" class="mx-2 btn btn-outline-info">Add more items</a>
        <a href="editCart.php" class="mx-2 btn btn-outline-warning" disabled>Edit Cart</a>
        <a href="#" class="mx-2 btn btn-outline-success" data-toggle="modal" data-target="#checkout">Checkout</a>
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
    ?>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
    <script src="js/cart.js"></script>
  </body>
</html>