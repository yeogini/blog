package com.yedam.blog.letter;

import java.sql.Date;

public class LetterVO {

	/*게시판*/
	private String letterNo;
	private String letterTitle;
	private String letterSub;
	private int categoryNo;
	private String userId;
	private String letterDate;
	private int hits;
	private String categoryName;

	

	/*댓글*/
	private int replyNo;
	private Date reDate;
	private String replySub;
	
	/*rnum 값 (순번)*/
	private int rnum;
	
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
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
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public Date getReDate() {
		return reDate;
	}
	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}
	public String getReplySub() {
		return replySub;
	}
	public void setReplySub(String replySub) {
		this.replySub = replySub;
	}
	
	
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	@Override
	public String toString() {
		return "LetterVO [letterNo=" + letterNo + ", letterTitle=" + letterTitle + ", letterSub=" + letterSub
				+ ", categoryNo=" + categoryNo + ", userId=" + userId + ", letterDate=" + letterDate + ", hits=" + hits
				+ ", replyNo=" + replyNo + ", reDate=" + reDate + ", replySub=" + replySub + "]";
	}
	
	
	
}
