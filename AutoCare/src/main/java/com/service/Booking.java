package com.service;

public class Booking {
	
	private int bookID;
	private String fname;
	private String lname;
	private String vehicle_no;
	private String service_type;
	private float amount;
	private String date;
	private String time;
	
	public Booking(int bookID, String fname, String lname, String vehicle_no, String service_type, float amount,
			String date, String time) {

		this.bookID = bookID;
		this.fname = fname;
		this.lname = lname;
		this.vehicle_no = vehicle_no;
		this.service_type = service_type;
		this.amount = amount;
		this.date = date;
		this.time = time;
	}

	public int getBookID() {
		return bookID;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getVehicle_no() {
		return vehicle_no;
	}

	public String getService_type() {
		return service_type;
	}

	public float getAmount() {
		return amount;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	
}
