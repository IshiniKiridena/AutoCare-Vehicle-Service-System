package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookingView")
public class BookingViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String date = request.getParameter("date");
	
	try {
		List<Booking> booking = ServiceDBUtil.Monthlyreport(date);
		
		if(booking.isEmpty()==true) {
			request.setAttribute("errorMsg", "No results found!");
			request.setAttribute("hide", "hidden");
		}else {
			request.setAttribute("hide", "none");
			request.setAttribute("displaymonth", date);		
		}
		request.setAttribute("booking", booking);
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	RequestDispatcher dis = request.getRequestDispatcher("bookingReport.jsp");
	dis.forward(request, response);
	
	}

}
