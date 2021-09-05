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
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/Bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/customerStyle.css">
<title>Sign Up</title>
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
		
	<!-- Sign up form -->
	
	<div class="containerform" style="width:800px;"> <!--containerform-->
	
	<h2 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Sign Up</h2>
    <p style="color: lightcoral; text-align: center;"  class="animate__animated animate__zoomIn">Please enter your details to crate an account</p>
	
	
	<form action="CustomerInsertServlet" method="post" class="row needs-validation" name ="insertForm" onsubmit="return validatePassword()" novalidate>
		
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">First Name*</label>
            <input type="text" name="userfName" class="form-control" id="validationCustom01" required="">
              <div class="invalid-feedback">
               Please enter your first name <b>e.g: Raveen</b>
           	  </div>
        </div>
		
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Last Name*</label>
            <input type="text" name="userlName" class="form-control" id="validationCustom01" required="">
              <div class="invalid-feedback">
               Please enter your last name <b>e.g: Bandara</b>
           	  </div>
        </div>
        
         <div><br></div>
        
        <div class="col-md-6" style="width: 700px;">
            <label for="validationCustom01" class="form-label">NIC*</label>
            <input type="text" name="userNIC" class="form-control" id="validationCustom01" required="" maxlength="13" placeholder="*********V(old) or *************(new)">
              <div class="invalid-feedback">
               Please enter your NIC number <b>e.g: 977720559V(Old) or 1996964302244(New)</b> 
           	  </div>
        </div>
		
		 <div><br></div>
		
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">House No*</label>
            <input type="text" name="userHouseNo" class="form-control" id="validationCustom01" required="" placeholder="108/A">
              <div class="invalid-feedback">
               Please enter your House No <b>e.g: 108/A</b>
           	  </div>
        </div>
        
        <div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Street*</label>
            <input type="text" name="userStreet" class="form-control" id="validationCustom01" required="" placeholder="Colombo Road">
              <div class="invalid-feedback">
               Please enter your street <b>e.g: Colombo Road</b>
           	  </div>
        </div>
        
        <div><br></div>
        
        <div class="col-12" style="width: 700px;">
            <label for="inputAddress" class="form-label">City/Town*</label>
             <select name="userTown" id="userTown" class="form-select" required="">
	             <option selected diabled value>Choose...</option>
	             <option value="Jaffna">Jaffna</option>
  				     <option value="Kilinochchi">Kilinochchi</option>
                     <option value="Mannar">Mannar</option>
                     <option value="Mullaitivu">Mullaitivu</option>
                     <option value="Vavuniya">Vavuniya</option>
                     <option value="Puttalam">Puttalam</option>
                     <option value="Kurunegala ">Kurunegala </option>
                     <option value="Gampaha">Gampaha</option>
                     <option value="Colombo">Colombo</option>
                     <option value="Kalutara">Kalutara</option>
                     <option value="Anuradhapura">Anuradhapura</option>
                     <option value="Polonnaruwa">Polonnaruwa</option>
                     <option value="Matale">Matale</option>
                     <option value="Kandy">Kandy</option>
                     <option value="Nuwara Eliya">Nuwara Eliya</option>
                     <option value="Kegalle">Kegalle</option>
                     <option value="Ratnapura">Ratnapura</option>
                     <option value="Trincomalee">Trincomalee</option>
                     <option value="Batticaloa">Batticaloa</option>
                     <option value="Ampara">Ampara</option>
                     <option value="Badulla">Badulla</option>
                     <option value="Hambantota">Hambantota</option>
                     <option value="Matara">Matara</option>
                     <option value="Galle">Galle</option>
             </select>
             <div class="invalid-feedback">
              Please select your city.
            </div>
        </div>
        
        <div><br></div>
        
        <div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Email*</label>
            <input type="email" name="userEmail" class="form-control" id="validationCustom01" required="" placeholder="raveenb@***.com">
              <div class="invalid-feedback">
               Please enter your email <b>e.g: raveenb@***.com</b>
           	  </div>
        </div>
        
        <div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Phone No*</label>
            <input type="text" name="userPhone" class="form-control" id="validationCustom01" required="" maxlength="10" placeholder="07********">
              <div class="invalid-feedback">
               Please enter your phone number <b>e.g: 07********</b>
           	  </div>
        </div>
		
		<div><br></div>
		
		<!-- Password Note -->
		<div class="alert alert-primary" role="alert">
  			<strong>Your password should have:</strong>
  			<ul>
  				<li>At least <b>8 characters</b>-the more characters, the better.</li>
  				<li>A mixture of both <b>upper case</b> and <b>lower case</b> letters.</li>
  				<li>A mixture of <b>letters</b> and <b>numbers.</b></li>
  				<li>Inclusion of at least one <b>special character (#,@,!)</b></li>
  			</ul>
		</div>
		<!-- Password Note -->
		
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Password*</label>
            <input type="password" name="userPassword" class="form-control" id="validationCustom01" required="">
              <div class="invalid-feedback">
               Please enter a valid password <b>e.g: Hel!0World1</b>
           	  </div>
        </div>
        
        <div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Confirm Password*</label>
            <input type="password" name="userConfirmPassword" class="form-control" id="validationCustom01">
              <div class="invalid-feedback">
               Please confirm the password here
           	  </div>
        </div>
        
        <div><br></div>
        
        <button style="width: 200px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 1px; background-color: red; border-color: red; font-size: 16px;" type="reset" class="btn btn-primary btn-sm">Clear All</button>         
        <button style="width: 500px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 15px; background-color: #2171ff; border-color: #2171ff; font-size: 17px;"  type="submit" class="btn btn-secondary btn-sm">Sign Up </button>
        
	</form>
	</div><!--containerform-->
	<!-- Sign up form -->
	
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
			    Â© 2021 Copyright:
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
     <script type="text/javascript">
     
	     function validatePassword(){
	     	var pw = document.insertForm.userPassword.value;
	     	var cpw = document.insertForm.userConfirmPassword.value;
	     	if(pw.length<8){
	     		alert("Error: Password must be at least 8 characters long!");
	     		return false;
	     	}
	     	if(pw!=cpw){
	     		alert("Error: Password did not match! Try again!");
	     		return false;
	     	}
	     	re = /[0-9]/;
	        if(!re.test(insertForm.userPassword.value)) {
	          alert("Error: password must contain at least one number (0-9)!");
	          insertForm.userPassword.focus();
	          return false;
	        }
	        re = /[a-z]/;
	        if(!re.test(insertForm.userPassword.value)) {
	          alert("Error: password must contain at least one lowercase letter (a-z)!");
	          insertForm.userPassword.focus();
	          return false;
	        }
	        re = /[A-Z]/;
	        if(!re.test(insertForm.userPassword.value)) {
	          alert("Error: password must contain at least one uppercase letter (A-Z)!");
	          insertForm.userPassword.focus();
	          return false;
	        }
	        //re =/!@#$%^&*]/;
	        //if(!re.test(insertForm.userPassword.value)) {
		      //alert("Error: password must contain at least one special character (!, @ , # , $ , % , ^ , & , *)!");
		      //insertForm.userPassword.focus();
		      //return false;
		    //}
	     }
     </script>
     

</body>
</html>