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
    <style>body { padding-top: 2rem; }</style>
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
      <a class="navbar-brand" href="#">Calorie Match<small>Group 19</small></a>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Restaurants</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">McDonald's</a>
              <a class="dropdown-item" href="#">Wendy's</a>
              <a class="dropdown-item" href="#">Burger King</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Sign Up</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Sign In</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Sign Out</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Email">
          <input class="form-control mr-sm-2" type="password" placeholder="Password">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign In</button>
        </form>
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">Hello, world!</h1>
        <p>Welcome to Calorie Match! This is soon going to be an awesome web application to help track calorie consumption by matching "available calories" with menu items from various fast food restaurants.</p>
        <p>This project is being developed as part of a group project for IS 4460</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Sign Up &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
          <form class="form-inline" method="POST">
            <div class="form-group">
              <label class="sr-only" for="exampleInputAmount">Enter available calories:</label>
              <div class="input-group">
                <input name="cal_value" type="text" class="form-control" id="availableCals" placeholder="Example: 500" aria-describedby="Available Calories">
                <span class="input-group-addon" id="availableCals-addon">calories</span>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>

      <br><br>

      <div class="row">
        <?php
          if(isset($_POST['cal_value'])) {
            $cal_value = $_POST['cal_value'];
            include_once('config.php');
            $query1 = "SELECT * FROM `item` WHERE `calories` <= $cal_value";
            $rows = db_select($query1);
            echo '<div class="card-columns">'
            foreach($rows as $row) { echo '
              <div class="card text-center">
                <img class="card-img-top img-fluid" src="img/big-mac.png" alt="Item image">
                <div class="card-block">
                  <h4 class="card-title">' . $row['name'] . '</h4>
                  <p class="card-text">' . $row['calories'] . ' calories</p>
                  <p class="card-text">$' . $row['price'] . '.99  <a href="#" class="btn btn-primary" role="button">Order Now</a></p>
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
