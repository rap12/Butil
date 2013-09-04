<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Butil</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/my.css" rel="stylesheet">
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">
  </head>

  <body>

    <!-- Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <div class="navbar navbar-fixed-top">
        <div class="container">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="img/logo_small.png"/></a>
          <div class="nav-collapse collapse">
            <ul class="nav navbar-nav pull-right">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>

      <!-- Begin page content -->
      <div class="container">

        
        <div class="row spacer">
          <div class="col-lg-3">
           
            <ul class="nav nav-pills nav-stacked">
              <li class="active"><a href="index.jsp.html">Manage Pots</a></li>
              <li><a href="#">View Streaming</a></li>
              <li><a href="#">Settings</a></li>
            </ul>
            
          </div>
          <div class="col-lg-9">
            <div class="panel">
              <ul class="breadcrumb">
                <li class="active"><a href="index.jsp.html">Manage Pots</a> > View Plant Data</li>
              </ul>
              <!--Plant Name and status-->
              <div class="row">
                <div class="col-lg-12">
                  <ul class="list-inline pull-left">
                  <li><h3>Plant A</h3></li>
                  <li><span class='label label-success'>4-5 Leaf Stage</span> </li>
                  <li><span class='label label-danger'>Needs Attention</span></li>
                  
                </ul>
                <ul class="list-inline pull-right">
                    <!-- Single button -->
                                 
                <li><div class="list-inline btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                      Action <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">Spline</a></li>
                      <li><a href="#">Step Line</a></li>
                    </ul>
                  </div></li>
                </ul>
                </div>


              </div>
              

              <!--PGreeness-->
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Greeness</h3>
                </div>
                <div class="panel-body">
                  <div id="greeness" style="max-width:100%;height: 300px;"></div>
                </div>
              </div>

              <!--Volume-->
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Volume</h3>
                </div>
                <div class="panel-body">
                  <div id="volume" style="max-width:100%;height: 300px;"></div>
                </div>
              </div>

              <!--Height-->
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Height</h3>
                </div>
                <div class="panel-body">
                  <div id="height" style="max-width:100%;height: 300px;"></div>
                </div>
              </div>
            </div>
          </div>
           
        </div>
        

        
      </div>
    





    </div>

    <div id="footer">
      <div class="container">
        <p class="text-muted credit">Example courtesy <a href="http://martinbean.co.uk">Martin Bean</a> and <a href="http://ryanfait.com/sticky-footer/">Ryan Fait</a>.</p>
      </div>
    </div>
	
	 <!-- JavaScript plugins (requires jQuery) -->
    <script src="js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="js/knockout-2.2.1.js"></script>
        <script type="text/javascript" src="js/globalize.min.js"></script>
        <script type="text/javascript" src="js/dx.chartjs.js"></script>
    <script src="js/bootstrap.js"></script>

    <script>
      var chartDataSource = [
          {
              day: 1, Africa: 227
          },
          {
              day: 2, Africa: 285
          },
          {
              day: 3, Africa: 365
          },
          {
              day: 4, Africa: 478
          },
          {
              day: 5, Africa: 500
          },
          {
              day: 6, Africa: 810
          },
          {
              day: 7, Africa: 300
          }
      ];
      $(function () {             
          $("#greeness").dxChart({
          dataSource: chartDataSource,
          commonSeriesSettings: {
              argumentField: 'day',
              type: 'spline'
          },
          series: [ {
              name: 'Plant Name',
              valueField: 'Africa'
          }]
        });
      });

      $(function () {             
          $("#volume").dxChart({
          dataSource: chartDataSource,
          commonSeriesSettings: {
              argumentField: 'day'
          },
          series: [ {
              name: 'Plant Name',
              valueField: 'Africa'
          }]
        });
      });

      $(function () {             
          $("#height").dxChart({
          dataSource: chartDataSource,
          commonSeriesSettings: {
              argumentField: 'day',
              type: 'stepline'
          },
          series: [ {
              name: 'Plant Name',
              valueField: 'Africa'
          }]
        });
      });


    </script>




  </body>
</html>