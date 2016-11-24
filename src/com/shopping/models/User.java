package com.shopping.models;

public class User {
	
	private int userId;
	private String password;
	private String userAccount;
	private String sex;
	private String registTime;
	private String birthday;
	private String phone;
	private String userImg;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getRegistTime() {
		return registTime;
	}
	public void setRegistTime(String registTime) {
		this.registTime = registTime;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", password=" + password
				+ ", userAccount=" + userAccount + ", sex=" + sex
				+ ", registTime=" + registTime + ", birthday=" + birthday
				+ ", phone=" + phone + ", userImg=" + userImg + "]";
	}

}
