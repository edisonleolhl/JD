package com.shopping.models;

import java.util.List;

public class Order {
	private String OrderNumber;
	private String UserAccount;
	private int address;
	private double TotalPrice;
	private String Iscancel;
	private String Status;
	private String Ordertime;
	private String Paytime;
	private String Sendtime;
	private String Receivetime;
	private String Seller;
	private List<ShoesOrder> ShoesOrderList;
	
	public String getOrderNumber() {
		return OrderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		OrderNumber = orderNumber;
	}
	public String getUserAccount() {
		return UserAccount;
	}
	public void setUserAccount(String userAccount) {
		UserAccount = userAccount;
	}
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public double getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}
	
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getIscancel() {
		return Iscancel;
	}
	public void setIscancel(String iscancel) {
		Iscancel = iscancel;
	}
	public String getOrdertime() {
		return Ordertime;
	}
	public void setOrdertime(String ordertime) {
		Ordertime = ordertime;
	}
	public String getPaytime() {
		return Paytime;
	}
	public void setPaytime(String paytime) {
		Paytime = paytime;
	}
	public String getSendtime() {
		return Sendtime;
	}
	public void setSendtime(String sendtime) {
		Sendtime = sendtime;
	}
	public String getReceivetime() {
		return Receivetime;
	}
	public void setReceivetime(String receivetime) {
		Receivetime = receivetime;
	}
	public void setShoesOrderList(List<ShoesOrder> shoesorderlist ){
		ShoesOrderList = shoesorderlist;
	}
	public List<ShoesOrder> getShoesOrderList(){
		return ShoesOrderList;
	}
	
	public String getSeller() {
		return Seller;
	}
	public void setSeller(String seller) {
		Seller = seller;
	}
	public Order(){
		super();
	}
	public Order(String orderNumber, String userAccount, int address,
			double totalPrice, String iscancel, String status,
			String ordertime, String paytime, String sendtime,
			String receivetime, String seller) {
		super();
		OrderNumber = orderNumber;
		UserAccount = userAccount;
		this.address = address;
		TotalPrice = totalPrice;
		Iscancel = iscancel;
		Status = status;
		Ordertime = ordertime;
		Paytime = paytime;
		Sendtime = sendtime;
		Receivetime = receivetime;
		Seller = seller;
	}
	
	
}
