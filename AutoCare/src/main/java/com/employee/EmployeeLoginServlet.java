package com.employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeLoginServlet
 */
@WebServlet("/EmployeeLoginServlet")
public class EmployeeLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//js
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//getting the values from the jsp
		String empEmail = request.getParameter("empEmail");
		String empPW = request.getParameter("empPW");
		
		boolean isExists;
		
		//calling validate method
		isExists = EmployeeDBUtil.validateEmployee(empEmail, empPW);
		
		//checking for validation
		if(isExists == true) {
			List<Employee> empDetails = EmployeeDBUtil.getEmployee(empEmail);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("EmployeeAccount.jsp");
			dis.forward(request, response);
		}
		else {
			//display error message
			out.println("<script type='text/javascript'>");
			out.println("alert('Your email or password is incorrect');");
			out.println("location='EmployeeLogin.jsp'");
			out.println("</script>");
		}
	}

}
