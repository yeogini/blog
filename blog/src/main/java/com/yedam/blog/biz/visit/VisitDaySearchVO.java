package com.yedam.blog.biz.visit;

public class VisitDaySearchVO {

	private String year;
	private String mon;
	private String day;
	private String viId;
	
	
	
	public String getViId() {
		return viId;
	}
	public void setViId(String viId) {
		this.viId = viId;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMon() {
		return mon;
	}
	public void setMon(String mon) {
		this.mon = mon;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	@Override
	public String toString() {
		return "VisitDaySearchVO [year=" + year + ", mon=" + mon + ", day=" + day + ", viId=" + viId + "]";
	}
	@Override
	public boolean equals(Object obj) {
		if(year!=null) {
			return false;
		} else {
			return true;
		}
	}
	
	
	
}
