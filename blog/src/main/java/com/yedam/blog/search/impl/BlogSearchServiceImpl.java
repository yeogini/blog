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
	public List<BlogSearchVO> getBlogSearchNewestLetter(String userId) {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchNewestLetter(userId);
	}

	@Override
	public List<BlogSearchVO> getBlogSearchNewestReply(String userId) {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchNewestReply(userId);
	}

	@Override
	public List<BlogSearchVO> getBlogSearchBestLetter(String userId) {
		// TODO Auto-generated method stub
		return blogShearchDAO.getBlogSearchBestLetter(userId);
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
