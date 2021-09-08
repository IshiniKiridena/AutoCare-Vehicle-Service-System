<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String invoiceNo = request.getParameter("invoiceNo");
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "autocare";
String userid = "root";
String password = "1995Ruvini*";
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
		String sql = "select * from bill where invoiceNo='"+invoiceNo+"'";
		rs = stmt.executeQuery(sql);
		while (rs.next()) {
	%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Service Bill Update</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles/InsertBill.css">
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<meta charset="ISO-8859-1">

<style type="text/css">
	body{
	background-image : url("images/A4.jpg");
	background-repeat: no-repeat;
	background-size: cover;
 background-attachment: fixed;

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


<div class="containerform">
      <h3 style="color : black; text-align: center; letter-spacing: 2px;" id="insertbill" class="animate__animated animate__backInDown">SERVICE BILL UPDATE</h3>
        <p style="color: green; text-align: center;"  class="animate__animated animate__zoomIn">Update the bill by filling relevant fields</p>

        
          
          
<form action = "BillUpdateServlet" method="post" class="row needs-validation" novalidate>
          <div style="padding-bottom: 10px; margin-top: 10px;" class="col-md-6">
            <label for="validationCustom01" class="form-label"><strong>First Name</strong> </label>
            <input type="text" class="form-control" id="validationCustom01" name = "fname" value="<%=rs.getString("cus_fname")%>" >
               <div class="invalid-feedback">
               Please Enter First Name.
           </div>

          </div>
          
           <div style="padding-bottom: 10px; margin-top: 10px;" class="col-md-6">
            <label for="validationCustom01" class="form-label"><strong>Last Name</strong> </label>
            <input type="text" class="form-control" id="validationCustom01" name = "lname" value="<%=rs.getString("cus_lname")%>" >
               <div class="invalid-feedback">
               Please Enter Last Name.
           </div>

          </div>

          <div style="padding-bottom: 10px; margin-top: 10px;" class="col-12">
            <label for="inputAddress" class="form-label"><strong>Service Type</strong></label>
             <select id="inputState" class="form-select" name= "service" required="">
            
              <option value="<%=rs.getString("service_name")%>" selected><%=rs.getString("service_name")%></option>
		  	<option value="Full Service">Full Service</option>
		 	<option value="Body Wash">Body Wash</option>
		 	<option value="Under wash with oil wash">Under wash with oil wash</option>
		 
               
            </select>
             <div class="invalid-feedback">
              Please select a valid Service Type.
            </div>
          </div>

          <div style="padding-bottom: 10px; margin-top: 10px;" class="col-12">
            <label for="inputAddress2" class="form-label"><strong>Service Parts</strong></label>
              <select id="inputState" class="form-select" name= "items" >
           
             <option value="<%=rs.getString("partNo")%>" selected><%=rs.getString("partNo")%></option>
		  	<option value="Break-Pad-078">Break-Pad-078</option>
		 	<option value="Mirror-left-011">Mirror-left-011</option>
		 	<option value="Mirror-right-011">Mirror-right-011</option>
		 	
            </select>
            <div class="invalid-feedback">
              Please select a valid Service Parts.
            </div>
          </div>

            <div style="padding-bottom: 10px; margin-top: 10px;"  class="col-md-4">
            <label for="inputState" class="form-label"><strong>Quantity</strong></label>
            <select id="inputState" class="form-select" name= "Quantity">
            
              <option value="" selected><%=rs.getString("quantity")%></option>
		  	<option value="">1</option>
		 	<option value="">2</option>
		 	<option value="">3</option>
		 	<option value="">4</option>
            </select>
            <div class="invalid-feedback">
              Please select a valid Quantity.
            </div>
          </div>

          <div style="padding-bottom: 10px; margin-top: 10px;" class="col-md-6">
            <label for="inputCity" class="form-label"><strong>Billing Date</strong></label>
            <input type="date" class="form-control" id="inputCity"  name = "date" value="<%=rs.getString("billing_date")%>" >
             <div class="invalid-feedback">
               Please Enter Date.
           </div>

          </div>
          
           <div style="padding-bottom: 10px; margin-top: 10px;" class="col-md-6">
            <label for="inputCity" class="form-label"><strong>Service Charge</strong></label>
            <input type="text" class="form-control" id="inputCity"  name = "serviceCharge" value="<%=rs.getString("service_charge")%>" >
             <div class="invalid-feedback">
               Please Service Charge.
           </div>

          </div>

        
            <div style="padding-bottom: 10px; margin-top: 10px;" class="col-md-6">
            <label for="validationCustom01" class="form-label"><strong>Total</strong> </label>
            <input type="text" class="form-control" id="validationCustom01" name = "total" value="<%=rs.getString("total_bill")%>" >
               <div class="invalid-feedback">
               Please Enter Total.
           </div>
          
          </div>
          
          
          <br>
 
        <button style="width: 200px; height : 35px; padding-bottom: 30px; margin-top: 70px; margin-left: 270px; background-color: #2171ff; border-color: #2171ff; font-size: 17px;"  type="submit" class="btn btn-secondary btn-sm">Update </button>

</form>

  </div>
  
 <%
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
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
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>  


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