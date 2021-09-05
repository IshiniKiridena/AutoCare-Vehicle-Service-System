package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerDeleteServlet
 */
@WebServlet("/CustomerDeleteServlet")
public class CustomerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//get userID from jsp
		String userID = request.getParameter("userID");
		int convertedUID = Integer.parseInt(userID);
	
		boolean isDeleted;
		
		//calling delete method
		isDeleted = CustomerDBUtil.deleteCustomer(convertedUID);
		
		//checking if deleted
		if(isDeleted == true) {
			
			//redirect to sign up page
			RequestDispatcher dis = request.getRequestDispatcher("CustomerInsert.jsp");
			dis.forward(request, response);
		}
		else {
			
			//redirect to userAccount
			RequestDispatcher disUnsuc = request.getRequestDispatcher("Unsuccess.jsp");
			disUnsuc.forward(request, response);
		}
	}

}
