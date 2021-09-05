<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/styles.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="styles/Bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/customerStyle.css">
<title>Customer Delete Account</title>
<style type="text/css">
body{
	background-image: url("images/cusBack.png");
	background-repeat: repeat-y;
	background-size: inherit;

}

.nav-item::after {
			     content: '';
			     display: block;
			     width: 0px;
			     height: 2px;
			     background: #2171ff;
			     transition: 0.4s
			 }
			
			 .nav-item:hover::after {
			     width: 100%
			 }
			
			 .navbar-dark .navbar-nav .active>.nav-link,
			 .navbar-dark .navbar-nav .nav-link.active,
			 .navbar-dark .navbar-nav .nav-link.show,
			 .navbar-dark .navbar-nav .show>.nav-link,
			 .navbar-dark .navbar-nav .nav-link:focus,
			 .navbar-dark .navbar-nav .nav-link:hover {
			     color: #2171ff
			 }
			
			 .nav-link {
			     padding: 25px 50px;
			     margin-left: 20px;
			     margin-right: 20px;
			     transition: 0.2s
			 }
			 .backround-footer{
			 	background-color: #212529
			 }
			 .main-blog-center{
			 	margin-bottom: 50px;
			 }
			 .logo-marg{
			 	margin-left: 15px;
			 }
			 .header-marg{
			 	display:flex;
				 margin-top: 15px;
			 }
			.footer-grid-marg{
				margin-top: 15px;
			}
</style>
</head>
<body>

	<!-- Header -->

	   		 <div>
		       		<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <button class="navbar-toggler" type="button" data-target="#navigation"> <span class="navbar-toggler-icon"></span> </button>
					 	<div class="header-marg">
					 		<div class="logo-marg">
		   					<img src="images/logo1.png" width="200px" height="100px" alt="Auto Care">
		   				</div>
						 <div class="collapse navbar-collapse">
		   					<ul class="navbar-nav">
					            <li class="nav-item active"> <a href="#" class="nav-link"> Home </a> </li>
					            <li class="nav-item"> <a href="#" class="nav-link"> Services </a> </li>
					            <li class="nav-item"> <a href="#" class="nav-link"> Bookings </a> </li>
					            <li class="nav-item"> <a href="#" class="nav-link"> About Us </a> </li>
		       
		  					</ul>
						</div>
					 	</div>
					 	
				</nav>
	       </div>
	<!-- Navigation -->

	<!-- Getting data from user account -->
	
	<% 
		String userID = request.getParameter("userID");
		String userFName = request.getParameter("userFName");
		String userLName = request.getParameter("userLName");
		String userNIC = request.getParameter("userNIC");
		String userHouseNo = request.getParameter("userHouseNo");
		String userStreet = request.getParameter("userStreet");
		String userTown = request.getParameter("userTown");
		String userEmail = request.getParameter("userEmail");
		String userPhoneNo = request.getParameter("userPhoneNo");
	%>

	<!-- Getting data from user account -->
	
	<!-- Delete form -->
	
	<div class="containerform" style="width:800px;"> <!--containerform-->
	
	<h2 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Delete My Account</h2>
    <p style="color: lightcoral; text-align: center;"  class="animate__animated animate__zoomIn">You can proceed to delete your account here</p>
	
	
	<form action="CustomerDeleteServlet" method="post" class="row needs-validation" novalidate>
		
		<div class="col-md-6" style="width: 700px;">
            <label for="validationCustom01" class="form-label">Customer ID</label>
            <input type="text" name="userID" class="form-control" id="validationCustom01" value="<%= userID %>" readonly>
        </div>
	
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">First Name</label>
            <input type="text" name="userfName" value="<%= userFName %>" class="form-control" id="validationCustom01" readonly>
        </div>
		
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Last Name</label>
            <input type="text" name="userlName" value="<%= userLName %>" class="form-control" id="validationCustom01" readonly>
        </div>
        
        <div class="col-md-6" style="width: 700px;">
            <label for="validationCustom01" class="form-label">NIC</label>
            <input type="text" name="userNIC" value="<%= userNIC %>" class="form-control" id="validationCustom01" readonly>
        </div>
        
        <div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">House No</label>
            <input type="text" name="userHouseNo" value="<%= userHouseNo %>" class="form-control" id="validationCustom01" readonly>
        </div>
        
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Street</label>
            <input type="text" name="userStreet" value="<%= userStreet %>" class="form-control" id="validationCustom01" readonly>
        </div>
		
		<div class="col-md-6" style="width: 700px;">
            <label for="validationCustom01" class="form-label">City/Town</label>
            <input type="text" name="userTown" value="<%= userTown %>" class="form-control" id="validationCustom01" readonly>
        </div>
		
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Email</label>
            <input type="email" name="userEmail" value="<%= userEmail %>" class="form-control" id="validationCustom01" readonly>
        </div>

		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Phone No</label>
            <input type="text" name="userPhone" value="<%= userPhoneNo %>" class="form-control" id="validationCustom01" readonly>
        </div>
		
		<div><br></div>
        
        <!-- Note -->
        <div class="alert alert-danger" role="alert">
		  <h4 class="alert-heading">We are sorry to see you go.. But before you go..</h4>
		  <p>Please note that deleting your account will remove all your information including bookings and your vehicles from our database. This cannot be undone!</p>
		
		  <button style="width: 150px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 1px; background-color: #2171ff; border-color: #2171ff; font-size: 16px;" type="button" class="btn btn-primary btn-sm" onclick="goBack()">Keep My Account</button>         
          <button style="width: 400px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 15px; background-color: red; border-color: red; font-size: 17px;"  type="submit" class="btn btn-secondary btn-sm">Delete My Account</button>
        
		</div>
        
        <!-- Note -->
	</form>
	<!-- Delete form -->
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
		function goBack() {
		  window.history.back();
		}
	 </script>
	

</body>
</html>