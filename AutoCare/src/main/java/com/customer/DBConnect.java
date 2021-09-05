package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/autocare";
	private static String username = "root";
	private static String password = "1234Ishini";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			//creating the driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//creating the db connection
			con = DriverManager.getConnection(url,username,password);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return con;
	}
}
