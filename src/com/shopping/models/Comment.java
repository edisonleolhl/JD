package com.shopping.models;

import java.util.Date;

public class Comment {

	private int commentId;
	private String commentType;
	private String commentDescription;
	private int shoesId;
	private String userAccount;
	private Date commentTime;

	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public String getCommentType() {
		return commentType;
	}
	public void setCommentType(String commentType) {
		this.commentType = commentType;
	}
	public String getCommentDescription() {
		return commentDescription;
	}
	public void setCommentDescription(String commentDescription) {
		this.commentDescription = commentDescription;
	}
	public int getShoesId() {
		return shoesId;
	}
	public void setShoesId(int shoesId) {
		this.shoesId = shoesId;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentType="
				+ commentType + ", commentDescription=" + commentDescription
				+ ", shoesId=" + shoesId + ", userAccount=" + userAccount
				+ ", commentTime=" + commentTime + "]";
	}
}
