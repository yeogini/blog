package com.yedam.blog.biz.bloglist;

public class BlogSearchListVO {
	private String userid;
	private String blog_img;
	private String blog_title;
	private Integer start;
	private Integer end;
	private String search;
	
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
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getEnd() {
		return end;
	}
	public void setEnd(Integer end) {
		this.end = end;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	@Override
	public String toString() {
		return "BlogSearchListVO [userid=" + userid + ", blog_img=" + blog_img + ", blog_title=" + blog_title
				+ ", start=" + start + ", end=" + end + ", search=" + search + "]";
	}
	
	
	
}
