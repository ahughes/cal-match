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


<TR>

  <TD>
    <DIV>
      First Name
    </DIV>
  </TD>

  <TD>
    <DIV>
      <?php 
      include_once('config/db_functions.php');
      $query = "SELECT * FROM user WHERE userID = 1";

      $rows = db_select($query);

      $totalAmt = 0;
      $totalCal = 0;

      foreach($rows as $row){ 
        echo'
        '.$row[firstName].'
    </DIV>
  </TD>

</TR>

<TR>

  <TD>
    <DIV>
      Last Name
    </DIV>
  </TD>

  <TD>
    <DIV>
      '.$row[lastName].'
    </DIV>
  </TD>

</TR>

<TR>

  <TD>
    <DIV>
      Phone Number
    </DIV>
  </TD>

  <TD>
    <DIV>
      '.$row[phone].'
    </DIV>
  </TD>

</TR>

<TR>

  <TD>
    <DIV>
      Email
    </DIV>
  </TD>

  <TD>
    <DIV>
      '.$row[email].'
    </DIV>
  </TD>

</TR>';
      
}
?>
</TABLE>

    <DIV>
      <FORM>
        <DIV>
          Select Credit Card Type
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
  <INPUT TYPE="BUTTON" VALUE="PURCHASE">




  </BODY>


</HTML>