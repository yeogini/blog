package com.yedam.blog.search;

import java.util.List;

public interface BlogSearchService {

public List<BlogSearchVO>  getBlogSearchNewestLetter(String userid);
	
	public List<BlogSearchVO>  getBlogSearchNewestReply(String userid);
	
	public List<BlogSearchVO>  getBlogSearchBestLetter(String userid);
	
	public List<BlogSearchVO>  getBlogSearchListLetter();

	public List<BlogSearchVO>  getBlogSearchListReply();
}
