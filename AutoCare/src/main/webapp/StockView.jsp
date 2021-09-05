<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
/*String id = request.getParameter("userid");*/
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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="form2.css">
<link rel="stylesheet" type="text/css" href="styles/Categoryinsertstyle.css">
<link rel="stylesheet" type="text/css" href="styles/Boostrapstyle.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Stock</title>
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
 
 .btnstl{
 	display: block;
 	height: 30px;
 	width: 100px;
 	background: blue;
 	
 	margin: auto;
 	
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
    	<nav class="navbar navbar-expand-sm bg-dark navbar-dark dispblay-flx"> <button class="navbar-toggler" type="button" data-target="#navigation"> <span class="navbar-toggler-icon"></span> </button>		
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
		 		
		<div class="searchbar-align">
			<div class="search">
				<div>
					<div>
						<input type="text" name="" id="userInput" placeholder="Search here..." onkeyup="searchFun()" >
				
				</div>	
				<div>
					<i class="fas fa-search"></i>
				</div>			
			  </div>
			</div>
		</div>
	</nav>
 </div>

<div class="containerformstock">
      <h2 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Service Parts</h2>
      <p style="color: lightcoral; text-align: center;"  class="animate__animated animate__zoomIn"></p>

	<div>
		<div>
			<div name="credential_success" id ="credential_success" class="credential_success"> ${credential_success}</div>
		</div>
		<div>
			<div name="credential_error" id ="credential_error" class="credential_error"> ${credential_error}</div>
		</div>
	</div>
	
	
								
	
	<table border="1" id="myTable" class="table table-striped oddeven">
		<thead>
			<tr>
				<th scope="col">Part Code</th>
				<th scope="col">Brand</th>
				<th scope="col">Model</th>
				<th scope="col">Category</th>
				<th scope="col">Country</th>
				<th scope="col">Unit Price</th>
				<th scope="col">Warranty</th>
				<th scope="col">Quantity</th>
				<th scope="col">Updated Date</th>
				<th></th>
				<th></th>
	
			</tr>
		<thead>
		<tbody>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from autocare.stock";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			
			<tr>
			
				<td scope="row"><%=resultSet.getString("partNo")%></td>
				<td><%=resultSet.getString("brand_name")%> </td>
				<td><%=resultSet.getString("model_name")%></td>
				<td><%=resultSet.getString("category_name")%></td>
				<td><%=resultSet.getString("country")%></td>
				<td><%=resultSet.getString("unitPrice")%></td>
				<td><%=resultSet.getString("warrenty")%></td>
				<td><%=resultSet.getString("quantity")%></td>
				<td><%=resultSet.getString("date")%></td>
				
				
				<td><a href="StockQuantityUpdate.jsp?partNo=<%=resultSet.getString("partNo")%>&quantity=<%=resultSet.getString("quantity")%>"><button 
							class="btn btn-primary">
							Update
						</button></a></td>
				<td>
				
					<!-- Button trigger modal -->
					<a class="btn btn-danger" data-toggle="modal" data-target="#exampleModal-<%=resultSet.getString("partNo")%>">Delete</a>
 					 	
					
								
					<!-- Modal -->
					<div class="modal fade" id="exampleModal-<%=resultSet.getString("partNo")%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Are you sure?</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        Do you really want to delete <%=resultSet.getString("partNo")%> record?
					        This process cannot be undone.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					        <a href="StockDelete.jsp?partNo=<%=resultSet.getString("partNo")%>"><button type="button" class="btn btn-danger">Yes,delete it!</button></a>
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

<script>
	const searchFun = () =>{
		console.log(12);
		let filter = document.getElementById("userInput").value.toUpperCase();
		let myTable = document.getElementById("myTable");
		let tr = myTable.getElementsByTagName("tr");
		
		for(var i = 0; i < tr.length; i++){
			
			let td = tr[i].getElementsByTagName("td")[0];
			
			if(td){
				let textvalue = td.textContent || td.innerHTML;
				
				if(textvalue.toUpperCase().indexOf(filter) > -1){
					tr[i].style.display = "";
				} else {
		            tr[i].style.display = "none";
		        }
			}
			
		}
	}
	

</script>

<!-- Time Out Script -->

<script type="text/javascript">
setTimeout(function() {
    $('#credential_success').fadeOut('fast');
}, 5000)

</script>

<script type="text/javascript">
setTimeout(function() {
    $('#credential_error').fadeOut('fast');
}, 5000)

</script>

</body>
</html>