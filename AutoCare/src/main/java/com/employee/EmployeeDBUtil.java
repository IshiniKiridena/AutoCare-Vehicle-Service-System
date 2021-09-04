package com.employee;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.DBConnect;

public class EmployeeDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//validate method
	public static boolean validateEmployee(String email, String password) {
		
		try {
			
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from employee where email='"+email+"' and password='"+password+"'";
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
	
	//get employee details method
	public static List<Employee> getEmployee(String empEmail){
		
		ArrayList<Employee> employee = new ArrayList<Employee>();
		
		try {
			
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from employee where email='"+empEmail+"'";
			//execute qury
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int empID = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String password = rs.getString(4);
				String position = rs.getString(5);
			
				Employee emp = new Employee(empID, name, email, password, position);
				employee.add(emp);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return employee;
		
	}
}
