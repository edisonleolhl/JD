package com.shopping.models;

public class ShoesSize {

	private int sizeId;
	private int shoesSize;
	
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public int getShoesSize() {
		return shoesSize;
	}
	public void setShoesSize(int shoesSize) {
		this.shoesSize = shoesSize;
	}
	
	@Override
	public String toString() {
		return "ShoesSize [sizeId=" + sizeId + ", shoesSize=" + shoesSize + "]";
	}
}
