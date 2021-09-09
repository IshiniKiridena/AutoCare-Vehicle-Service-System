package com.bills;

import java.io.IOException;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/InsertBillServlet")
public class InsertBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fname = request.getParameter("fname"); 
		String lname = request.getParameter("lname"); 
		String sType = request.getParameter("service"); 
		String billDate = request.getParameter("date"); 
		String items = request.getParameter("items"); 
		int quantity = Integer.parseInt(request.getParameter("Quantity"));
		String charge = request.getParameter("serviceCharge"); 
		
		boolean isTrue ;
		float vehicleCharge = 300.0f;
		float NovehicleCharge = 0.0f;
	
		
		float service_price = BillDBUtil.getserviceAmount(sType);
		float item_Price = BillDBUtil.getItemsAmount(items);
		
		float total = service_price + (item_Price * quantity);
		
		if(request.getParameter("serviceCharge") != null) {
				total = total + vehicleCharge;
		}
           else{
            	
            	vehicleCharge = NovehicleCharge;
               
            }
        
		
	
		
	
		isTrue = BillDBUtil.InsertBill( fname, lname, sType, billDate, items, quantity, vehicleCharge, total);
		
		
		if(isTrue == true) {
			
			List<Bill> billdetails = BillDBUtil.getBill();
			request.setAttribute("billdetails" , billdetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("BillDisplay.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("BillUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
