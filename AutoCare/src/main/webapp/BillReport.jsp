<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Service Bill Report</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/styles.css" rel="stylesheet" />
       
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	 <link
	    rel="stylesheet"
	    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
	  />
	<title>Monthly Income Report</title>
	<style type="text/css">
		
		body{
			background-image: url("images/paper1.jpg");
			background-repeat: no-repeat;
			background-size: cover;

		}

		.container2{
			border: 1px solid white;

			box-shadow:
		  0 2.8px 2.2px rgba(0, 0, 0, 0.034),
		  0 6.7px 5.3px rgba(0, 0, 0, 0.048),
		  0 12.5px 10px rgba(0, 0, 0, 0.06),
		  0 22.3px 17.9px rgba(0, 0, 0, 0.072),
		  0 41.8px 33.4px rgba(0, 0, 0, 0.086),
		  0 100px 80px rgba(0, 0, 0, 0.12)

		;

		  min-height: 800px;
		  width: 45vw;
		  margin: 100px auto;
		  
		  border-radius: 7px;
		 background-color:white;
		   padding-top: 30px;
		   border: 1px solid black ;
		   padding-bottom: 20px;
		   
		 
		

		
		}
		
		.info{
		padding-top: 50px;
			margin-left: 70px;
			font-size: 13px;
			font-style: bold;
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

	  <main class="flex-shrink-0">
        	
        		
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
         </main>


	<div class="container2">
		<img style="background-color: #2171ff; display: block; margin-left: auto; margin-right: auto; margin-bottom: 20px;" src="images/logo.png" height="80px" width="80px">
	  <h2 style="color : black; text-align: center; letter-spacing: 3px;" id="insertbill" class="animate__animated animate__backInDown" >MONTHLY INCOME REPORT</h2>
	   <p style="color: red; text-align: center; letter-spacing: 3px;"  class="animate__animated animate__zoomIn">SERVICES AND SELLINGS</p> 
	  <table style="background-color:black; color: black; margin-top: 60px; margin-bottom: 60px; margin-left:70px; width: 750px;" class="table table-hover">
	    <thead style="background-color: white">
	      <tr>
	        <th>Service Type</th>
	        <th>No Of Services</th>
	        <th>Total</th>
	      </tr>
	    </thead>
	    <tbody style="background-color: white; ">
	      <tr>
	        <td>Body Wash</td>
	        <td>19</td>
	        <td>Rs 120,000</td>
	      </tr>
	      <tr style="background-color: white">
	        <td>Interior Clean</td>
	        <td>12</td>
	        <td>Rs 1350,000</td>
	      </tr>
	      <tr>
	        <td>Full Service</td>
	        <td>17</td>
	        <td>Rs 170,000</td>
	      </tr>
	      <tr>
	        <td>Condition Check</td>
	        <td>10</td>
	        <td>Rs 122,000</td>
	      </tr>
	      <tr>
	        <td>Engine Renewal</td>
	        <td>03</td>
	        <td>Rs  12,000</td>
	      </tr>
	      <tr>
	        <td>Oil Change</td>
	        <td>13</td>
	        <td>Rs  20,000</td>
	      </tr>
	      <tr>
	        <td>Full Service</td>
	        <td>17</td>
	        <td>Rs 170,000</td>
	      </tr>
	      <tr>
	        <td>Condition Check</td>
	        <td>10</td>
	        <td>Rs 122,000</td>
	      </tr>
	      <tr>
	        <td>Engine Renewal</td>
	        <td>03</td>
	        <td>Rs  12,000</td>
	      </tr>
	      <tr>
	        <td>Oil Change</td>
	        <td>13</td>
	        <td>Rs  20,000</td>
	      </tr>
	    
	    </tbody>

	  </table>
	  
	  <div class = "info">
	  
		  <p>Date</p>
		  <p>Total Services</p>
		  <p>Total Income</p>
		  <p>No 109/A, Peradeniya Rd, Kandy</p>
		    <p>autocare@gmail.com</p>
		    <p>+ 9481 234 5674</p>
		      <img src="images/sign.png" width="120px" height="120px">
		      <h6>General Manager </h6>
	  
	  </div>
	  
	 
	  <!--   <h3 style="color : black; text-align: center; letter-spacing: 3px;" id="insertbill" class="animate__animated animate__backInDown" >TOTAL INCOME</h3>
	   <h4 style="color: red; text-align: center; letter-spacing: 3px;"  class="animate__animated animate__zoomIn"><strong>Rs 175,5000</strong></h4>-->

	     
    
	</div>
	
	   <button style="width: 150px; height : 38px;   margin-left: 870px; background-color: #2171ff; border-color: #2171ff; font-size: 16px;" type="reset" class="btn btn-primary btn-sm">Download PDF </button>
    

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
			    � 2021 Copyright:
			    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">AutoCare</a>
			  </div>
			  <!-- Copyright -->
			</footer>
			<!-- Footer -->
       
        <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

	


</body>
</html>