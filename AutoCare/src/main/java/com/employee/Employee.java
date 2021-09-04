package com.employee;

public class Employee {

	private int empID;
	private String name;
	private String email;
	private String password;
	private String position;
	
	//overloaded constructor
	public Employee(int empID, String name, String email, String password, String position) {
		super();
		this.empID = empID;
		this.name = name;
		this.email = email;
		this.password = password;
		this.position = position;
	}

	
	//getters
	public int getEmpID() {
		return empID;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getPosition() {
		return position;
	}
	
	
	
	
}
