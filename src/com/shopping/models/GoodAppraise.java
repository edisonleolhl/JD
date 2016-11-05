package com.shopping.models;

import java.util.Date;

public class GoodAppraise {

	private int goodid;
	private String goodtype;
	private String gooddesc;
	private int shoesid;
	private String useraccount;
	private Date goodtime;
	public int getGoodid() {
		return goodid;
	}
	public void setGoodid(int goodid) {
		this.goodid = goodid;
	}
	public String getGoodtype() {
		return goodtype;
	}
	public void setGoodtype(String goodtype) {
		this.goodtype = goodtype;
	}
	public String getGooddesc() {
		return gooddesc;
	}
	public void setGooddesc(String gaooddesc) {
		this.gooddesc = gaooddesc;
	}
	public int getShoesid() {
		return shoesid;
	}
	public void setShoesid(int shoesid) {
		this.shoesid = shoesid;
	}
	public String getUseraccount() {
		return useraccount;
	}
	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}
	public Date getGoodtime() {
		return goodtime;
	}
	public void setGoodtime(Date goodtime) {
		this.goodtime = goodtime;
	}
	
	
}
