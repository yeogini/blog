package com.yedam.blog.biz.black.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.black.BlackSerivce;
import com.yedam.blog.biz.black.BlackVO;



@Service("blackService")
public class BlackServiceImpl implements BlackSerivce{
	
	@Autowired
	BlackMapper blackDAO;

	@Override
	public void insertBlack(BlackVO vo) {
		blackDAO.insertBlack(vo);
		
	}

	@Override
	public void deleteBlack(BlackVO vo) {
		blackDAO.deleteBlack(vo);
	}

	@Override
	public List<BlackVO> getBlackList(BlackVO vo) {
		
		return blackDAO.getBlackList(vo);
	}

	@Override
	public BlackVO getBlack(BlackVO vo) {
		// TODO 자동 생성된 메소드 스텁
		return blackDAO.getBlack(vo);
	} 
}
