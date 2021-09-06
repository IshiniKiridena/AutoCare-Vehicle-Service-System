package com.stock;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAllServlet")
public class UpdateAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean isTrue = false;
		
		String partno = request.getParameter("partNo");
		String brandname = request.getParameter("brand");
		String modelname = request.getParameter("model");
		String category = request.getParameter("category");
		String country = request.getParameter("country");
		float unitprice = Float.parseFloat(request.getParameter("unitPrice"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String warranty = request.getParameter("warranty");
		String date = request.getParameter("date");
		
		try {
			
			isTrue = StockDBUtil.updateAllDetails(partno, brandname, modelname, category, country, unitprice, quantity, warranty, date);
			
			if(isTrue == true) {
				
				request.setAttribute("credential_success","Record successfully updated!");
				RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
				dis.forward(request, response);
			}else {
				request.setAttribute("credential_error","Failed to update record!");
				RequestDispatcher dis2 = request.getRequestDispatcher("StockView.jsp");
				dis2.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
