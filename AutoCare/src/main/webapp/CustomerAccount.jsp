<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Customer Account</title>
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

	<div class="containerform" style="width:1300px;">
	<div class="row">
	<div class="col-md-3">
	<div class="osahan-account-page-left shadow-sm bg-white h-100">
	<div class="border-bottom p-4">
	<div class="osahan-user text-center">
	<div class="osahan-user-media">
		<img class="mb-3 rounded-pill shadow-sm mt-1" src="images/user.png" width="50px" height="50px" alt="gurdeep singh osahan">
		
		<div class="osahan-user-media-body">
		<!-- Loop to get data -->	
		<c:forEach var="cus" items="${cusDetails}">
	
		<!-- Pass on data to attributes using c:set -->
		
		<c:set var="userID" value="${cus.userID}"/>
		<c:set var="userFName" value="${cus.fName}"/>
		<c:set var="userLName" value="${cus.lName}"/>
		<c:set var="userNIC" value="${cus.nic}"/>
		<c:set var="userHouseNo" value="${cus.houseNo}"/>
		<c:set var="userStreet" value="${cus.street}"/>
		<c:set var="userTown" value="${cus.town}"/>
		<c:set var="userEmail" value="${cus.email}"/>
		<c:set var="userPhoneNo" value="${cus.phoneNo}"/>
		
		<h6 class="mb-2"><b>${cus.fName} ${cus.lName}</b></h6>
        <p class="mb-1">${cus.nic}</p>
        <p class="mb-1">${cus.houseNo}, ${cus.street}, ${cus.town}</p>
        <p class="mb-1">${cus.email}</p>
        <p class="mb-1">${cus.phoneNo}</p>
       		
		<!-- Pass on data to attributes using c:set -->
		</c:forEach>
		<!-- Loop to get data -->
		<a href="CustomerLogin.jsp" class="btn btn-danger">Logout</a>
		
		
		<div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></div>
		
		<!-- Button to pass on the data to next page through url parameters UPDATE-->
		
		<c:url value="CustomerUpdate.jsp" var="cusUpdate">
			<c:param name="userID" value="${userID}"></c:param>
			<c:param name="userFName" value="${userFName}"></c:param>
			<c:param name="userLName" value="${userLName}"></c:param>
			<c:param name="userNIC" value="${userNIC}"></c:param>
			<c:param name="userHouseNo" value="${userHouseNo}"></c:param>
			<c:param name="userStreet" value="${userStreet}"></c:param>
			<c:param name="userTown" value="${userTown}"></c:param>
			<c:param name="userEmail" value="${userEmail}"></c:param>
			<c:param name="userPhoneNo" value="${userPhoneNo}"></c:param>
		</c:url>
		
		<a href="${cusUpdate}">
		<input type="button" name="update" class="btn btn-primary" value="Update Account">
		</a>
		
		<div><br><div>
		
		<!-- Button to pass on the data to next page through url parameters UPDATE-->
		
		<!-- Button to pass on the data to next page through url parameters DELETE-->
		
		<c:url value="CustomerDelete.jsp" var="cusDelete">
			<c:param name="userID" value="${userID}"></c:param>
			<c:param name="userFName" value="${userFName}"></c:param>
			<c:param name="userLName" value="${userLName}"></c:param>
			<c:param name="userNIC" value="${userNIC}"></c:param>
			<c:param name="userHouseNo" value="${userHouseNo}"></c:param>
			<c:param name="userStreet" value="${userStreet}"></c:param>
			<c:param name="userTown" value="${userTown}"></c:param>
			<c:param name="userEmail" value="${userEmail}"></c:param>
			<c:param name="userPhoneNo" value="${userPhoneNo}"></c:param>
		</c:url>
		
		<a href="${cusDelete}">
		<input type="button" name="delete" class="btn btn-danger" value="Delete Account">
		</a>
		
		<!-- Button to pass on the data to next page through url parameters DELETE-->
	</div><!-- osahan-user-media-body -->
	</div><!-- osahan-user-media -->
	</div><!-- osahan-user text-center -->
	</div><!-- border-bottom p-4 -->
	</div><!-- osahan-account-page-left shadow-sm bg-white h-100 -->
	</div><!-- col-md-3 -->
	</div><!-- row -->
	</div>
	<div class="col-md-9">
	
		<div class="osahan-account-page-right shadow-sm bg-white p-4 h-100">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane  fade  active show" id="offers" role="tabpanel" aria-labelledby="offers-tab">
                        <h4 class="font-weight-bold mt-0 mb-4">My Dashboard</h4>
                        <div class="row mb-4 pb-2">
                            <div class="col-md-6">
                                <div class="card offer-card shadow-sm">
                                    <div class="card-body">
                                        <h5 class="card-title"><img src="images/carwash.png" width="355px" height="355px"><br><b>Service Lookup</b></h5>
                                        <h6 class="card-subtitle mb-2 text-block">View all our sevices here</h6>
                                        <a href="#" class="btn btn-primary">View all services</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card offer-card shadow-sm">
                                    <div class="card-body">
                                        <h5 class="card-title"><img src="images/vehicles.png" width="355px" height="355px"><br><b>My Vehicles</b></h5>
                                        <h6 class="card-subtitle mb-2 text-block">View all your vehicles here</h6>
                                        		<!-- Passing userID -->
                                        		<c:url value="CustomerVehicleAccount.jsp" var="cusVehicleAll">
													<c:param name="userID" value="${userID}"></c:param>
												</c:url>
												<a href="${cusVehicleAll}">
												<input type="button" name="vehicleAll" class="btn btn-primary" value="View My Vehicles">
												</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-4 pb-2">
                            <div class="col-md-6">
                                <div class="card offer-card shadow-sm">
                                    <div class="card-body">
                                        <h5 class="card-title"><img src="images/bookings.png" width="355px" height="355px"><br><b>My Bookings</b></h5>
                                        <h6 class="card-subtitle mb-2 text-block">View all your bookings here</h6>
                                    			<!-- Passing userID -->
                                        		<c:url value="CustomerBookingHome.jsp" var="cusBook">
													<c:param name="userID" value="${userID}"></c:param>
													<c:param name="userFName" value="${userFName}"></c:param>
													<c:param name="userLName" value="${userLName}"></c:param>
												</c:url>
												<a href="${cusBook}">
												<input type="button" name="book" class="btn btn-primary" value="View My Bookings">
												</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card offer-card shadow-sm">
                                    <div class="card-body">
                                    	<h5 class="card-title"><img src="images/newVehicle.png" width="355px" height="355px"><br><b>Add vehicles</b></h5>
                                        <h6 class="card-subtitle mb-2 text-block">Add new vehicles here</h6>
                                        		<!-- Passing userID -->
                                        		<c:url value="CustomerVehicleInsert.jsp" var="vehicleInsert">
													<c:param name="userID" value="${userID}"></c:param>
												</c:url>
												<a href="${vehicleInsert}">
												<input type="button" name="vehicleInsert" class="btn btn-primary" value="Add New Vehicles">
												</a>
                                   	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- "osahan-account-page-right shadow-sm bg-white p-4 h-100" -->
	
	
	
	
	</div><!-- colmd9 -->
	</div><!-- row -->
	</div><!-- container -->
	
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
	

	
	<script type="text/javascript">
	 function goBack() {
		  window.history.back();
	}
	</script>
	

</body>
</html>