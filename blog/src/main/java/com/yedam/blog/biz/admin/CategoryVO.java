package com.yedam.blog.biz.admin;

public class CategoryVO {
	private int categoryNo;
	private String categoryName;
	private int categoryChk;
	private int categoryMouser;
	private String userid;
	private String type;
	private String borderType;
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	public int getCategoryChk() {
		return categoryChk;
	}
	public void setCategoryChk(int categoryChk) {
		this.categoryChk = categoryChk;
	}
	public int getCategoryMouser() {
		return categoryMouser;
	}
	public void setCategoryMouser(int categoryMouser) {
		this.categoryMouser = categoryMouser;
	}
	public String getUserId() {
		return userid;
	}
	public void setUserId(String userId) {
		this.userid = userId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBorderType() {
		return borderType;
	}
	public void setBorderType(String borderType) {
		this.borderType = borderType;
	}
	
	
}
