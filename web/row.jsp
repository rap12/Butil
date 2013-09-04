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
              <li class="active"><a href="index.jsp">Manage Pots</a></li>
              <li><a href="stream.jsp">View Streaming</a></li>
              <li><a href="#">Settings</a></li>
            </ul>
            
          </div>
          <div class="col-lg-9">
            <div class="panel">
              <ul class="breadcrumb">
                <li class="active"><a href="index.jsp">Manage Pots</a> > View Row Data</li>
              </ul>
              <!--Plant Name and status-->
              <div class="row">
                <div class="col-lg-12">
                  <ul class="list-inline pull-left">
                      
                      <% 
                      String id = request.getParameter("id"); 
                       int type = Integer.parseInt(request.getParameter("type"));                      
%>

    <% 
       RowManager rm = new RowManager();
       rm.CreateRowReportXLS(Integer.parseInt(id));
       ArrayList<Entry> e = rm.GetPlantRow(Integer.parseInt(id)); %>
                  <li><h3>Row Number <%= id%></h3></li>
                  <!--li><span class='label label-success'>10 Plants</span> </li-->
                  
                </ul>
                <ul class="list-inline pull-right">
                    <!-- Single button -->
                                 
                <li><div class="list-inline btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                      Action <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="row.jsp?id=<%= id%>&type=1">Line</a></li>
                      <li><a href="row.jsp?id=<%= id%>&type=2">Spline</a></li>
                      <li><a href="row.jsp?id=<%= id%>&type=3">Step Line</a></li>
                      <li class="divider"></li>
                      <li><a href="rowreport.xls">Download Excel Report</a></li>
                      <li><a href="#">Email Report</a></li>
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
                  <% if (e.size()<=0) {%>
                  No data available
                  <% } else {%>
                  <div id="greeness" style="max-width:100%;height: 300px;"></div>
                  <%}%>
                </div>
              </div>

              <!--Volume-->
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Volume</h3>
                </div>
                <div class="panel-body">
                  <% if (e.size()<=0) {%>
                  No data available
                  <% } else {%>
                  <div id="volume" style="max-width:100%;height: 300px;"></div>
                  <%}%>
                </div>
              </div>

              <!--Height-->
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h3 class="panel-title">Height</h3>
                </div>
                <div class="panel-body">
                  <% if (e.size()<=0) {%>
                  No data available
                  <% } else {%>
                  <div id="height" style="max-width:100%;height: 300px;"></div>
                  <%}%>
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
      var greeness = [
          
          <%
          
            for(int j=0; j <e.size(); j++){
                
            Entry data = e.get(j);
          %>
          {
              day: "<%= data.getDate()%>", a: <%= data.getD_greeness()%>
          },
          
          <% } %>
      ];
      
      var height = [
          
          <%
          
            for(int j=0; j <e.size(); j++){
                
            Entry data = e.get(j);
          %>
          {
              day: "<%= data.getDate()%>", a: <%= data.getD_height()%>
          },
          
          <% } %>
      ];
      
      var volume= [
          
          <%
          
            for(int j=0; j <e.size(); j++){
                
            Entry data = e.get(j);
          %>
          {
              day: "<%= data.getDate()%>", a: <%= data.getD_volume()%>
          },
          
          <% } %>
      ];
      
      $(function () {             
          $("#greeness").dxChart({
          dataSource: greeness,
          commonSeriesSettings: {
              argumentField: 'day'
              <% if (type==2) {%>
              ,
              type: 'spline'
              <% } else if(type==3) {%>
              ,
              type: 'stepline'
               <%} %>
          },
          series: [{
              name: '',
              valueField: 'a'
          }]
        });
      });

      $(function () {             
          $("#volume").dxChart({
          dataSource: volume,
          commonSeriesSettings: {
              argumentField: 'day'
              <% if (type==2) {%>
              ,
              type: 'spline'
              <% } else if(type==3) {%>
              ,
              type: 'stepline'
               <%} %>
          },
          series: [{
              name: '',
              valueField: 'a'
          }]
        });
      });

      $(function () {             
          $("#height").dxChart({
          dataSource: height,
          commonSeriesSettings: {
              argumentField: 'day'
              <% if (type==2) {%>
              ,
              type: 'spline'
              <% } else if(type==3) {%>
              ,
              type: 'stepline'
               <%} %>
          },
          series: [{
              name: '',
              valueField: 'a'
          }]
        });
      });


    </script>




  </body>
</html>