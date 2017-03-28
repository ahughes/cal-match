<!DOCTYPE HTML>

<HEAD>
<H2>Checkout</H2>  
</HEAD>
<BODY>

  <TABLE>

    <TR>
      <TD>
        <DIV>
          Total Amount
        </DIV>
      </TD>

      <TD>
        <DIV>
          <?php 
          if(isset($_GET['totalAmt'])) 
            {
              $totalAmt = $_GET['totalAmt']; 
              echo $totalAmt;
            } 
            ?>
        </DIV>
      </TD>
    </TR>

    <FORM>
      
    </FORM>

  </TABLE>





</BODY>


</HTML>