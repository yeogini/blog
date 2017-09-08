package com.yedam.blog.search;

import java.sql.Date;

public class BlogSearchVO {

	/*게시판*/
	private String letterNo;
	private String letterTitle;
	private String letterSub;
	private String userId;
	private Date letterDate;
	private int hits;
	
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getLetterDate() {
		return letterDate;
	}
	public void setLetterDate(Date letterDate) {
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
	
	
	
	@Override
	public String toString() {
		return "UsersVO [  letterNo =" + letterNo + ","
						+ "letterTitle=" + letterTitle + ","
						+ "letterSub=" + letterSub + ","
						+ "userId=" + userId + ","
						+ "letterDate=" + letterDate + ","
						+ "hits=" + hits + ","
						+ "replyNo=" + replyNo + ","
						+ "reDate=" + reDate + ","
						+ "replySub=" + replySub + "]";
	}

	
	
}
