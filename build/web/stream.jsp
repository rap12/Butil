<%@page import="entities.Entry, dao.RowManager, java.util.ArrayList" contentType="text/html" pageEncoding="UTF-8"%>
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
              <li><a href="index.jsp">Manage Pots</a></li>
              <li class="active"><a href="stream.jsp">View Streaming</a></li>
              <li><a href="#">Settings</a></li>
            </ul>
            
          </div>
          <div class="col-lg-9">
            <div class="panel">
              <ul class="breadcrumb">
                <li class="active">Live Stream</li>
              </ul>
              <!--Plant Name and status-->
              <div class="row">
                <div class="col-lg-12">
                  <ul class="list-inline pull-left">           
  
                  
                  <!--li><span class='label label-success'>10 Plants</span> </li-->
                  <applet code="com.charliemouse.cambozola.Viewer" archive="dist/cambozola.jar" width="704" height="576">
                    <param name="url" value="http://192.168.2.102/video.cgi?username=team_ani_mo&password=qwerty&channel=0"/>                 
                </applet>

                </ul>
              
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




  </body>
</html>