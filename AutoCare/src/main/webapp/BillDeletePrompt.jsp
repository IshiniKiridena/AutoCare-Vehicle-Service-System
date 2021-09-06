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
String password = "1995Ruvini*";

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
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 4 Modal</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
<style>
    .bs-example{
    	margin: 20px;
    }
</style>
</head>
<body>

<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select invoiceNo from bill";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		
			<%=resultSet.getString("invoiceNo")%>
			
			
		
		
		<br>
		<br>

<div class="bs-example">
    <div id="myModal" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirmation</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Do you want to save changes to this document before closing?</p>
                    <p class="text-secondary"><small>If you don't save, your changes will be lost.</small></p>
                </div>
                <div class="modal-footer">
                
                	<a href="SearchBill.jsp">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button></a>
                    
                    <a
						href="BillDelete.jsp?invoiceNo=<%=resultSet.getString("invoiceNo")%>">
                    <button type="button" class="btn btn-primary">Delete Data</button></a>
                </div>
            </div>
        </div>
    </div>
</div>

	<%
		
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
	
		<br>
		<br>



</body>
</html>