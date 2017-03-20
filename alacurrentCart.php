<?php

include_once('config/db_functions.php');

$cartID  = "";
$itemID  = "";
$delItem = "";

if(isset($_GET['cartID'])){
  $cartID = $_GET['cartID'];
}

if(isset($_GET['itemID'])){
  $itemID = $_GET['itemID'];
}

if(isset($_GET['cartItemID'])){
  $cartItemID = $_GET['cartItemID'];
}

if(isset($_GET['delItem'])){
  $delItem = $_GET['delItem'];
  if(($cartItemID != "") && ($delItem == "delete")){
    $query = "DELETE FROM cart
              WHERE cartItemID =".$cartItemID;

    $rows = db_query($query);
    if($rows){
      if($cartID == ""){
        $msg = "Cart is empty, add items to cart";
        header("Location: alacurrent.php?cartID=".$cartID."&msg=".$msg);
      }
      else{
      $msg = "Item removed from Cart successfully";
      header("Location: alacurrentCart.php?cartID=".$cartID."&msg=".$msg);
      }
    }
    else
      $msg = "Could not remove item from Cart";
      header("Location: alacurrentCart.php?cartID=".$cartID."&msg=".$msg);
  }
}

?>

<!DOCTYPE HTML>
<HEADER><h2>Cart</h2></HEADER>
<HEAD>

<?php

$message = "";

if(isset($_GET['msg'])){
  $message = $_GET['msg'];

  if($message != ""){
    echo'<SCRIPT>';
      echo'alert("'.$message.'")';
    echo'</SCRIPT>';
  }
}

?>

</HEAD>
<BODY>
  <DIV>
<TABLE width="60%" style="border: 1px solid black">
    <TR>
    <TD style="border-bottom:1px solid black" width="65%">
      <LABEL>Item</LABEL>
    </TD>
    <TD style="border-bottom:1px solid black" width="15%">
      <LABEL>Restaurant</LABEL>
    </TD>
    <TD style="border-bottom:1px solid black" width="10%">
      <LABEL>Price</LABEL>
    </TD>
    <TD style="border-bottom:1px solid black" width="10%">
      <LABEL>Calories</LABEL>
    </TD>
    <TD width="10%">
      <IMG SRC="img/remove.png" width="40px">
    </TD>

  </TR>

<?php
         
$query = "SELECT * FROM cart c 
          INNER JOIN item i ON i.itemID = c.itemID 
          INNER JOIN restaurant r ON r.restaurantID = i.restaurantID 
          WHERE c.cartID = ".$cartID."
          ORDER BY c.cartItemID ASC";

$rows = db_select($query);

$totalAmt = 0;
$totalCal = 0;

foreach($rows as $row){

$total = $row['price'];
$totalAmt += $total;

$cal = $row['calories'];
$totalCal += $cal;

echo'
  <TR>
    <TD>
      <LABEL>'.$row['name'].'</LABEL>
    </TD>
    <TD>
      <LABEL>'.$row['restaurantName'].'</LABEL>
    </TD>
    <TD>
      <LABEL>$ '.$row['price'].'</LABEL>
    </TD>
    <TD>
      <LABEL>'.$row['calories'].'</LABEL>
    </TD>
    <TD style="text-align:center">
      <A HREF="alacurrentCart.php?cartItemID='.$row['cartItemID'].'&cartID='.$row['cartID'].'&delItem=delete"><INPUT TYPE="BUTTON" VALUE="X"></A>
    </TD>
  </TR>
';
}

?>

<TR>
    <TD style="border-top:1px solid black">
      <LABEL>SUBTOTAL</LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL></LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL>
        <?php echo "$ ".$totalAmt; ?>
      </LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL>
      </LABEL>
    </TD>
</TR>

<TR>
    <TD>
      <LABEL>UT FOOD TAX RATE (4.71%)</LABEL>
    </TD>
    <TD>
      <LABEL></LABEL>
    </TD>
    <TD>
      <LABEL>
        <?php 
        $tax=0.0471; 
        $plusTax = money_format('%i',$totalAmt * $tax); 
        echo '$ '.$plusTax; ?>
      </LABEL>
    </TD>
    <TD>
    </TD>
</TR>

<TR>
    <TD style="border-top:1px solid black">
      <LABEL>TOTAL</LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL></LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL>
        <?php 
        $grandtotal = ($totalAmt * $tax)+$totalAmt;
        $grandtotal = money_format('%i',$grandtotal);
        echo "$ ".$grandtotal; 
        ?>
      </LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL>
        <?php
        echo $totalCal;
        ?>
      </LABEL>
    </TD>
</TR>


</TABLE>
<BR/>
<?php
echo'<A HREF="alacurrent.php?cartID='.$cartID.'"><INPUT TYPE="BUTTON" VALUE="ADD MORE ITEMS"></A>';
?>
<INPUT TYPE="BUTTON" VALUE="CHECKOUT">
</BODY>
</HTML>