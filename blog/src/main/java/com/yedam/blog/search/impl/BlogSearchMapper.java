package com.yedam.blog.search.impl;

import java.util.List;

import com.yedam.blog.search.BlogSearchVO;

public interface BlogSearchMapper {

	public List<BlogSearchVO>  getBlogSearchNewestLetter(String userid);
	
	public List<BlogSearchVO>  getBlogSearchNewestReply(String userid);
	
	public List<BlogSearchVO>  getBlogSearchBestLetter(String userid);
	
	public List<BlogSearchVO>  getBlogSearchListLetter();

	public List<BlogSearchVO>  getBlogSearchListReply();
}
