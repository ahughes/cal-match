<!DOCTYPE HTML>

<HEADER><h2>Cart</h2></HEADER>
<HEAD>

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

include_once('config/db_functions.php');
            
$query1 = "select * from cart c
          inner join item i on i.itemID = c.itemID
          inner join restaurant r on r.restaurantID = i.restaurantID
          where c.cartID = 1";
$rows = db_select($query1);

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
      <INPUT TYPE="BUTTON" NAME=cartID'.$row['cartID'].' '.'itemID'.$row['itemID'].' VALUE="X">
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
        <?php 
        echo "$ ".$totalAmt; ?></LABEL>
    </TD>
    <TD style="border-top:1px solid black">
      <LABEL>
      </LABEL>
    </TD>
</TR>

<TR>
    <TD>
      <LABEL>UT STATE FOOD TAX RATE (4.71%)</LABEL>
    </TD>
    <TD>
      <LABEL></LABEL>
    </TD>
    <TD>
      <LABEL>
        <?php 
        $tax=0.0471; 
        $plusTax = money_format('%i',$totalAmt * $tax); 
        echo '$ '.$plusTax; ?></LABEL>
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
        echo "$ ".$grandtotal; ?></LABEL>
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
<INPUT TYPE="BUTTON" VALUE="ADD MORE ITEMS">
<INPUT TYPE="BUTTON" VALUE="CHECKOUT">

</BODY>


</HTML>
<style>
  
  div{
    /*display:inline-block;*/
  }
</style>