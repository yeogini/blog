package com.yedam.blog.reply;

import java.sql.Date;

public class ReplyVO {

	/*게시판*/
	private String letterNo;
	private String letterTitle;
	private String letterSub;
	private String userId;
	

	
	/*댓글*/
	private int replyNo;
	private Date reDate;
	private String replySub;
	
	
	
	/*rnum 값 (순번)*/
	private int rnum;



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



	public int getRnum() {
		return rnum;
	}



	public void setRnum(int rnum) {
		this.rnum = rnum;
	}



	@Override
	public String toString() {
		return "ReplySearchVO [letterNo=" + letterNo + ", letterTitle=" + letterTitle + ", letterSub=" + letterSub
				+ ", userId=" + userId + ", replyNo=" + replyNo + ", reDate=" + reDate + ", replySub=" + replySub
				+ ", rnum=" + rnum + "]";
	}
	
	
	
}
