package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleUpdateServlet
 */
@WebServlet("/VehicleUpdateServlet")
public class VehicleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//getting data from jsp
		String vehicleNo = request.getParameter("vehicleNo");
		String vehicleMileage = request.getParameter("vehicleMileage");
		boolean isUpdated;
		
		//converted inputs
		float convertedMileage = Float.parseFloat(vehicleMileage);
	
		//calling method
		isUpdated = CustomerDBUtil.updateVehicle(vehicleNo, convertedMileage);
		
		//checking for success
		if(isUpdated == true) {
			//go to success page
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		}
		else {
			//redirect to unsuccess page
			RequestDispatcher disUnsuc = request.getRequestDispatcher("Unsuccess.jsp");
			disUnsuc.forward(request, response);
		}
	}

}
