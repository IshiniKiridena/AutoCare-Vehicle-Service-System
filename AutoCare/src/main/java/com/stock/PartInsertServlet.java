package com.stock;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PartInsertServlet")
public class PartInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue= false;
		
		String partno = request.getParameter("partno");
		String brandname = request.getParameter("brand");
		String modelname = request.getParameter("model");
		String category = request.getParameter("category");
		String country = request.getParameter("country");
		float unitprice = Float.parseFloat(request.getParameter("unitprice"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String warranty = request.getParameter("warranty");
		String date = request.getParameter("date");
		
		isTrue = StockDBUtil.insertPart(partno, brandname, modelname, category, country, unitprice, quantity, warranty, date);
		
		try {
			if(isTrue == true) {
				
				request.setAttribute("credential_success","Item successfully added to system!");
				RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
				dis.forward(request, response);
			
			}else {
				
				request.setAttribute("credential_error","Failed to add the item to the system!");
				RequestDispatcher dis2 = request.getRequestDispatcher("StockView.jsp");
				dis2.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
