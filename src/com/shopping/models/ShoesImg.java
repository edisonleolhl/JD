package com.shopping.models;

public class ShoesImg {

	private int id;
	private int shoesId;
	private String shoesImg1;
	private String shoesImg2;
	private String shoesImg3;
	private String shoesImg4;
	private String shoesImg5;
	private String shoesImg6;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getShoesId() {
		return shoesId;
	}
	public void setShoesId(int shoesId) {
		this.shoesId = shoesId;
	}
	public String getShoesImg1() {
		return shoesImg1;
	}
	public void setShoesImg1(String shoesImg1) {
		this.shoesImg1 = shoesImg1;
	}
	public String getShoesImg2() {
		return shoesImg2;
	}
	public void setShoesImg2(String shoesImg2) {
		this.shoesImg2 = shoesImg2;
	}
	public String getShoesImg3() {
		return shoesImg3;
	}
	public void setShoesImg3(String shoesImg3) {
		this.shoesImg3 = shoesImg3;
	}
	public String getShoesImg4() {
		return shoesImg4;
	}
	public void setShoesImg4(String shoesImg4) {
		this.shoesImg4 = shoesImg4;
	}
	public String getShoesImg5() {
		return shoesImg5;
	}
	public void setShoesImg5(String shoesImg5) {
		this.shoesImg5 = shoesImg5;
	}
	public String getShoesImg6() {
		return shoesImg6;
	}
	public void setShoesImg6(String shoesImg6) {
		this.shoesImg6 = shoesImg6;
	}
	
	@Override
	public String toString() {
		return "ShoesImg [id=" + id + ", shoesId=" + shoesId + ", shoesImg1="
				+ shoesImg1 + ", shoesImg2=" + shoesImg2 + ", shoesImg3="
				+ shoesImg3 + ", shoesImg4=" + shoesImg4 + ", shoesImg5="
				+ shoesImg5 + ", shoesImg6=" + shoesImg6 + "]";
	}
}
