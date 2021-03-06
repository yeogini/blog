package com.yedam.blog.biz.black;

import java.util.List;

public interface BlackService {
	
	//유저차단
	public void insertBlack(BlackVO vo);
	
	//차단한 유저 해제
	public void deleteBlack(BlackVO vo);
	
	//차단한 유저 조회
	List<BlackVO> getBlackList(BlackVO vo);
	
	BlackVO getBlack(BlackVO vo);
	
	//차단유무 확인???
		BlackVO selectBlack(BlackVO vo);
}
