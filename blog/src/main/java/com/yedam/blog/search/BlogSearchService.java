package com.yedam.blog.search;

import java.util.List;

public interface BlogSearchService {

	public List<BlogSearchVO>  getBlogSearchNewestLetter();
	
	public List<BlogSearchVO>  getBlogSearchNewestReply();
	
	public List<BlogSearchVO>  getBlogSearchBestLetter();
	
	public List<BlogSearchVO>  getBlogSearchListLetter();

	public List<BlogSearchVO>  getBlogSearchListReply();
}
