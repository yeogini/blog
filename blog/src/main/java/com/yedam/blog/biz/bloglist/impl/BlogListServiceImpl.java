package com.yedam.blog.biz.bloglist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.bloglist.BlogListService;
import com.yedam.blog.biz.bloglist.BlogListVO;
import com.yedam.blog.biz.bloglist.BlogSearchListVO;

@Service("bloglistService")
public class BlogListServiceImpl implements BlogListService{

	@Autowired
	BlogListMapper blogListDAO;
	
	@Override
	public List<BlogListVO> getBlogList(BlogListVO vo) {
		// TODO Auto-generated method stub
		return blogListDAO.getBlogList(vo);
	}

	@Override
	public List<BlogSearchListVO> getBlogSearchList(BlogSearchListVO vo) {
		// TODO Auto-generated method stub
		return blogListDAO.getBlogSearchList(vo);
	}

}
