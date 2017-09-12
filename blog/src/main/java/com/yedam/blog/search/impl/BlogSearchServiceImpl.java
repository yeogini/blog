package com.yedam.blog.search.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.search.BlogSearchService;
import com.yedam.blog.search.BlogSearchVO;

@Service("blogSearchService")
public class BlogSearchServiceImpl implements BlogSearchService{

	@Autowired
	BlogSearchMapper blogShearchDAO;
	
	@Override
	public List<BlogSearchVO> getBlogSearchNewestLetter() {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchNewestLetter();
	}

	@Override
	public List<BlogSearchVO> getBlogSearchNewestReply() {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchNewestReply();
	}

	@Override
	public List<BlogSearchVO> getBlogSearchBestLetter() {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchBestLetter();
	}

	@Override
	public List<BlogSearchVO> getBlogSearchListLetter() {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchListLetter();
	}

	@Override
	public List<BlogSearchVO> getBlogSearchListReply() {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchListReply();
	}
}
