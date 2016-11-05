package com.shopping.models;

public class ShoesOrder {
	private int id;
	private String OrderNumber;
	private String UserAccount;
	private int ShoesId;
	private String ShoesName;
	private double ShoesPrice;
	private String ShoesColor;
	private String Seller;
	private String Simg;
	private int Amount;
	private int Size;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public int getShoesId() {
		return ShoesId;
	}
	public void setShoesId(int shoesId) {
		ShoesId = shoesId;
	}
	public String getShoesName() {
		return ShoesName;
	}
	public void setShoesName(String shoesName) {
		ShoesName = shoesName;
	}
	public double getShoesPrice() {
		return ShoesPrice;
	}
	public void setShoesPrice(double shoesPrice) {
		ShoesPrice = shoesPrice;
	}
	public String getShoesColor() {
		return ShoesColor;
	}
	public void setShoesColor(String shoesColor) {
		ShoesColor = shoesColor;
	}
	public String getSeller() {
		return Seller;
	}
	public void setSeller(String seller) {
		Seller = seller;
	}
	public String getSimg() {
		return Simg;
	}
	public void setSimg(String simg) {
		Simg = simg;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public int getSize() {
		return Size;
	}
	public void setSize(int size) {
		Size = size;
	}
	public ShoesOrder(){
		super();
	}
	public ShoesOrder(String orderNumber, String userAccount, int shoesId,
			String shoesName, double shoesPrice, String shoesColor,
			String seller, String simg, int amount, int size) {
		super();
		OrderNumber = orderNumber;
		UserAccount = userAccount;
		ShoesId = shoesId;
		ShoesName = shoesName;
		ShoesPrice = shoesPrice;
		ShoesColor = shoesColor;
		Seller = seller;
		Simg = simg;
		Amount = amount;
		Size = size;
	}
	
}
