<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String partNo = request.getParameter("partNo");
String qty = request.getParameter("quantity");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "autocare";
String userid = "root";
String password = "0755";

try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="icon" href="images/autocare_favicon.jpg" type="image/jpg" sizes="16x16">

<!-- CSS only -->
<link rel="stylesheet" href="styles/dropdownstyle.css">
<link rel="stylesheet" type="text/css" href="styles/Categoryinsertstyle.css">
<link rel="stylesheet" type="text/css" href="styles/Boostrapstyle.css">

<!-- Scripts only -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
<meta charset="ISO-8859-1">
<title>Change Details</title>
<style type="text/css">

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


	<div>
    	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <button class="navbar-toggler" type="button" data-target="#navigation"> <span class="navbar-toggler-icon"></span> </button>
	 	<div class="header-marg">
	 		<div class="logo-marg">
 				<img src="images/logo1.png" width="200px" height="100px" alt="Auto Care">
 			</div>
		 <div class="collapse navbar-collapse">
 			<ul class="navbar-nav">
	            <li class="nav-item active"> <a href="#" class="nav-link"> Home </a> </li>
	            <li class="nav-item"> <a href="StockView.jsp" class="nav-link"> View Items </a> </li>
	            <li class="nav-item"> <a href="StockMonthlyReport.jsp" class="nav-link"> Report </a> </li>
	            
	            <li class="nav-item dropdown">
       				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        					 Others
       				</a>
       
       				<div class="background-nav dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="background-color: currentcolor;" >
	          			<a class="dropdown-item nav-item background-nav" href="StockBrandModInsert.jsp">Add Brand or Model</a>
	          			<a class="dropdown-item nav-item background-nav" href="StockCategoryInsert.jsp">Add Category</a>
	         			<a class="dropdown-item nav-item background-nav" href="StockPartInsert.jsp">Add Items</a>
       				</div>
     				</li>
     
			</ul>
		</div>
	 </div>
 	
	</nav>
  </div>

<div class="containerform">
	<form action="UpdateAllServlet" method="post" class="row needs-validation" novalidate>
	
		<h2 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown"><%=partNo%></h2>
     	<p style="color: lightcoral; text-align: center;"  class="animate__animated animate__zoomIn">Update the stock by filling relevant fields</p>
			
		
				<%
				try {
					connection = DriverManager.getConnection(connectionUrl + database, userid, password);
					statement = connection.createStatement();
					String sql = "select * from autocare.stock where partNo = '"+partNo+"'";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
						
						
				%>
				
				
          		<input type="hidden" class="form-control form-control" id="partNo" name="partNo"value="<%=resultSet.getString("partNo")%>" required="">
	            	
				
		 	 
				<div class="col-12">
            		<label for="inputAddress" class="form-label">Brand Name*</label>
            		<div class="search_select_box">
						<select name="brand" id="brand" class="" data-live-search="true" required="">
			  				<option><%=resultSet.getString("brand_name")%></option>
						  <%
							try {
								connection = DriverManager.getConnection(connectionUrl + database, userid, password);
								statement = connection.createStatement();
								String sql2 = "select * from autocare.brand";
								ResultSet rs = statement.executeQuery(sql2);
								
								while (rs.next()) {
								
							%>
							<option><%=rs.getString("brand_name")%></option>
							 <%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</select>
					</div>
					<div class="invalid-feedback">
             			 Please select a valid brand name.
            		</div>
				</div>
				
					
				<div class="col-12">
            		<label for="inputAddress" class="form-label">Model Name*</label>
            		<div class="search_select_box">
						<select name="model" id="model" class="" data-live-search="true" required="">
			  				<option><%=resultSet.getString("model_name")%></option>
						  <%
							try {
								connection = DriverManager.getConnection(connectionUrl + database, userid, password);
								statement = connection.createStatement();
								String sql2 = "select * from autocare.model";
								ResultSet rs2 = statement.executeQuery(sql2);
								
								while (rs2.next()) {
								
							%>
							<option><%=rs2.getString("model_name")%></option>
							 <%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</select>
					</div>
					<div class="invalid-feedback">
             			 Please select a valid model name.
            		</div>
				</div>
						
				<div class="col-12">
            		<label for="inputAddress" class="form-label">Category Name*</label>
            		<div class="search_select_box">
						<select name="category" id="category" class="" data-live-search="true" required="">
			  				<option><%=resultSet.getString("category_name")%></option>
						  <%
							try {
								connection = DriverManager.getConnection(connectionUrl + database, userid, password);
								statement = connection.createStatement();
								String sql2 = "select * from autocare.category";
								ResultSet rs3 = statement.executeQuery(sql2);
								
								while (rs3.next()) {
								
							%>
							<option><%=rs3.getString("category_name")%></option>
							 <%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</select>
					</div>
					<div class="invalid-feedback">
             			 Please select a valid category name.
            		</div>
				</div>
				
				
						
				<div class="col-12">
            		<label for="inputAddress" class="form-label">Country*</label>
            		<div class="search_select_box">
						<select name="country" id="Country" class="" data-live-search="true" required="">
						  <option> <%=resultSet.getString("country")%></option>
						  <option value="India">India</option>
						  <option value="Germany">Germany</option>
						  <option value="Japan">Japan</option>
						  <option value="Thailand">Thailand</option>
						  <option value="China">China</option>
						</select>	
					</div>
					<div class="invalid-feedback">
             			 Please select a valid country.
            		</div>
				</div>
							
				<div class="col-md-6">
           			<label for="validationCustom01" class="form-label">Unit Price*</label>
          			<input type="text" class="form-control form-control" id="unitPrice" name="unitPrice"value="<%=resultSet.getString("unitPrice")%>" required="">
	            	<div class="invalid-feedback">
	              		Please choose a unit price.
	          		</div>
         		</div>
         		<div class="display-flx">  
	         		<div class="col-md-6">
	           			<label for="validationCustom01" class="form-label">Warranty*</label>
	          			<input type="text" class="form-control form-control" id="warranty" name="warranty"value="<%=resultSet.getString("warrenty")%>" required="">
		            	<div class="invalid-feedback">
		              		Please choose a warranty.
		          		</div>
	         		</div>
	         		
	         		<div class="col-md-6">
	           			<label for="validationCustom01" class="form-label">Quantity*</label>
	          			<input type="number" class="form-control form-control" id="quantity" name="quantity"value="<%=resultSet.getString("quantity")%>" required="">
		            	<div class="invalid-feedback">
		              		Please choose a quantity.
		          		</div>
	         		</div>
	         	</div>
         		
         		<div class="col-md-6">
           			<label for="validationCustom01" class="form-label">Date*</label>
          			<input type="date" class="form-control form-control" id="date" name="date"value="<%=resultSet.getString("date")%>" required="">
	            	<div class="invalid-feedback">
	              		Please choose a date.
	          		</div>
         		</div>
			
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				
		 <div class="dislplayalign">
	          <div >
	           <button type="reset" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="All fields will be reset">Reset</button>
	          </div>
	                  
	          <div>
	           <button type="submit" class="btn btn-primary">Update</button> 
	          </div>
       </div>
			
		</form>
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

<!-- JavaScript Bundle with Popper -->
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
  
  <!-- Drop down Script -->
  
  <script type="text/javascript">
  
  	$(document).ready(function(){
  		
  		$('.search_select_box select').selectpicker();
  	})
  	
  </script> 
  
  <!-- Button hover warning message -->
 <script type="text/javascript">
 	$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
 </script> 

</body>
</html>