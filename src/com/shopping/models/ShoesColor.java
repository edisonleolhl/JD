package com.shopping.models;

public class ShoesColor {

	private int shoesId;
	private String color1;
	private String color2;
	private String color3;
	private String color4;
	private String color5;
	private String color6;
	public int getShoesId() {
		return shoesId;
	}
	public void setShoesId(int shoesId) {
		this.shoesId = shoesId;
	}
	public String getColor1() {
		return color1;
	}
	public void setColor1(String color1) {
		this.color1 = color1;
	}
	public String getColor2() {
		return color2;
	}
	public void setColor2(String color2) {
		this.color2 = color2;
	}
	public String getColor3() {
		return color3;
	}
	public void setColor3(String color3) {
		this.color3 = color3;
	}
	public String getColor4() {
		return color4;
	}
	public void setColor4(String color4) {
		this.color4 = color4;
	}
	public String getColor5() {
		return color5;
	}
	public void setColor5(String color5) {
		this.color5 = color5;
	}
	public String getColor6() {
		return color6;
	}
	public void setColor6(String color6) {
		this.color6 = color6;
	}
	
	@Override
	public String toString() {
		return "ShoesColor [shoesId=" + shoesId + ", color1=" + color1
				+ ", color2=" + color2 + ", color3=" + color3 + ", color4="
				+ color4 + ", color5=" + color5 + ", color6=" + color6 + "]";
	}

}
