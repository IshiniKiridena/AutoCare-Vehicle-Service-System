<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "autocare";
String userid = "root";
String password = "qwerty";

try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles/services.css">
<meta charset="ISO-8859-1">
<title>Service Details</title>

<style type="text/css">

body{
	background-image: url(images/service.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
 
 #searchbar {
	margin-top:10px;
	margin-left : 160%;
	width: 150%;
	padding: 10px;
	border-radius: 10px;
 }
 
  .containertable{
 	box-shadow:
  0 2.8px 2.2px rgba(0, 0, 0, 0.034),
  0 6.7px 5.3px rgba(0, 0, 0, 0.048),
  0 12.5px 10px rgba(0, 0, 0, 0.06),
  0 22.3px 17.9px rgba(0, 0, 0, 0.072),
  0 41.8px 33.4px rgba(0, 0, 0, 0.086),
  0 100px 80px rgba(0, 0, 0, 0.12)

;

  min-height: auto;
  width: 90vw;
  margin: 210px auto;
  margin-top: 150px;
  background: white;
  border-radius: 7px;
  padding: 60px 50px;

 }
 
 .credential_success{
    margin-left: 25%;
    margin-right: 25%;
    border-radius: 5px;
    background-color:#a0f9b6;
    text-align:center;
    font-size: 15px;
    color: green;
}
.credential_error{
   
    margin-left: 25%;
    margin-right: 25%;
    border-radius: 5px;
    background-color:#ffdcdc;
    text-align:center;
    font-size: 15px;
    color: red;
}
 
</style>

<script type="text/javascript">
function searchFunction() {
	var input, filter, table, tr, td, i, txtValue;
	input = document.getElementById("searchbar");
	filter = input.value.toUpperCase();
	table = document.getElementById("myt");
	tr = table.getElementsByTagName("tr");
	for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}


setTimeout(function() {
    $('#mydiv').fadeOut('fast');
}, 5000)

 setTimeout(function() {
    $('#mydivvv').fadeOut('fast');
}, 5000)



</script>

</head>
<body>

		<div>
		       		<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <button class="navbar-toggler" type="button" data-target="#navigation"> <span class="navbar-toggler-icon"></span> </button>
					 	<div class="header-marg">
					 		<div class="logo-marg">
		   					<img src="images/logo1.png" width="200px" height="100px" alt="Auto Care">
		   				</div>
						 <div class="collapse navbar-collapse">
		   					<ul class="navbar-nav">
					            <li class="nav-item"> <a href="MainPage.jsp" class="nav-link"> Home </a> </li>
					            <li class="nav-item active"> <a href="#" class="nav-link"> Services </a> </li>
					            <li class="nav-item"> <a href="bookingReport.jsp" class="nav-link"> Bookings </a> </li>
					            <li class="nav-item"> <a href="#" class="nav-link"> About Us </a> </li>
		       					<li><input id="searchbar" onkeyup="searchFunction()" type="text"
											name="search" placeholder="Search services..."></li>
		  					</ul>
						</div>
					 	</div>
					 	
				</nav>
	       </div>




<div class="containertable">
		<h2 align="center">Services Available</h2>
		
		<div>
        <div>
            <div name="credential_success" id ="mydiv" class="credential_success"> ${credential_success}</div>
        </div>
        <div>
            <div name="credential_error" id ="mydivvv" class="credential_error"> ${credential_error}</div>
        </div>
    </div>
		
		<br>
	
	<!-- table -->
	<table id="myt" class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Service ID</th>
				<th scope="col">Service Type</th>
				<th scope="col">Description</th>
				<th scope="col">Price</th>
				<th scope="col">UPDATE</th>
				<th scope="col">DELETE</th>
			</tr>
		</thead>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from service";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tbody>
			<tr>
				<td><%=resultSet.getString("serviceID")%></td>
				<td><%=resultSet.getString("service_type")%></td>
				<td><%=resultSet.getString("description")%></td>
				<td><%=resultSet.getString("amount")%></td>
				<td><a
					href="serviceUpdate.jsp?serviceID=<%=resultSet.getString("serviceID")%>"><button
						class="btn btn-primary">
						 Update 
					</button></a></td>
				<td>
				<!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal-<%=resultSet.getString("serviceID")%>">
                          Delete
                    </button>
                               
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal-<%=resultSet.getString("serviceID")%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Are you sure?</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            Do you really want to delete this record?
                            This process cannot be undone.
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <a href="serviceDelete.jsp?serviceID=<%=resultSet.getString("serviceID")%>"><button type="button" class="btn btn-danger">Yes,delete it!</button></a>
                          </div>
                        </div>
                      </div>
                    </div>
					</td>
			</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		</tbody>
	</table>
	
	<a href="serviceInsert.jsp"><button type="button" class="btn btn-secondary">Add New Service</button></a>
	
</div>

<!-- Footer -->
			<footer class="text-center text-lg-start bg-light text-muted">
			  
			
			  <!-- Section: Links  -->
			  <section class="backround-footer">
			    <div class="container text-center text-md-start mt-5">
			      <!-- Grid row -->
			      <div class="row mt-3 ">
		      		<!-- Grid column -->
				        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4 footer-grid-marg">
				          <!-- Content -->
				          <h6 class="text-uppercase fw-bold mb-4">
				            <i class="fas fa-gem me-3"></i>AutoCare
				          </h6>
				          <p>
				            Here you can use rows and columns to organize your footer content. Lorem ipsum
				            dolor sit amet, consectetur adipisicing elit.
				          </p>
				        </div>
				        <!-- Grid column -->
				        <!-- Grid column -->
				        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4 footer-grid-marg">
				          <!-- Links -->
				          <h6 class="text-uppercase fw-bold mb-4">
				            Services
				          </h6>
				          <p class="text-reset">
				             Full Service
				          </p>
				          <p class="text-reset">
				            Body Wash
				          </p>
				          <p class="text-reset">
				            Oil Changing
				          </p>
				          <p class="text-reset">
				            Matte Wrapping
				          </p>
				        </div>
				        <!-- Grid column -->
				
						<!-- Grid column -->
				        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4 footer-grid-marg">
				          <!-- Links -->
				          <h6 class="text-uppercase fw-bold mb-4">
				            Contact
				          </h6>
				          <p><i class="fas fa-home me-3"></i>No 109/A, Peradeniya Rd, Kandy</p>
				          <p>
				            <i class="fas fa-envelope me-3"></i>autocare@gmail.com
				          </p>
				          <p><i class="fas fa-phone me-3"></i>+ 9481 234 5674</p>
				          <p><i class="fas fa-print me-3"></i>+ 9477 234 5679</p>
				        </div>
				        <!-- Grid column -->
				
				        <!-- Grid column -->
				        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4 footer-grid-marg">
				          <!-- Links -->
				          <h6 class="text-uppercase fw-bold mb-4">
				            Awards
				          </h6>
				          <p class="text-reset">
				            Pay Guide - Vehicle Repair, Services and Retail Award [MA000089]2019         </p>
				          <p class="text-reset">
				   			Vehicle Repair, Services and Retail Award 2020
				          </p>
				          <p class="text-reset">
				            Motor Vehicle (Service Station Sales 
							Establishments, Rust Prevention and Paint 
							Protection) Industry Award 2020
				          </p>
				        </div>
		      	</div>
		        
		        <!-- Grid column -->
		
		        
		      </div>
		      <!-- Grid row -->
			   
			  </section>
			  <!-- Section: Links  -->
			  
			  <!-- Section: Social media -->
			  <section
			    class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom backround-footer"
			  >
			
			
			    <!-- Right -->
			    <div style="margin-left: 500px;">
			      <a href="" class="me-4 text-reset btn-floating m-1">
			        <i class="fab fa-facebook-f">
			        	<img alt="facebook" src="images/facebook.png" height="30px" width="30px">
			        </i>
			      </a>
			      <a href="" class="me-4 text-reset btn-floating m-1">
			        <i class="fab fa-twitter">
			        	<img alt="twitter" src="images/twitter.png" height="30px" width="30px">
			        </i>
			      </a>
			      <a href="" class="me-4 text-reset btn-floating m-1">
			        <i class="fab fa-google">
			        	<img alt="google" src="images/googleplus.png" height="30px" width="30px">
			        </i>
			      </a>
			      <a href="" class="me-4 text-reset btn-floating m-1">
			        <i class="fab fa-instagram">
			        	<img alt="instagram" src="images/instagram.png" height="30px" width="30px">
			        </i>
			      </a>
			      <a href="" class="me-4 text-reset btn-floating m-1">
			        <i class="fab fa-whatsapp">
			        	<img alt="whatsapp" src="images/whatsapp.png" height="30px" width="30px">
			        </i>
			      </a>
			      
			    </div>
			    <!-- Right -->
			  </section>
			  <!-- Section: Social media -->
			
			  <!-- Copyright -->
			  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
			    © 2021 Copyright:
			    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">AutoCare</a>
			  </div>
			  <!-- Copyright -->
			</footer>
			<!-- Footer -->


</body>
</html>