package com.yedam.blog.biz.category;

public class CategoryVO {

	public String categoryno;
	public String categoryname;
	public String cetegorychk;
	public String cetegorymouser;
	public String userid;
	public String type;
	public String bordertype;
	
	public String getCategoryno() {
		return categoryno;
	}
	public void setCategoryno(String categoryno) {
		this.categoryno = categoryno;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getCetegorychk() {
		return cetegorychk;
	}
	public void setCetegorychk(String cetegorychk) {
		this.cetegorychk = cetegorychk;
	}
	public String getCetegorymouser() {
		return cetegorymouser;
	}
	public void setCetegorymouser(String cetegorymouser) {
		this.cetegorymouser = cetegorymouser;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBordertype() {
		return bordertype;
	}
	public void setBordertype(String bordertype) {
		this.bordertype = bordertype;
	}
	
	@Override
	public String toString() {
		return "CategoryVO [categoryno=" + categoryno + ", categoryname=" + categoryname + ", cetegorychk="
				+ cetegorychk + ", cetegorymouser=" + cetegorymouser + ", userid=" + userid + ", type=" + type
				+ ", bordertype=" + bordertype + "]";
	}
	
}
