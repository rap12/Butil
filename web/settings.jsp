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
    <link href="css/bootstrap-timepicker.css" rel="stylesheet">

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
              <li class="active"><a href="#">Manage Pots</a></li>
              <li><a href="#">View Streaming</a></li>
              <li><a href="#">Settings</a></li>
            </ul>
            
          </div>
          <div class="col-lg-9">
            <div class="panel">
              <ul class="breadcrumb">
                <li class="active">Settings</li>
              </ul>


              <div class="well">
                <div class="input-append bootstrap-timepicker-component">
                    <input class="timepicker-1 input-small" type="text" /><span class="add-on"><i class="icon-time"></i></span>
                </div>
              </div>

              <div class="input-append bootstrap-timepicker-component">
    <input type="text" class="timepicker-default input-small">
    <span class="add-on">
        <i class="icon-time"></i>
    </span>
</div>

            </div>
          </div>
           
        </div>
        


          <!-- Modal -->
        <div class="modal fade" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Modal title</h4>
              </div>
              <div class="modal-body">
                ...
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
      </div>
    





    </div>

    <div id="footer">
      <div class="container">
        <p class="text-muted credit">Example courtesy <a href="http://martinbean.co.uk">Martin Bean</a> and <a href="http://ryanfait.com/sticky-footer/">Ryan Fait</a>.</p>
      </div>
    </div>
	
	 <!-- JavaScript plugins (requires jQuery) -->
    <script src="js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-timpicker.js"></script>


    <script>
      $(function(){
        $("#pot").popover();

        $("#tip").tooltip();


      });

      $('.timepicker-default').timepicker();

    </script>




  </body>
</html>