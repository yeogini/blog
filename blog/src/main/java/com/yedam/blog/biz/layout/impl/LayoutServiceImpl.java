package com.yedam.blog.biz.layout.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.layout.LayoutService;
import com.yedam.blog.biz.layout.LayoutVO;

@Service("layoutService")
public class LayoutServiceImpl implements LayoutService{

	@Autowired
	LayoutMapper layoutDAO;
	
	
	
	
	@Override
	public void insertLayout(LayoutVO vo) {
		layoutDAO.insertLayout(vo);
		
	}

	@Override
	public void updateLayout(LayoutVO vo) {
		layoutDAO.updateLayout(vo);
		
	}

	@Override
	public LayoutVO getLayout(LayoutVO vo) {
		return layoutDAO.getLayout(vo);
	}

}
