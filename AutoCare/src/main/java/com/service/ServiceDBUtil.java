package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ServiceDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSuccess;
	
	public static boolean insertService(String serviceType, String serviceDescription, String amount) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into service values(0,'"+serviceType+"','"+serviceDescription+"','"+amount+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else
				isSuccess=false;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateService(String serviceid,String servicetype,String description,String amount) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update service set service_type='"+servicetype+"',description='"+description+"',amount='"+amount+"'"
					+"where serviceID='"+serviceid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess=true;
			else
				isSuccess=false;
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean addBooking(String time, String date, String userID, String serviceID, String vehicleID) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into booking values(0,'"+time+"','"+date+"','"+userID+"','"+serviceID+"', '"+vehicleID+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else
				isSuccess=false;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Booking> Monthlyreport(String date) {
        
        ArrayList<Booking> booking = new ArrayList<>();
        
        
        try {
            
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM autocare.viewbookings WHERE date LIKE '"+date+"%'";
            rs = stmt.executeQuery(sql);
            
            
            while(rs.next()) {

                int bookID = rs.getInt("bookID");
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String vehicle_no = rs.getString("vehicle_no");
                String service_type = rs.getString("service_type");
                float amount = rs.getFloat("amount");
                String rdate = rs.getString("date");
                String time = rs.getString("time");
                
                Booking handler = new Booking(bookID,fname,lname,vehicle_no,service_type,amount,rdate,time);
                booking.add(handler);
                
                System.out.print(date);           
                }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return booking; 
    }
}
