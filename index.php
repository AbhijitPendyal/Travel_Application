<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Simple Flights App</title>
    <meta name="description" content="Sauce Labs demo app">
    <meta name="sage" content="flights app">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="assets/bootstrap.min.js"></script>
    <script src="assets/bootstrap-table.js"></script>
    <link href="assets/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="assets/jumbotron.css" rel="stylesheet" media="screen">
    <link href="assets/bootstrap-table.css" rel="stylesheet" media="screen">
    <style type="text/css">
        body { background: #f5f5f5); }
        .hero-unit { background-color: #fff; }
        .center { display: block; margin: 0 auto; }
    </style>
</head>

<body>
<?php include 'gtm_inc.php'; ?>
<div class="navbar navbar-fixed-top navbar-inverse">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="index.php">Travel The World</a>

        </div>
    </div>
</div>
<div class="jumbotron">
    <div class="container">
        <h1>Welcome to the Simple Travel Agency!</h1>
        <p>The is a sample site you can test with BlazMeter! </p>
        <p>Check out our <a href="vacation.html">destination of the week! The Beach!</a></p>
    </div>
</div>

<div class="container">

    <h2>Choose your departure city:</h2>
    <form action="reserve.php" method="post">
        <select name="fromPort" class="form-inline">
            <option value="Paris">Paris</option>
            <option value="Philadelphia">Philadelphia</option>
            <option value="Boston">Boston</option>
            <option value="Portland">Portland</option>
            <option value="San Diego">San Diego</option>
            <option value="Mexico City">Mexico City</option>
            <option value="São Paolo">São Paolo</option>
        </select>
        <p>
        <h2>Choose your destination city:</h2>
        <select name="toPort" class="form-inline">
            <option value="Buenos Aires">Buenos Aires</option>
            <option value="Rome">Rome</option>
            <option value="London">London</option>
            <option value="Berlin">Berlin</option>
            <option value="New York">New York</option>
            <option value="Dublin">Dublin</option>
            <option value="Cairo">Cairo</option>
        </select><p></p>
      <div class="container">
        <input type="submit" class="btn btn-primary" value="Find Flights"></>
        </div>
    </form>
</div>

</body>
</html>

