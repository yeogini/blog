package com.yedam.blog.biz.black.impl;

import java.util.List;

import com.yedam.blog.biz.black.BlackVO;

public interface BlackMapper {
	
	//유저차단
	public void insertBlack(BlackVO vo);
	
	
	//차단한 유저 해제
	public void deleteBlack(BlackVO vo);
	
	//차단한 유저 조회
	List<BlackVO> getBlackList(BlackVO vo);
	
	BlackVO getBlack(BlackVO vo);
}
