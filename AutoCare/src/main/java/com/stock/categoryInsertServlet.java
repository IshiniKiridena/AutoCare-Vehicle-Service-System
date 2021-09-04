package com.stock;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/categoryInsertServlet")
public class categoryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue;
		
		String categoryname = request.getParameter("category");
		
		try {
			
			isTrue =  StockDBUtil.insertCategory(categoryname);
			
			if(isTrue == true) {
				
				request.setAttribute("credential_success","Category successfully added to system!");
				RequestDispatcher dis = request.getRequestDispatcher("StockView.jsp");
				dis.forward(request, response);
				
			}else {
				
				request.setAttribute("credential_error","Failed to add the category to the system!");
				RequestDispatcher dis2 = request.getRequestDispatcher("StockView.jsp");
				dis2.forward(request, response);
				
			}
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
