<?php session_start(); ?>
<!doctype html>
<html>
  <?php include_once('config/db_functions.php'); ?>
  
  <!-- Include the html HEAD tag -->
  <?php include_once('includes/head.html'); ?>

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
      include_once('includes/updateAccount.html');
      include_once('includes/updatePassword.html');
    ?>

    <!-- Include global script links -->
    <?php include_once('includes/scripts.html'); ?>

    <!-- Page-specific javascript -->
    <script src="js/cart.js"></script>
    <?php 
      if(isset($_SESSION['alert'])) {
        $alert = $_SESSION['alert'];
        echo "<script>$.alert('$alert');</script>";
        unset($_SESSION['alert']);
      }
    ?>
  </body>
</html>