package com.yedam.blog.biz.visit.impl;

import java.util.List;
import java.util.Map;

import com.yedam.blog.biz.visit.VisitDaySearchVO;
import com.yedam.blog.biz.visit.VisitVO;

public interface VisitMapper {

	//방명록 등록
	void insertVisit(VisitVO vo);
	
	//방명록 수정
	void updateVisit(VisitVO vo);
	
	//방명록 삭제
	void deleteVisit(VisitVO vo);
	
	//방명록 전체 삭제(유저가 탈퇴되었을시 자동으로 전체삭제)
	void deleteAllVisit(VisitVO vo);
	
	//방명록 조회
	List<Map<String, Object>> getVisitList(VisitDaySearchVO vo);
}
