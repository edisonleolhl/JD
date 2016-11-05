package com.shopping.models;



public class User {
	private int UserId;
	private String Userpwd;
	private String account;
	private String sex;
	private String registime;
	private String birth;
	private String phone;
	private String Userimg;
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserpwd() {
		return Userpwd;
	}
	public void setUserpwd(String userpwd) {
		Userpwd = userpwd;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getRegistime() {
		return registime;
	}
	public void setRegistime(String registime) {
		this.registime = registime;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUserimg() {
		return Userimg;
	}
	public void setUserimg(String userimg) {
		Userimg = userimg;
	}

}
