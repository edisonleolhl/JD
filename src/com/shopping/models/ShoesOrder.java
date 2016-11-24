package com.shopping.models;

public class ShoesOrder {
	private int id;
	private String OrderNumber;
	private String userAccount;
	private int shoesId;
	private String shoesName;
	private double shoesPrice;
	private String shoesColor;
	private String seller;
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
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public int getShoesId() {
		return shoesId;
	}
	public void setShoesId(int shoesId) {
		this.shoesId = shoesId;
	}
	public String getShoesName() {
		return shoesName;
	}
	public void setShoesName(String shoesName) {
		this.shoesName = shoesName;
	}
	public double getShoesPrice() {
		return shoesPrice;
	}
	public void setShoesPrice(double shoesPrice) {
		this.shoesPrice = shoesPrice;
	}
	public String getShoesColor() {
		return shoesColor;
	}
	public void setShoesColor(String shoesColor) {
		this.shoesColor = shoesColor;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
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
		
	}
	
	public ShoesOrder(String orderNumber, String userAccount,
			int shoesId, String shoesName, double shoesPrice,
			String shoesColor, String seller, String simg, int amount, int size) {
		super();
		OrderNumber = orderNumber;
		this.userAccount = userAccount;
		this.shoesId = shoesId;
		this.shoesName = shoesName;
		this.shoesPrice = shoesPrice;
		this.shoesColor = shoesColor;
		this.seller = seller;
		Simg = simg;
		Amount = amount;
		Size = size;
	}
	
	@Override
	public String toString() {
		return "ShoesOrder [id=" + id + ", OrderNumber=" + OrderNumber
				+ ", userAccount=" + userAccount + ", shoesId=" + shoesId
				+ ", shoesName=" + shoesName + ", shoesPrice=" + shoesPrice
				+ ", shoesColor=" + shoesColor + ", seller=" + seller
				+ ", Simg=" + Simg + ", Amount=" + Amount + ", Size=" + Size
				+ "]";
	}
}
