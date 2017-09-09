package com.yedam.blog.biz.visit;

import java.util.List;
import java.util.Map;

public interface VisitService {
	
	//방명록 조회
	List<Map<String, Object>> getVisitList(VisitVO vo);
	
	//방명록 등록
	void insertVisit(VisitVO vo);
	
	//방명록 수정
	void updateVisit(VisitVO vo);
	
	//방명록 삭제
	void deleteVisit(VisitVO vo);
	
	//방명록 전체삭제(유저 탈퇴시)
	void deleteVisitList(VisitVO vo);
	
}
