package com.yedam.blog.biz.bloglist.impl;

import java.util.List;

import com.yedam.blog.biz.bloglist.BlogListVO;
import com.yedam.blog.biz.bloglist.BlogSearchListVO;

public interface BlogListMapper {
	public List<BlogListVO> getBlogList(BlogListVO vo);
	
	public List<BlogSearchListVO> getBlogSearchList(BlogSearchListVO vo);
}
