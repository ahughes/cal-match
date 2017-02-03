<!DOCTYPE html>
<html>
  <head>
    <?php include_once 'variables.php' ?>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Group 19">

    <title><?php echo $app_title ?></title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/soon.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

  </head>
  <!-- START BODY -->
  <body class="nomobile">

    <!-- START HEADER -->
    <section id="header">
        <div class="container">
          <header>
              <!-- HEADLINE -->
              <h1 class="animated.GoIn"><b><?php echo $app_title ?></b> is coming soon...</h1>
          </header>
          <!-- START TIMER -->
          <div id="timer" class="animated.FadeIn">
              <p id="message"></p>
              <div id="days" class="timer_box"></div>
              <div id="hours" class="timer_box"></div>
              <div id="minutes" class="timer_box"></div>
              <div id="seconds" class="timer_box"></div>
          </div>
          <!-- END TIMER -->
          <!-- <div class="col-lg-4 col-lg-offset-4 mt centered">
          	<h4>LET ME KNOW WHEN YOU LAUNCH</h4>
			      <form class="form-inline" role="form">
			        <div class="form-group">
			          <label class="sr-only" for="exampleInputEmail2">Email address</label>
			          <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
			        </div>
			        <button type="submit" class="btn btn-info">Submit</button>
		        </form>            
          </div> -->
        </div>
        <!-- LAYER OVER THE BACKGROUND TO MAKE THE WHITE TEXT READABLE -->
        <div id="layer"></div>
        <!-- END LAYER -->
    </section>
    <!-- END HEADER -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- <script   src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="   crossorigin="anonymous"></script> -->
	  <script type="text/javascript" src="js/vendor/modernizr.custom.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-backstretch/2.0.4/jquery.backstretch.min.js"></script>
    <script src="js/soon.js"></script>
  </body>
  <!-- END BODY -->
</html>