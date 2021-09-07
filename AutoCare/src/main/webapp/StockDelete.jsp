<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%
String partNo = request.getParameter("partNo");
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare","root","0755");
	Statement stmt = con.createStatement();
	
	int rs = stmt.executeUpdate("delete from autocare.stock where partNo='"+partNo+"'");
	
	if(rs>0){
		
		request.setAttribute("credential_success","Record successfully deleted from the system!");
		RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
		dis.forward(request, response);
	}else{
		
		request.setAttribute("credential_error","Failed to delete record from the system!");
		RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
		dis.forward(request, response);
	}
	
}catch(Exception e){
	e.printStackTrace();
	System.out.println("Record doesn't delete.");
}
%>