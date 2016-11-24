package com.shopping.models;

import java.util.List;

public class Order {
	private String OrderNumber;
	private String userAccount;
	private int address;
	private double totalPrice;
	private String isCancel;
	private String status;
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
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getIsCancel() {
		return isCancel;
	}
	public void setIsCancel(String isCancel) {
		this.isCancel = isCancel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public String getSeller() {
		return Seller;
	}
	public void setSeller(String seller) {
		Seller = seller;
	}
	public List<ShoesOrder> getShoesOrderList() {
		return ShoesOrderList;
	}
	public void setShoesOrderList(List<ShoesOrder> shoesOrderList) {
		ShoesOrderList = shoesOrderList;
	}
	
	public Order(){
		
	}
	
	public Order(String orderNumber, String userAccount, int address,
			double totalPrice, String isCancel, String status,
			String ordertime, String paytime, String sendtime,
			String receivetime, String seller) {
		super();
		OrderNumber = orderNumber;
		this.userAccount = userAccount;
		this.address = address;
		this.totalPrice = totalPrice;
		this.isCancel = isCancel;
		this.status = status;
		Ordertime = ordertime;
		Paytime = paytime;
		Sendtime = sendtime;
		Receivetime = receivetime;
		Seller = seller;
	}
}
