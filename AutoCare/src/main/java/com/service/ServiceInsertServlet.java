package com.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServiceInsert")
public class ServiceInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String serviceType = request.getParameter("servicename");
		String serviceDescription = request.getParameter("description");
		String amount = request.getParameter("price");	
		
		boolean isTrue;
		
		isTrue = ServiceDBUtil.insertService(serviceType, serviceDescription, amount);
		
		if(isTrue==true) {
			request.setAttribute("credential_success","Successfully Inserted!");
			RequestDispatcher dis = request.getRequestDispatcher("serviceViewAdmin.jsp");
			dis.forward(request, response);
		}else {
			request.setAttribute("credential_error","Insert Unsuccessful! Try Again");
			RequestDispatcher dis2 = request.getRequestDispatcher("serviceInsert.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
