<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	 
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Bill Display</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/styles.css" rel="stylesheet" />
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	  <link
	    rel="stylesheet"
	    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
	  />
	<title></title>
	<style type="text/css">
		body{
			background-image : url("images/download13.png");
			background-repeat: no-repeat;
			background-size: cover;
			
			

		}

		.container2{
			
			box-shadow:
		  0 2.8px 2.2px rgba(0, 0, 0, 0.034),
		  0 6.7px 5.3px rgba(0, 0, 0, 0.048),
		  0 12.5px 10px rgba(0, 0, 0, 0.06),
		  0 22.3px 17.9px rgba(0, 0, 0, 0.072),
		  0 41.8px 33.4px rgba(0, 0, 0, 0.086),
		  0 100px 80px rgba(0, 0, 0, 0.12)

		;

		 
		  width: 28vw;
		  margin: 40px auto;
		  background: white;
		  border-radius: 7px;
		  background-color: aliceblue;
		   padding-top: 5px;
		   margin-left:900px;
		   margin-bootom:30px;
		  
		  

		
		}

		#insertbill{
			margin-top: 10px;
			margin-bottom: 10px;
		}
		h6{
			margin-bottom: 10px;

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
	 
	 titles{
	  display: flex;
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



	
<c:forEach var = "display" items = "${billdetails}">
		<div class="container2">
		
			<img style="background-color:black; display: block; margin-left: auto; margin-right: auto" src="images/logo.png" height="60px" width="60px">
		   <h2 style="color : black; text-align: center; letter-spacing: 3px;" id="insertbill" class="animate__animated animate__backInDown" >INVOICE </h2>
		   <p style="color: red; text-align: center; letter-spacing: 3px; font-size : 25px; "  class="animate__animated animate__zoomIn">${display.invoiceNo} </p>
	
		<div style = " display : flex; padding-left : 20px; margin-top : 10px;" class ="con">
		   <h6 style = " margin-left: 20px">Name : ${display.cus_fname} ${display.cus_lname} </h6>
		  
		    <h6 style = " margin-left: 20px; padding-left : 100px;" >Billing Date : ${display.billing_date}</h6>
		  </div>
		             
		  <table class="table table-striped">
		  		
		    <thead>
		      <tr>
		        <th>Billing Item</th>
		        <th>Quantity</th>
		        <th>Unit Price</th>
		        <th>Total</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr> 
		        <td>${display.service_name}</td>
		        <td></td>
		        <td>5000.00</td>
		        <td>5000.00</td>
		      </tr>
		      <tr>
		        <td>${display.partId}</td>
		        <td>${display.quantity}</td>
		        <td>3800.00</td>
		         <td>7600.00</td>
		      </tr>
		      <tr>
		        <td>Service Charge</td>
		        <td></td>
		        <td>${display.service_charge}</td>
		        <td>${display.service_charge}</td>
		      </tr>
		       <tr>
		        <h1><td><strong>TOTAL</strong></td></h1>
		        <td></td>
		        <td></td>
		         <h1><td><strong>${display.total_bill}</strong></td></h1>
		      </tr>
		   
		    </tbody>
		
		</table>

		<img style=" display: block; margin-left: auto; margin-right: auto; " src="images/stamp3.jpg" width="100px" height="100px">
		<!--  <img style=" display: block; margin-left: auto; margin-right: auto; " src="images/sign.png" width="110px" height="110px">-->
		</div>


</c:forEach>

	<a href="SearchBill.jsp"><button style = "text-decoration: none; color: white; border-radius: 5px; background-color:black; margin-left: 800px; width :400px; margin-top:40px; 
  height : 40px;"
						class="editBtn">
						Get Service Bills
					</button></a>
	
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
			    ? 2021 Copyright:
			    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">AutoCare</a>
			  </div>
			  <!-- Copyright -->
			</footer>
			<!-- Footer -->
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->


</body>
</html>