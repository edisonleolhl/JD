package com.shopping.models;

public class Address {

	private int addressId;
	private String userAccount;
	private String province;
	private String city;
	private String area;
	private String reName;
	private String phone;

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getReName() {
		return reName;
	}

	public void setReName(String reName) {
		this.reName = reName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", userAccount="
				+ userAccount + ", province=" + province + ", city=" + city
				+ ", area=" + area + ", reName=" + reName + ", phone=" + phone
				+ "]";
	}
}
