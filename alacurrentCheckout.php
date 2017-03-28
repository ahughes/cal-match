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

  </TABLE>

  <DIV>
    <FORM>
      <DIV>
      <SELECT>
        <OPTION VALUE='1'>VISA</OPTION>
        <OPTION VALUE='2'>AMERICAN EXPRESS</OPTION>
        <OPTION VALUE='3'>MASTERCARD</OPTION>
      </SELECT>
    </DIV>
    <DIV>
      Credit Card Number <INPUT TYPE="TEXTBOX">
    </DIV>
      Expiration Date <INPUT TYPE="TEXTBOX">
    </DIV>
    <DIV>
      Security Code <INPUT TYPE="TEXTBOX">      
    </DIV>
    <DIV>
      Billing Zipcode <INPUT TYPE="TEXTBOX">  
    </DIV>  
    </FORM>
  </DIV>





</BODY>


</HTML>