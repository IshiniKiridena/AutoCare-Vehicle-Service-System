package com.customer;

public class Customer {
	private int userID;
	private String fName;
	private String lName;
	private String nic;
	private String houseNo;
	private String street;
	private String town;
	private String email;
	private String phoneNo;
	private String password;
	
	//overloaded constructor
	public Customer(int userID, String fName, String lName, String nic, String houseNo, String street, String town,
			String email, String phoneNo, String password) {
		super();
		this.userID = userID;
		this.fName = fName;
		this.lName = lName;
		this.nic = nic;
		this.houseNo = houseNo;
		this.street = street;
		this.town = town;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
	}

	//getters to get values
	public int getUserID() {
		return userID;
	}

	public String getfName() {
		return fName;
	}

	public String getlName() {
		return lName;
	}

	public String getNic() {
		return nic;
	}

	public String getHouseNo() {
		return houseNo;
	}

	public String getStreet() {
		return street;
	}

	public String getTown() {
		return town;
	}

	public String getEmail() {
		return email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}

}
