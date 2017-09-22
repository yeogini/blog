package com.yedam.blog.letter;

public class LetterAllVO {
	/*게시판*/
	private String letterNo;
	private String letterTitle;
	private String letterSub;
	private int categoryNo;
	private String userId;
	private String letterDate;
	private int hits;
	private String categoryName;
	private int start;
	private int end;
	public String getLetterNo() {
		return letterNo;
	}
	public void setLetterNo(String letterNo) {
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	@Override
	public String toString() {
		return "LetterAllVO [letterNo=" + letterNo + ", letterTitle=" + letterTitle + ", letterSub=" + letterSub
				+ ", categoryNo=" + categoryNo + ", userId=" + userId + ", letterDate=" + letterDate + ", hits=" + hits
				+ ", categoryName=" + categoryName + ", start=" + start + ", end=" + end + "]";
	}
	
	
	
}
