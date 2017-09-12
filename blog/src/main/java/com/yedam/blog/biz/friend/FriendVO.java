package com.yedam.blog.biz.friend;

public class FriendVO {
	private int f_no;
	private String userid;
	private String f_id;
	private String f_state;
	private String userName;
	private int start;
	private int end;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public int getF_no() {
		return f_no;
	}
	public void setF_no(int f_no) {
		this.f_no = f_no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getF_id() {
		return f_id;
	}
	public void setF_id(String f_id) {
		this.f_id = f_id;
	}
	public String getF_state() {
		return f_state;
	}
	public void setF_state(String f_state) {
		this.f_state = f_state;
	}
	
	
}
