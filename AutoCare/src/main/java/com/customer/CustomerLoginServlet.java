package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.Employee;
import com.employee.EmployeeDBUtil;

/**
 * Servlet implementation class CustomerLoginServlet
 */
@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//js
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//getting variables from jsp
		String userEmail = request.getParameter("userEmail");
		String userPassword = request.getParameter("userPW");
		
		boolean isExists;
		
		//calling validate method
		isExists = CustomerDBUtil.validateCustomer(userEmail, userPassword);
		
		//checking for validation
		if(isExists == true) {
			List<Customer> cusDetails = CustomerDBUtil.getAccountDetailsEmail(userEmail);
			request.setAttribute("cusDetails", cusDetails);
			
			//redirect to the account page with this data
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
		else {
			//display error message
			out.println("<script type='text/javascript'>");
			out.println("alert('Your email or password is incorrect');");
			out.println("location='CustomerLogin.jsp'");
			out.println("</script>");
		}
		
		
	}

}
