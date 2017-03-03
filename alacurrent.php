<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Calorie Match</title>
    <meta name="description" content="IS4460 Project by Group 19">
    <meta name="author" content="Ala Brown, Alexander Hughes, and David Houghton">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script>window.html5 || document.write('<script src="js/html5shiv.js"><\/script>')</script>
    <![endif]-->
  </head>
  <body>
    <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand text-info" href="#">Calorie Match</a>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home&nbsp;<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Restaurants</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">McDonald's</a>
              <a class="dropdown-item" href="#">Wendy's</a>
              <a class="dropdown-item" href="#">Burger&nbsp;King</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Sign&nbsp;Up</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact&nbsp;Us</a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="#">Sign In</a>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link disabled" href="#">Sign Out</a>
          </li> -->
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <!-- <input class="form-control mr-sm-2" type="text" placeholder="Email"> -->
          <!-- <input class="form-control mr-sm-2" type="password" placeholder="Password"> -->
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign&nbsp;In</button>
        </form>
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">Hello, world!</h1>
        <p>Welcome to Calorie Match! This is being developed as part of a group project for IS 4460. It's soon going to be an awesome web application to help track calorie consumption by matching "available calories" with menu items from fast food restaurants.</p>
        <p>Want to give it a shot? Simply enter an amount of calories in the box below, and you will be shown all the possible food items with less than or equal to the amount of calories provided.</p>
        <hr>
        <p>Have an awesome idea for our project? Found a bug? Want to give us a thumbs up? <a class="btn btn-primary btn-sm" href="#" role="button">Contact us &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto mb-3">Enter available calories:</div>
      </div>
      <div class="row justify-content-sm-center">
        <div class="col-12 col-xs-auto">
          <form class="form-inline" method="POST">
            <div class="form-group">
              <input name="cal_value" type="text" class="form-control" placeholder="Example: 500" aria-describedby="Available Calories">
              <span class="input-group-addon">calories</span>
              <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
            </div>

            <button type="submit" class="btn btn-primary mx-3">Submit</button>
          </form>
        </div>
      </div>

      <br><br>

      <div class="row">
        <?php
          if(isset($_POST['cal_value'])) {
            $cal_value = $_POST['cal_value'];
            include_once('config/db_functions.php');
            $query1 = "SELECT * FROM `item` WHERE `calories` <= $cal_value";
            $rows = db_select($query1);
            echo '<div class="card-columns">';
            foreach($rows as $row) { echo '
              <div class="card text-center">
                <img class="card-img-top mx-auto" style="max-width: 150px;" src="img/big-mac.png" alt="Item image">
                <div class="card-block">
                  <h4 class="card-title">' . $row['name'] . '</h4>
                  <p class="card-text">' . $row['calories'] . ' calories  |  $' . $row['price'] . '</p>
                  <p class="card-text"><a href="#" class="btn btn-primary" role="button">Order Now</a></p>
                </div>
              </div>';
            }
          }
        ?>
      </div>

      <hr>

      <footer>
        <p>&copy; 2017 | Group 19 | IS4460</p>
      </footer>
    </div> <!-- /container -->        
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
  </body>
</html>