package com.yedam.blog.search.impl;

import java.util.List;

import com.yedam.blog.search.BlogSearchVO;

public interface BlogSearchMapper {

	public List<BlogSearchVO>  getBlogSearchNewestLetter();
	
	public List<BlogSearchVO>  getBlogSearchNewestReply();
	
	public List<BlogSearchVO>  getBlogSearchBestLetter();
	
	public List<BlogSearchVO>  getBlogSearchListLetter();

	public List<BlogSearchVO>  getBlogSearchListReply();
}
