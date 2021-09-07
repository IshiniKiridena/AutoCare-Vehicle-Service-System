package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleInsertServlet
 */
@WebServlet("/VehicleInsertServlet")
public class VehicleInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//getting data from jsp
		String userID = request.getParameter("userID");
		String vehicleNo = request.getParameter("vehicleNo");
		String vehicleYear = request.getParameter("vehicleYear");
		String vehicleMake = request.getParameter("vehicleMake");
		String vehicleModel = request.getParameter("vehicleModel");
		String vehicleMileage = request.getParameter("vehicleMileage");
		String vehicleFuel = request.getParameter("vehicleFuel");
		String vehicleTransmission = request.getParameter("vehicleTransmission");
		String vehicleTechnology = request.getParameter("vehicleTechnology");
		
		//converted inputs
		int convertedUID = Integer.parseInt(userID);
		float convertedMileage = Float.parseFloat(vehicleMileage);
		
		boolean isInserted;
		
		//calling insert method
		isInserted = CustomerDBUtil.insertVehicle(vehicleNo, vehicleYear, convertedMileage, vehicleModel, vehicleMake, vehicleFuel, vehicleTransmission, vehicleTechnology, convertedUID);
		
		//checking for success
		if(isInserted == true) {
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
