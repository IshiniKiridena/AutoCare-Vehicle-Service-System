package com.service;

public class Service {

	private int serviceID;
	private String serviceType;
	private String serviceDescription;
	private float amount;
	
	public Service(int serviceID, String serviceType, String serviceDescription, float amount) {
		this.serviceID = serviceID;
		this.serviceType = serviceType;
		this.serviceDescription = serviceDescription;
		this.amount = amount;
	}

	public int getServiceID() {
		return serviceID;
	}

	public String getServiceType() {
		return serviceType;
	}

	public String getServiceDescription() {
		return serviceDescription;
	}

	public float getAmount() {
		return amount;
	}

	
	
	
}
