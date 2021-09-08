package com.bills;

public class BillPrice {
	private Float serviceAmountFloat;
	private Float itemPrice;
	
	public BillPrice(Float serviceAmountFloat, Float itemPrice) {
		super();
		this.serviceAmountFloat = serviceAmountFloat;
		this.itemPrice = itemPrice;
	}
	
	

	public BillPrice(Float serviceAmountFloat) {
		super();
		this.serviceAmountFloat = serviceAmountFloat;
	}



	public Float getServiceAmountFloat() {
		return serviceAmountFloat;
	}

	public Float getItemPrice() {
		return itemPrice;
	}

	
	
	
	

}
