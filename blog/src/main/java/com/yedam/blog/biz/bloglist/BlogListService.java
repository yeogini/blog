package com.yedam.blog.biz.bloglist;

import java.util.List;

public interface BlogListService {

	public List<BlogListVO> getBlogList(BlogListVO vo);
	
	public List<BlogListVO> getBlogSearchList(BlogSearchListVO vo);
}
