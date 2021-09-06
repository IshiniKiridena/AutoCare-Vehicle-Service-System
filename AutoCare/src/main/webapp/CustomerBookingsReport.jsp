<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "autocare";
String userid = "root";
String password = "1234Ishini";
float total = 0;
float convertedAmount = 0;

try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        
<script src = "https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/styles.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="styles/Bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/customerStyle.css">
<meta charset="ISO-8859-1">
<title>My Bookings</title>
<style type="text/css">
body{
	background-image: url("images/cusBack.png");
	background-repeat: repeat-y;
	background-size: inherit;

}

/*table*/
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
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
				String userFName = request.getParameter("userFName");
				String userLName = request.getParameter("userLName");
	%>
	
	<div class="containerform" style="width: 1300px;"> 
	
	
    
	
	<center>
	
	<div><br></div>
	
	<!-- Search bar -->
	<p style="color: lightcoral; text-align: center;"  class="animate__animated animate__zoomIn">Search your bookings by year and month</p>
	<input type="month" name="date" onkeyup="searchFunction()" id="searchbar" placeholder="2000-01(Year-month)">
	<!-- Search bar -->
	
	<div><br></div>
	<div id="books">
		<!-- table -->
		<img src="images/logoForReport.png" width="100px" height="50px">
		<div><br></div>
		<h5 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Customer Name: <%= userFName %>  <%=userLName %></h5>
		<br>
		<h6 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Generated Date : <%= (new java.util.Date()).toLocaleString()%></h6>
		<table border="1" id="myt">
			<tr>
				<th>Service Name</th>
				<th>Booking Time</th>
				<th>Booking Date</th>
				<th>Service Amount</th>
			</tr>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from bookingreport where userID='"+userID+"'";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<tr>
				<td><%=resultSet.getString("service_name")%></td>
				<td><%=resultSet.getString("book_time")%></td>
				<td><%=resultSet.getString("book_date")%></td>
				<td><%=resultSet.getString("service_amount")%></td>
			<%
			convertedAmount = Float.parseFloat(resultSet.getString("service_amount"));
			total+=convertedAmount;
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
		<br>
		<h6 style="color : black; text-align: center;" id="insertbill" class="animate__animated animate__backInDown">Total Amount for <%= (new java.util.Date()).toLocaleString()%> : <b>Rs. <%= total %>0/=<b> </h6>
	</div>
	
	<div><br></div>
	<button onclick="printReport()" class="btn btn-primary">Download PDF</button>
	
	</center>
	
	</div><!--containerform-->
	
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
	function searchFunction() {
	    var input, filter, table, tr, td, i, txtValue;
	    input = document.getElementById("searchbar");
	    filter = input.value.toUpperCase();
	    table = document.getElementById("myt");
	    tr = table.getElementsByTagName("tr");
	    for (i = 1; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[2];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }      
	  }
	}
	</script>
	<script type="text/javascript">
	function printReport(){
	    var element = document.getElementById('books');
	    var opt = {
	      margin:       1,
	      filename:     'Bookings_Report.pdf',
	      image:        { type: 'png', quality: 0.98 },
	      html2canvas:  { scale: 2 },
	      jsPDF:        { unit: 'in', format: 'letter', orientation: 'landscape' }
	    };
	     
	    // New Promise-based usage:
	    html2pdf().from(element).set(opt).save();
	}
	</script>
	
	
</body>
</html>