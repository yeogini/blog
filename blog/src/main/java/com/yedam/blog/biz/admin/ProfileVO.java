package com.yedam.blog.biz.admin;

public class ProfileVO {
	private String userid;
	private String blog_title;
	private String blog_img;
	private String intro;
	private String nickName;
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public String getBlog_img() {
		return blog_img;
	}
	public void setBlog_img(String blog_img) {
		this.blog_img = blog_img;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@Override
	public String toString() {
		return "ProfileVO [userid=" + userid + ", blog_title=" + blog_title + ", blog_img=" + blog_img + ", intro="
				+ intro + "]";
	}
	
	
}
