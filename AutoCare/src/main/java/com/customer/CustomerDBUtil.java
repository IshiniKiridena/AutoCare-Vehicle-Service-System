package com.customer;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/*
	 * User methods
	 * */
	
	//user validation method
	public static boolean validateCustomer(String eMail, String passWord){
		
		try {
			
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from customer where email='"+eMail+"' and password='"+passWord+"'";
			//execute query
			rs = stmt.executeQuery(sql);
			
			//checking if there is an entry
			if(rs.next())
				isSuccess = true;
			else
				isSuccess = false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

	//user insert method
	public static boolean insertCustomer(String fname, String lname, String nic, String houseNo, String street, String town, String email, String phoneNo, String password) {
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//insert query
			String sql = "insert into customer values (0,'"+fname+"','"+lname+"','"+nic+"','"+houseNo+"','"+street+"','"+town+"','"+email+"','"+phoneNo+"','"+password+"')";
			//execute query
			int rs= stmt.executeUpdate(sql);
		
			//checking if the data is entered
			if(rs > 0)
				isSuccess = true;
			else
				isSuccess = false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//getAccountDetails method
	public static List<Customer> getAccountDetails(String NIC){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//select query
			String sql = "select * from customer where nic = '"+NIC+"'";
			//execute query
			rs = stmt.executeQuery(sql);
			
			//checking for valid data
			if(rs.next()) {
				//get data
				int userID = rs.getInt(1);
				String fName = rs.getString(2);
				String lName = rs.getString(3);
				String nic = rs.getString(4);
				String houseNo = rs.getString(5);
				String street = rs.getString(6);
				String town = rs.getString(7);
				String email = rs.getString(8);
				String phoneNo = rs.getString(9);
				String password = rs.getString(10);
				
				//customer object
				Customer c = new Customer(userID, fName, lName, nic, houseNo, street, town, email, phoneNo, password);
				//adding customer object to ArrayList
				cus.add(c);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return cus;
		
	}
	
	//update method
	public static boolean updateCustomer(int userID, String fname,String lname, String nic, String houseNo, String street, String town, String email, String phoneNo) {
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "update customer "
					+ "set fname='"+fname+"',lname='"+lname+"',nic='"+nic+"',house_no='"+houseNo+"',street='"+street+"',town='"+town+"',email='"+email+"',phone_no='"+phoneNo+"' "
							+ "where userID='"+userID+"'";
			//execute query
			int rs =stmt.executeUpdate(sql);
			
			//checking if data updated
			if(rs>0)
				isSuccess = true;
			else
				isSuccess = false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	//delete method
	public static boolean deleteCustomer(int userID) {
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//calling stored procedure
			CallableStatement stCall = con.prepareCall("{call DeleteUserWithBookingsAndVehicles(?)}");
			
			//passing values to the procedure INs
			stCall.setInt(1, userID);
			
			//executing the procedure
			boolean done = stCall.execute();
			stCall.close();
			
			//checking if data deleted
			if(done == false)
				isSuccess = true;
			else
				isSuccess = false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//getAccountDetails method
	public static List<Customer> getAccountDetailsEmail(String userEmail){
			
		ArrayList<Customer> cus = new ArrayList<>();
			
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
				
			//select query
			String sql = "select * from customer where email = '"+userEmail+"'";
			//execute query
			rs = stmt.executeQuery(sql);
				
			//checking for valid data
			if(rs.next()) {
				//get data
				int userID = rs.getInt(1);
				String fName = rs.getString(2);
				String lName = rs.getString(3);
				String nic = rs.getString(4);
				String houseNo = rs.getString(5);
				String street = rs.getString(6);
				String town = rs.getString(7);
				String email = rs.getString(8);
				String phoneNo = rs.getString(9);
				String password = rs.getString(10);
					
				//customer object
				Customer c = new Customer(userID, fName, lName, nic, houseNo, street, town, email, phoneNo, password);
				//adding customer object to ArrayList
				cus.add(c);
			}
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
			return cus;
			
		}
		
	/*
	* Vehicle methods
	* */
	

	//vehicle insert method
	public static boolean insertVehicle(String vehicle_no, String manufacture_year, float mileage, String model, String make, String fuel_type, String transmission, String technology, int userID) {
			
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
				
			//insert query
			String sql = "insert into vehicle values (0,'"+vehicle_no+"','"+manufacture_year+"','"+mileage+"','"+model+"','"+make+"','"+fuel_type+"','"+transmission+"','"+technology+"','"+userID+"')";
			//execute query
			int rs= stmt.executeUpdate(sql);
			
			//checking if the data is entered
			if(rs > 0)
				isSuccess = true;
			else
				isSuccess = false;
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
		return isSuccess;
	}
		
	//vehicle update method
	public static boolean updateVehicle(String vehicle_no, float mileage) {
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "update vehicle set mileage='"+mileage+"' where vehicle_no='"+vehicle_no+"'";
			//execute query
			int rs =stmt.executeUpdate(sql);
			
			//checking if data updated
			if(rs>0)
				isSuccess = true;
			else
				isSuccess = false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	//vehicle delete
	public static boolean deleteVehicle(String vehicle_no) {
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//calling stored procedure
			CallableStatement stCall = con.prepareCall("{call DeleteVehicleWithBookings(?)}");
			
			//passing values to the procedure INs
			stCall.setString(1, vehicle_no);
			
			//executing the procedure
			boolean done = stCall.execute();
			stCall.close();
			
			//checking if data deleted
			if(done == true)
				isSuccess = true;
			else
				isSuccess = false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}























