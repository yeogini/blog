package com.yedam.blog.biz.layout.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.layout.DetailsService;
import com.yedam.blog.biz.layout.DetailsVO;

@Service("detailsService")
public class DetailsServiceImpl implements DetailsService{
	@Autowired
	DetailsMapper detailsDAO;

	@Override
	public List<DetailsVO> getDetailsList(DetailsVO vo) {
		// TODO Auto-generated method stub
		return detailsDAO.getDetailsList(vo);
	}

}
