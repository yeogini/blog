package com.yedam.blog.biz.layout;

public class DetailsVO {
	private int letterNo;
	private String letterTitle;
	private String letterSub;
	private int categoryNo;
	private String categoryName;
	private String letterDate;
	private int hits;
	private String userid;
	private int start;
	private int end;
	
	
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getLetterNo() {
		return letterNo;
	}
	public void setLetterNo(int letterNo) {
		this.letterNo = letterNo;
	}
	public String getLetterTitle() {
		return letterTitle;
	}
	public void setLetterTitle(String letterTitle) {
		this.letterTitle = letterTitle;
	}
	public String getLetterSub() {
		return letterSub;
	}
	public void setLetterSub(String letterSub) {
		this.letterSub = letterSub;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getLetterDate() {
		return letterDate;
	}
	public void setLetterDate(String letterDate) {
		this.letterDate = letterDate;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
}
