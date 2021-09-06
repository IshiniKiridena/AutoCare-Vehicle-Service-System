package com.stock;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateQuantityServlet")
public class UpdateQuantityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue = false;
		
		String partNo = request.getParameter("partNo");
		int newqty = Integer.parseInt(request.getParameter("newquantity"));
		String date = request.getParameter("newdate");
		int prevquantity = Integer.parseInt(request.getParameter("prevquantity"));
	
		try {
			
			isTrue = StockDBUtil.updateQuantity(partNo, newqty, date, prevquantity);
			
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
			// TODO: handle exception
		}
		
		
	
	}

}
