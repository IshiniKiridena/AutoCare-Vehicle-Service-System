package com.bills;

public class Bill {
	private int invoiceNo;
	private String cus_fname;
	private String cus_lname;
	private String billing_date;
	private String service_name;
	private String partId;
	private int quantity;
	private Float service_charge;
	private float total_bill;
	
	
	
	
	
	


	public Bill(int invoiceNo, String cus_fname, String cus_lname, String billing_date, String service_name,
			String partId, int quantity, Float service_charge, float total_bill) {
		super();
		this.invoiceNo = invoiceNo;
		this.cus_fname = cus_fname;
		this.cus_lname = cus_lname;
		this.billing_date = billing_date;
		this.service_name = service_name;
		this.partId = partId;
		this.quantity = quantity;
		this.service_charge = service_charge;
		this.total_bill = total_bill;
	}








	public int getInvoiceNo() {
		return invoiceNo;
	}








	public String getCus_fname() {
		return cus_fname;
	}








	public String getCus_lname() {
		return cus_lname;
	}








	public String getBilling_date() {
		return billing_date;
	}








	public String getService_name() {
		return service_name;
	}








	public String getPartId() {
		return partId;
	}








	public int getQuantity() {
		return quantity;
	}








	public Float getService_charge() {
		return service_charge;
	}








	public float getTotal_bill() {
		return total_bill;
	}








	public void setInvoiceNo(int invoiceNo) {
		this.invoiceNo = invoiceNo;
	}








	public void setCus_fname(String cus_fname) {
		this.cus_fname = cus_fname;
	}








	public void setCus_lname(String cus_lname) {
		this.cus_lname = cus_lname;
	}








	public void setBilling_date(String billing_date) {
		this.billing_date = billing_date;
	}








	public void setService_name(String service_name) {
		this.service_name = service_name;
	}








	public void setPartId(String partId) {
		this.partId = partId;
	}








	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}








	public void setService_charge(Float service_charge) {
		this.service_charge = service_charge;
	}








	public void setTotal_bill(float total_bill) {
		this.total_bill = total_bill;
	}




	
	
	
	
	
	
	
}
