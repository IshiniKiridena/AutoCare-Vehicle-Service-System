package com.stock;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/BrandModelInsertServlet")
public class BrandModelInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean brandTrue = false,isTrue= false;
		
		String brandname = request.getParameter("brand");
		String modelname = request.getParameter("model");
		String newbrand = request.getParameter("newbrand");
		
		try {
		
			if(modelname.isEmpty()) {
				brandTrue = StockDBUtil.insertBrand(newbrand);
				
			}else {
				isTrue = StockDBUtil.insertModel(modelname, brandname);
			}
	
			if(isTrue == true || brandTrue == true) {
				
				request.setAttribute("credential_success","Record successfully added to system!");
				RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
				dis.forward(request, response);
			
			}else {
				
				request.setAttribute("credential_error","Failed to add the Record to the system!");
				RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
				dis.forward(request, response);	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
