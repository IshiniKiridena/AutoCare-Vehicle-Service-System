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
<title>Vehicle Registration</title>
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
	       
	       	
		<% 
			String userID = request.getParameter("userID");
		%>

	
	<div class="containerform" style="width:800px;"> <!--containerform-->
	
	<!-- Vehicle register form -->
	
	<h2 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Register My Vehicle</h2>
    <p style="color: lightcoral; text-align: center;"  class="animate__animated animate__zoomIn">Please enter your vehicle details</p>
	
	<form action="VehicleInsertServlet" method="post" class="row needs-validation" novalidate>
		
		<div class="col-md-6" style="width: 700px;">
            <label for="validationCustom01" class="form-label">User ID</label>
            <input type="text" name="userID" value="<%= userID %>" class="form-control" id="validationCustom01" readonly="readonly">
        </div>
		
		<div><br></div>
	
		<div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Vehicle No*</label>
            <input type="text" name="vehicleNo" class="form-control" id="validationCustom01" required="" maxlength="6" placeholder="QL9904">
              <div class="invalid-feedback">
               Please enter your vehicle number <b>e.g: QL9904</b>
           	  </div>
        </div>
        
        <div class="col-12" style="width: 350px;">
            <label for="inputAddress" class="form-label">Manufacture Year*</label>
             <select name="vehicleYear" id="vehicleYear" class="form-select" required="">
	             <option selected diabled value>Choose...</option>
	              	<option value="1940">1940</option>
				    <option value="1941">1941</option>
				    <option value="1942">1942</option>
				    <option value="1943">1943</option>
				    <option value="1944">1944</option>
				    <option value="1945">1945</option>
				    <option value="1946">1946</option>
				    <option value="1947">1947</option>
				    <option value="1948">1948</option>
				    <option value="1949">1949</option>
				    <option value="1950">1950</option>
				    <option value="1951">1951</option>
				    <option value="1952">1952</option>
				    <option value="1953">1953</option>
				    <option value="1954">1954</option>
				    <option value="1955">1955</option>
				    <option value="1956">1956</option>
				    <option value="1957">1957</option>
				    <option value="1958">1958</option>
				    <option value="1959">1959</option>
				    <option value="1960">1960</option>
				    <option value="1961">1961</option>
				    <option value="1962">1962</option>
				    <option value="1963">1963</option>
				    <option value="1964">1964</option>
				    <option value="1965">1965</option>
				    <option value="1966">1966</option>
				    <option value="1967">1967</option>
				    <option value="1968">1968</option>
				    <option value="1969">1969</option>
				    <option value="1970">1970</option>
				    <option value="1971">1971</option>
				    <option value="1972">1972</option>
				    <option value="1973">1973</option>
				    <option value="1974">1974</option>
				    <option value="1975">1975</option>
				    <option value="1976">1976</option>
				    <option value="1977">1977</option>
				    <option value="1978">1978</option>
				    <option value="1979">1979</option>
				    <option value="1980">1980</option>
				    <option value="1981">1981</option>
				    <option value="1982">1982</option>
				    <option value="1983">1983</option>
				    <option value="1984">1984</option>
				    <option value="1985">1985</option>
				    <option value="1986">1986</option>
				    <option value="1987">1987</option>
				    <option value="1988">1988</option>
				    <option value="1989">1989</option>
				    <option value="1990">1990</option>
				    <option value="1991">1991</option>
				    <option value="1992">1992</option>
				    <option value="1993">1993</option>
				    <option value="1994">1994</option>
				    <option value="1995">1995</option>
				    <option value="1996">1996</option>
				    <option value="1997">1997</option>
				    <option value="1998">1998</option>
				    <option value="1999">1999</option>
				    <option value="2000">2000</option>
				    <option value="2001">2001</option>
				    <option value="2002">2002</option>
				    <option value="2003">2003</option>
				    <option value="2004">2004</option>
				    <option value="2005">2005</option>
				    <option value="2006">2006</option>
				    <option value="2007">2007</option>
				    <option value="2008">2008</option>
				    <option value="2009">2009</option>
				    <option value="2010">2010</option>
				    <option value="2011">2011</option>
				    <option value="2012">2012</option>
				    <option value="2013">2013</option>
				    <option value="2014">2014</option>
				    <option value="2015">2015</option>
				    <option value="2016">2016</option>
				    <option value="2017">2017</option>
				    <option value="2018">2018</option>
				    <option value="2019">2019</option>
				    <option value="2020">2020</option>
				    <option value="2021">2021</option>
             </select>
             <div class="invalid-feedback">
              Please select the manufacture year of your vehicle
            </div>
        </div>
        
        <div><br></div>
        
        <div class="col-12" style="width: 350px;">
            <label for="inputAddress" class="form-label">Make*</label>
             <select name="vehicleMake" id="vehicleMake" class="form-select" required="">
	             <option selected diabled value>Choose...</option>
				  <option value="Acura">Acura: Honda Motor Company</option>
				  <option value="Alfa Romeo">Alfa Romeo: Stellantis</option>
				  <option value="Audi">Audi: Volkswagen Group</option>
				  <option value="BMW">BMW: BMW Group</option>
				  <option value="Bentley">Bentley: Volkswagen Group</option>
				  <option value="Buick">Buick: General Motors</option>
				  <option value="Cadillac">Cadillac: General Motors</option>
				  <option value="Chevrolet">Chevrolet: General Motors</option>
				  <option value="Chrysler">Chrysler: Stellantis</option>
				  <option value="Dodge">Dodge: Stellantis</option>
				  <option value="Fiat">Fiat: Stellantis</option>
				  <option value="Ford">Ford: Ford Motor Co.</option>
				  <option value="GMC">GMC: General Motors</option>
				  <option value="Genesis">Genesis: Hyundai Motor Group</option>
				  <option value="Honda">Honda: Honda Motor Co.</option>
				  <option value="Hyundai">Hyundai: Hyundai Motor Group</option>
				  <option value="Infiniti">Infiniti: Renault-Nissan-Mitsubishi Alliance</option>
				  <option value="Jaguar">Jaguar: Tata Motors</option>
				  <option value="Jeep">Jeep: Stellantis</option>
				  <option value="Kia">Kia: Hyundai Motor Group</option>
				  <option value="Land Rover">Land Rover: Tata Motors</option>
				  <option value="Lexus">Lexus: Toyota Motor Corp.</option>
				  <option value="Lincoln">Lincoln: Ford Motor Co.</option>
				  <option value="Lotus">Lotus: Zhejiang Geely Holding Group</option>
				  <option value="Maserati">Maserati: Stellantis</option>
				  <option value="Mazda">Mazda: Mazda Motor Corp.</option>
				  <option value="Mercedes-Benz">Mercedes-Benz: Daimler AG</option>
				  <option value="Mercury*">Mercury*: Ford Motor Co.</option>
				  <option value="Mini">Mini: BMW Group</option>
				  <option value="Mitsubishi">Mitsubishi: Renault-Nissan-Mitsubishi Alliance</option>
				  <option value="Nikola">Nikola: Nikola Motor Company, with a supply relationship with General Motors.</option>
				  <option value="Nissan">Nissan: Renault-Nissan-Mitsubishi Alliance</option>
				  <option value="Polestar">Polestar: Zhejiang Geely Holding Group</option>
				  <option value="Pontiac*">Pontiac*: General Motors</option>
				  <option value="Porsche">Porsche: Volkswagen Group</option>
				  <option value="Ram">Ram: Stellantis</option>
				  <option value="Rivian">Rivian: Rivian Automotive, with investments from Amazon and Ford, among others.</option>
				  <option value="Rolls-Royce">Rolls-Royce: BMW Group</option>
				  <option value="Saab">Saab: brand owned by Saab AB; assets owned by National Electric Vehicle Sweden</option>
				  <option value="Saturn*">Saturn*: General Motors</option>
				  <option value="Scion*">Scion*: Toyota Motor Corp.</option>
				  <option value="Smart">Smart: Daimler AG</option>
				  <option value="Subaru">Subaru: Subaru Corp.</option>
				  <option value="Suzuki*">Suzuki*: Suzuki Motor Corp. Owns a small stake in Toyota.</option>
				  <option value="Tesla">Tesla: Tesla Inc.</option>
				  <option value="Toyota">Toyota: Toyota Motor Corp.</option>
				  <option value="Volkswagen">Volkswagen: Volkswagen AG.</option>
				  <option value="Volvo">Volvo: Zhejiang Geely Holding Group</option>
             </select>
             <div class="invalid-feedback">
              Please select the make(brand) of your vehicle
            </div>
        </div>
        
        <div class="col-md-6" style="width: 350px;">
            <label for="validationCustom01" class="form-label">Model*</label>
            <input type="text" name="vehicleModel" class="form-control" id="validationCustom01" required="" placeholder="Prius">
              <div class="invalid-feedback">
               Please enter your vehicle model <b>e.g: Prius</b>
           	  </div>
        </div>
        
        <div><br></div>
	
		<div class="col-md-6" style="width: 700px;">
            <label for="validationCustom01" class="form-label">Mileage* (Km)</label>
            <input type="text" name="vehicleMileage" class="form-control" id="validationCustom01" required="" placeholder="23000">
              <div class="invalid-feedback">
               Please enter your vehicle's current mileage <b>e.g: 23000</b>
           	  </div>
        </div>
        
        <div><br></div>
        
        <!-- Fuel type radio group -->
        <div style="display: flex;">
        <label for="validationCustom01" class="form-label">Fuel Type* : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleFuel" id="inlineRadio1" value="Petrol" required="">
		  <label class="form-check-label" for="inlineRadio1">Petrol&nbsp;&nbsp;&nbsp;&nbsp;</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleFuel" id="inlineRadio2" value="Diesel" required="">
		  <label class="form-check-label" for="inlineRadio2">Diesel&nbsp;&nbsp;</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleFuel" id="inlineRadio3" value="Electrical" required="">
		  <label class="form-check-label" for="inlineRadio3">Electrical</label>
		</div>
		</div>
        <!-- Fuel type radio group -->
                
                
        <div><br></div>
        
        <!-- Transmission radio group -->
        <div style="display: flex;">
        <label for="validationCustom01" class="form-label">Transmission* : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleTransmission" id="inlineRadio1" value="Auto" required="">
		  <label class="form-check-label" for="inlineRadio1">Auto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleTransmission" id="inlineRadio2" value="Manual" required="">
		  <label class="form-check-label" for="inlineRadio2">Manual&nbsp;&nbsp;</label>
		</div>
		</div>
        <!-- Transmission radio group -->
        
        <div><br></div>
        
        <!-- Technology radio group -->
        <div style="display: flex;">
        <label for="validationCustom01" class="form-label">Technology* : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleTechnology" id="inlineRadio1" value="Hybrid" required="">
		  <label class="form-check-label" for="inlineRadio1">Hybrid&nbsp;&nbsp;</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="vehicleTechnology" id="inlineRadio2" value="Regular" required="">
		  <label class="form-check-label" for="inlineRadio2">Regular&nbsp;&nbsp;</label>
		</div>
		</div>
        <!-- Technology radio group -->
        
        <div><br><br><br></div>
        
        <!-- Add image -->
        <div align="center">
        	 <label for="validationCustom01" class="form-label">Upload vehicle image here(Optional)</label><br>
	        <p><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" style="display: none;"></p>
			<p><label for="file" style="cursor: pointer;" class="btn btn-primary btn-sm">Upload Image</label></p>
			<p><img id="output" width="500px" /></p>
        </div>
        <!-- Add image -->
        
        <button style="width: 200px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 1px; background-color: red; border-color: red; font-size: 16px;" type="reset" class="btn btn-primary btn-sm">Clear All</button>         
        <button style="width: 500px; height : 35px; padding-bottom: 10px; margin-top: 30px; margin-left: 15px; background-color: #2171ff; border-color: #2171ff; font-size: 17px;"  type="submit" class="btn btn-secondary btn-sm">Add Vehicle </button>
        
	</form>
	
	<!-- Vehicle register form -->
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
            
            var loadFile = function(event) {
            	var image = document.getElementById('output');
            	image.src = URL.createObjectURL(event.target.files[0]);
            };
     </script>
     
	

</body>
</html>



















