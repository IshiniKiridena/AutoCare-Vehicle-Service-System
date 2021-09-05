package com.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServiceUpdateServlet")
public class ServiceUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String serviceid = request.getParameter("serviceID");
		String servicetype = request.getParameter("servicename");
		String description = request.getParameter("description");
		String amount = request.getParameter("price");
		
		boolean isTrue;
		isTrue=ServiceDBUtil.updateService(serviceid, servicetype, description, amount);
		
		if(isTrue==true) {
			request.setAttribute("credential_success","Successfully Updated!");
			RequestDispatcher dis = request.getRequestDispatcher("serviceViewAdmin.jsp");
			dis.forward(request, response);
		}else {
			request.setAttribute("credential_error","Update Unsuccessful! Try Again");
			RequestDispatcher dis = request.getRequestDispatcher("serviceUpdate.jsp");
			dis.forward(request, response);
		}
	}

}
