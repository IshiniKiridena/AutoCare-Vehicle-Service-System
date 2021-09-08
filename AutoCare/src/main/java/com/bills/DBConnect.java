package com.bills;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConnect {
	//create DB
	private static String url = "jdbc:mysql://localhost:3306/autocare";
	private static String username = "root";
	private static String password = "1995Ruvini*";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database connection is not success");
		}
		
		return con;
		
		
	}

}
