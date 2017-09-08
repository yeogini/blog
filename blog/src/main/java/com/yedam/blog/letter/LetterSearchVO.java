package com.yedam.blog.letter;

public class LetterSearchVO {

	private Integer[] seqList;
	private String searchCondition;
	private String searchKeyword;
	
	private String orderColumn;
	private String orderAsc;
	
	private Integer first;
	private Integer last;
	
	
	
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getOrderColumn() {
		return orderColumn;
	}
	public void setOrderColumn(String orderColumn) {
		this.orderColumn = orderColumn;
	}
	public String getOrderAsc() {
		return orderAsc;
	}
	public void setOrderAsc(String orderAsc) {
		this.orderAsc = orderAsc;
	}
	public Integer getFirst() {
		return first;
	}
	public void setFirst(Integer first) {
		this.first = first;
	}
	public Integer getLast() {
		return last;
	}
	public void setLast(Integer last) {
		this.last = last;
	}
	public Integer[] getSeqList() {
		return seqList;
	}
	public void setSeqList(Integer[] seqList) {
		this.seqList = seqList;
	}

}
