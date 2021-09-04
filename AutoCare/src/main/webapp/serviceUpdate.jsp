<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String serviceID = request.getParameter("serviceID");
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
Connection con = null;
Statement stmt = null;
ResultSet rs = null;
%>
<%
    try {
        con = DriverManager.getConnection(connectionUrl + database, userid, password);
        stmt = con.createStatement();
        String sql = "select * from service where serviceID='"+serviceID+"'";
        rs = stmt.executeQuery(sql);
        while (rs.next()) {
    %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/InsertBill.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<title>Update Service</title>
<style>
	body{
	background-image: url(images/service.jpg);
	background-repeat: no-repeat;
	background-size: cover;
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
		       
		  					</ul>
						</div>
					 	</div>
					 	
				</nav>
	       </div>



<div class="containerform">
	<h2 align="center">Update Service details</h2>

	<div>
        <div>
            <div name="credential_success" id ="mydiv" class="credential_success"> ${credential_success}</div>
        </div>
        <div>
            <div name="credential_error" id ="mydivvv" class="credential_error"> ${credential_error}</div>
        </div>
    </div>

	<form class="row needs-validation" novalidate action="ServiceUpdateServlet" method="post">
		<div class="col-md-6">
			<label for="validationCustom01" class="form-label">Service ID : </label>
			<input type="text" name="serviceID" class="form-control" id="validationCustom01" required="" value="<%=rs.getString("serviceID")%>" readonly>
        </div>
		<br><br><br><br>
		
		<div class="col-md-6">
			<label for="validationCustom01" class="form-label">Service Type : </label>
		<input type="text" name="servicename" class="form-control" id="validationCustom01" required="" value="<%=rs.getString("service_type")%>">
		<div class="invalid-feedback">
               		Insert a service type.
           		</div>
        </div>
		<br><br><br><br>
		
		<div class="col-md-6">
			<label for="validationCustom01" class="form-label">Description : </label>
		<textarea rows="4" cols="50" id="des" name="description" class="form-control" id="validationCustom01" required=""></textarea>
		<div class="invalid-feedback">
               		Insert service description.
           		</div>
        </div>
			<br><br><br><br>
		
		<div class="col-md-6">
			<label for="validationCustom01" class="form-label">Price : </label>	
		<input type="text" name="price" class="form-control" id="validationCustom01" required="" value="<%=rs.getString("amount")%>">
		<div class="invalid-feedback">
               		Insert relevant price.
           		</div>
        </div>
		<br><br><br><br>
		
		<input style="width: 100px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 1px;" class="btn btn-danger" type="reset" value="Clear All">
		<input style="width: 450px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 15px;" class="btn btn-primary" type="submit" name="submit" value="Submit">
	</form>
	
	<script>
		document.getElementById("des").value="<%=rs.getString("description")%>";
	</script>
	
	   <%
    }
    con.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    %>
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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

  <script>
            var forms = document.querySelectorAll('.needs-validation');
            
            Array.prototype.slice.call( forms ).forEach( function( form )
            {
                form.addEventListener( 'submit', function ( event )
                {
                    if ( !form.checkValidity( ) )
                    {
                        event.preventDefault( )
                        event.stopPropagation( );
                    }

                    form.classList.add( 'was-validated' );
              }, false );
            } );
        </script>

</body>
</html>