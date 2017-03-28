<?php 
  $cartID = $_SESSION['cartID'];
  $query1 = "SELECT * FROM cart c 
            INNER JOIN item i ON i.itemID = c.itemID 
            INNER JOIN restaurant r ON r.restaurantID = i.restaurantID 
            WHERE c.cartID = $cartID";
  $rows = db_select($query1);
  $totalAmt = 0;
  $totalCal = 0;
  define("TAX", 0.0471);
?>

<div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="cartModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container">
          <table id="cart-table" class="table">
            <thead class="thead-default">
              <tr>
                <th>Item&nbsp;(Calories)</th>
                <th>Price</th>
                <!-- th class="text-center"><img src="img/remove.png" width="40px"></th -->
              </tr>
            </thead>
            <tbody>
            <?php foreach($rows as $row){ $totalAmt += $row['price']; $totalCal += $row['calories']; echo '
              <tr class="lineitem">
                <td><strong>' . $row['restaurantName'] . '</strong> ' . $row['name'] .' (' . $row['calories'] . ')</td>
                <td class="text-right">$&nbsp;' . $row['price'] .'</td>
                <!-- td class="text-center"><i class="remove-btn fa fa-minus-circle hidden"></i></td -->
              </tr>';
            }?>
            
              <tr class="table-border-top">
                <th scope="row">Subtotal</th>
                <td><?php echo '$&nbsp;' . $totalAmt; ?></td>
              </tr>

              <tr>
                <th scope="row">Tax</th>
                <td><?php echo '$&nbsp;' . money_format('%i',$totalAmt * TAX); ?></td>
              </tr>

              <tr class="table-active table-border-top">
                <th scope="row">Total</th>
                <td><?php echo '$&nbsp;' . money_format('%i',($totalAmt * TAX)+$totalAmt); ?></td>
              </tr>

            </tbody>
          </table>
          <div class="text-center">
            <button type="button" class="mx-2 btn btn-outline-info" data-dismiss="modal" aria-label="Close">Add more items</button>
            <a href="editCart.php" class="mx-2 btn btn-outline-warning">Edit Cart</a>
            <button class="mx-2 btn btn-outline-success">Checkout</button>
          </div>
  
          <script>
            $(".remove-btn").hide();
            $(".lineitem").hover(function() {
              $(".remove-btn").hide();
              $("#cart-table").toggleClass("table-hover");
              $(this).find(".remove-btn").show();
            });
            $(".remove-btn").hover(function() {
              $(this).parents("tr").toggleClass("table-danger");
            });
          </script>
        </div>
      </div>
    </div>
  </div>
</div>



