package com.yedam.util;

public class Paging {
	private int pageUnit=5; // 한페이지 출력할 레코드 건수
	private int pageSize=5; // 페이지번호수 (10) 1~10까지
	private int lastPage;    // 마지막 페이지번호
	private int totalRecord = 126; // 전체 레코드건수
	private int page=1; 		 // 현재페이지
	private int endPage;
	private int startPage;
	private String keyword;
	private String searchtype;
	
	public String getSearchtype() {
		return searchtype;
	}
	public void setSearchtype(String searchtype) {
		this.searchtype = searchtype;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getLastPage() {
		lastPage = totalRecord/pageUnit + ((totalRecord % pageUnit>0) ? 1 : 0);
		
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getEndPage() {
		endPage = (page-1)/pageSize*pageSize+pageSize;
		if(endPage > getLastPage()) 
			endPage = getLastPage();
		return endPage;
	}
	
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartPage() {
		startPage = (page-1)/pageSize * pageSize +1;
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	@Override
	public String toString() {
		return "Paging [pageUnit=" + pageUnit + ", pageSize=" + pageSize + ", lastPage=" + lastPage + ", totalRecord="
				+ totalRecord + ", page=" + page + ", endPage=" + endPage + ", startPage=" + startPage + "]";
	}
	
	
}
