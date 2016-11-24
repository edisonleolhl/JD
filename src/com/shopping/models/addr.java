package com.shopping.models;

public class addr {
	private int cid;
	private String city;
	private int area;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	@Override
	public String toString() {
		return "addr [cid=" + cid + ", city=" + city + ", area=" + area + "]";
	}
	
	
}
