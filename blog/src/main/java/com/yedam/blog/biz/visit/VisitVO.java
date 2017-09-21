package com.yedam.blog.biz.visit;

public class VisitVO {
	
	private String id;		/* USERID */
	private String viNo;	/* VI_NO */
	private String viId;	/* V_ID */
	private String vDate;	/* V_DATE */
	private String vSub;	/* V_SUB */

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getViNo() {
		return viNo;
	}
	public void setViNo(String viNo) {
		this.viNo = viNo;
	}
	public String getViId() {
		return viId;
	}
	public void setViId(String viId) {
		this.viId = viId;
	}
	public String getvDate() {
		return vDate;
	}
	public void setvDate(String vDate) {
		this.vDate = vDate;
	}
	public String getvSub() {
		return vSub;
	}
	public void setvSub(String vSub) {
		this.vSub = vSub;
	}
	@Override
	public String toString() {
		return "VisitVO [id=" + id + ", viNo=" + viNo + ", viId=" + viId + ", vDate=" + vDate + ", vSub=" + vSub + "]";
	}
	
}
