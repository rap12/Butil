<%@page import="entities.Plant, dao.PlantManager, java.util.ArrayList" contentType="text/html" pageEncoding="UTF-8"%>
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
              <li class="active"><a href="#">Manage Pots</a></li>
              <li><a href="stream.jsp">View Streaming</a></li>
              <li><a href="#">Settings</a></li>
            </ul>
            
          </div>
          <div class="col-lg-9">
            <div class="panel">
              <ul class="breadcrumb">
                <li class="active">Manage Pots</li>
              </ul>
              <table class="table">  
                <thead>  
                  <tr>  
                    <th>Row</th>  
                    <th>Pots</th>  
                  </tr>  
                </thead>  
                <tbody>  
                  <%
                  PlantManager pm = new PlantManager();
                  
                  for (int i= 1; i<7; i++){
                     ArrayList<Plant> plants = pm.GetPlantsBasedOnROw(i);
                 %>
                  <tr>  
                    <td class="col-lg-2">
                      <%= i%><br><br><br>
                      <a class='btn btn-default btn-xs' href='row.jsp?id=<%= i%>&type=1' style='width:100%;'>View Row Data</a>
                      <a class='btn btn-default btn-xs' href='#' style='width:100%;'>Delete Row</a>
                    </td>  
                    <td>
                      <div class="btn-group">
                      <% 
                         String let = "a";
                         for (int j= 1; j<11; j++){ 
                          

                                if(pm.CheckPlantPosition(let, plants)){ 
                                 
                                   int stage= pm.GetPlantStage(let, plants);
              %>
                                <a data-toggle="modal" class="btn btn-xlg btn-success"  data-placement="left" id="row<%= i%><%= let%>" data-toggle="popover" data-html="true" title=<% if(stage==1) {%>"<span class='label label-success'>4-5 Leaf Stage</span>"<%} else if (stage==2){%>"<span class='label label-success'>Mid-Tillering</span>"<%} else{%>"<span class='label label-success'>Booting</span>"<%}%> data-content="<a class='btn btn-default' href='pot.jsp?row=row<%= i%><%= let%>' style='width:100%;'>View Pot</a><a data-toggle='modal'  class='btn btn-default' href='#myModal' style='width:100%;'>Edit Pot</a><a data-toggle='modal'  class='btn btn-default' href='#deleteModal' style='width:100%;'>Delete Pot</a>"><%= let%></a>
                                      
                                <% }else{ %>
                                   <a data-toggle="modal" class="addplant btn btn-xlg btn-default"  data-placement="left" id="row<%= i%><%= let%>" data-toggle="popover" data-html="true" title="<span class='label label-default'>Empty</span>" data-content="<a data-toggle='modal'  class='btn btn-default' href='#myModal' style='width:100%;'>Add Pot</a>"><%= let%></a>
                                   
                                
                                <% }
                                int charValue = let.charAt(0);
                                let = String.valueOf((char)(charValue + 1));
                                               

                       } %>
                      </div><br>
                      <div class="btn-group">
                        <% 
                         let = "k";
                         for (int j= 1; j<11; j++){ 
                          

                                if(pm.CheckPlantPosition(let, plants)){   
                                    int stage= pm.GetPlantStage(let, plants);
                                
              %>
                                <a data-toggle="modal" class="btn btn-xlg btn-success"  data-placement="left" id="row<%= i%><%= let%>" data-toggle="popover" data-html="true" title=<% if(stage==1) {%>"<span class='label label-success'>4-5 Leaf Stage</span>"<%} else if (stage==2){%>"<span class='label label-success'>Mid-Tillering</span>"<%} else{%>"<span class='label label-success'>Booting</span>"<%}%> data-content="<a class='btn btn-default' href='pot.jsp?row=row<%= i%><%= let%>' style='width:100%;'>View Pot</a><a data-toggle='modal'  class='btn btn-default' href='#myModal' style='width:100%;'>Edit Pot</a><a data-toggle='modal'  class='btn btn-default' href='#deleteModal' style='width:100%;'>Delete Pot</a>"><%= let%></a>
                                     
                                <% }else{ %>
                                   <a data-toggle="modal" class="addplant btn btn-xlg btn-default"  data-placement="left" id="row<%= i%><%= let%>" data-toggle="popover" data-html="true" title="<span class='label label-default'>Empty</span>" data-content="<a data-toggle='modal'  class='btn btn-default' href='#myModal' style='width:100%;'>Add Pot</a>"><%= let%></a>
                                   
                                
                                <% }
                                int charValue = let.charAt(0);
                                let = String.valueOf((char)(charValue + 1));
                                               

                       } %>
                      </div>
                    </td>  
                  </tr>  
                 <% } %>  
                </tbody>  
              </table> 
            </div>
          </div>
           
        </div>
        


       <!-- Add Modal -->
        <div class="modal fade" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Add Plant Pot</h4>
              </div>
              <div class="modal-body">
                <form id="addnewplant-form" role="form" action="AddNewPlant" method="get">
                  <div class="form-group">
                    <input type="hidden" class="form-control" name="row_id" id="row_id" >
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Stage</label>

		     <select class="form-control" name="stage" id="stage">
			<option value="1">4-5 Leaf Stage</option>
			<option value="2">Mid Tillering</option>
			<option value="3">Booting</option>
                     </select>
                    
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">IRRI Plant Identification</label>
                    <input type="text" class="form-control" name="irri_id" id="irri_id" >
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Abbreviated Name</label>
                    <input type="text" class="form-control" id="abbreviated_name" name="abbreviated_name">
                  </div>
                  
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button id="addnewplant" type="button" class="btn btn-primary">Add Plant</button>
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
    <script>
      $(function(){
        

        
        <% 
        String let = "a";
        for (int j= 1; j<6; j++){
             for (int k= 1; k<21; k++){ %>
            $("#row<%= j%><%= let%>").popover();
            
        <% int charValue = let.charAt(0);
           let = String.valueOf((char)(charValue + 1));
           }let = "a";} %>
        
        $("#tip").tooltip();

$(document).on("click", ".addplant", function () {

     $(".modal-body #row_id").val( event.target.id );
     // As pointed out in comments, 
     // it is superfluous to have to manually call the modal.
     // $('#addBookDialog').modal('show');
});

      });

  $('#addnewplant').on('click', function(e){
    // We don't want this to act as a link so cancel the link action
    e.preventDefault();

    // Find form and submit it
    $('#addnewplant-form').submit();
  });
    </script>




  </body>
</html>