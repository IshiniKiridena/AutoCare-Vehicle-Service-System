package com.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingInsertServlet")
public class BookingInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String serviceID = request.getParameter("serviceID");
		String userID = request.getParameter("userID");
		String vehicleID = request.getParameter("vehicleID");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		boolean isTrue;
		
		isTrue = ServiceDBUtil.addBooking(time, date, userID, serviceID, vehicleID);
		
		if(isTrue==true) {
			request.setAttribute("credential_success","Successfully Booked!");
			RequestDispatcher dis = request.getRequestDispatcher("bookingViewCus.jsp");
			dis.forward(request, response);
		}else {
			request.setAttribute("credential_error","Booking Unsuccessful! Try Again");
			RequestDispatcher dis = request.getRequestDispatcher("serviceViewCus.jsp");
			dis.forward(request, response);
		}
	}

}
