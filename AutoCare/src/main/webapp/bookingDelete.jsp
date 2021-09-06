<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%
String bookID = request.getParameter("bookID");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare","root","qwerty");
	Statement stmt = con.createStatement();
	int rs = stmt.executeUpdate("delete from booking where bookID='"+bookID+"'");
	if(rs>0){
		request.setAttribute("credential_success","Successfully Deleted!");
		RequestDispatcher dis = request.getRequestDispatcher("bookingViewCus.jsp");
		dis.forward(request, response);
	}else{
		request.setAttribute("credential_error","Delete Unsuccessful! Try Again");
		RequestDispatcher dis = request.getRequestDispatcher("bookingViewCus.jsp");
		dis.forward(request, response);
	}
	
}catch(Exception e){
	e.printStackTrace();
	System.out.println("error");
}
%>