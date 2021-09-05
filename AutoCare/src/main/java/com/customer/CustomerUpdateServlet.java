package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerUpdateServlet
 */
@WebServlet("/CustomerUpdateServlet")
public class CustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//getting data from jsp
		String userID = request.getParameter("userID");
		int convertedUID = Integer.parseInt(userID);
		String userFName = request.getParameter("userfName");
		String userLName = request.getParameter("userlName");
		String userNIC = request.getParameter("userNIC");
		String userHouseNo = request.getParameter("userHouseNo");
		String userStreet = request.getParameter("userStreet");
		String userTown = request.getParameter("userTown");
		String userEmail = request.getParameter("userEmail");
		String userPhoneNo = request.getParameter("userPhone");
		
		boolean isUpdated;
		
		//calling update method
		isUpdated = CustomerDBUtil.updateCustomer(convertedUID, userFName, userLName, userNIC, userHouseNo, userStreet, userTown, userEmail, userPhoneNo);
		
		//checking if update is success
		if(isUpdated == true) {
			
			try {
				
				//get the account details by calling the getAccountDetails method
				List<Customer> cusDetails = CustomerDBUtil.getAccountDetails(userNIC);
				//send data to account page
				request.setAttribute("cusDetails", cusDetails);
			
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			//redirect to user account
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
		else {
			//redirect to unsuccess page
			RequestDispatcher disUnsuc = request.getRequestDispatcher("Unsuccess.jsp");
			disUnsuc.forward(request, response);
		}
		
	}

}
