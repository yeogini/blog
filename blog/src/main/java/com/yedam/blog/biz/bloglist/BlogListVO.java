package com.yedam.blog.biz.bloglist;

public class BlogListVO {

	private String userid;
	private String blog_img;
	private String blog_title;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBlog_img() {
		return blog_img;
	}
	public void setBlog_img(String blog_img) {
		this.blog_img = blog_img;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	@Override
	public String toString() {
		return "BlogList [userid=" + userid + ", blog_img=" + blog_img + ", blog_title=" + blog_title + "]";
	}
	
}
