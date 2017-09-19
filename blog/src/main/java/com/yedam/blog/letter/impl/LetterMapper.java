package com.yedam.blog.letter.impl;

import java.util.List;

import com.yedam.blog.letter.LetterSearchVO;
import com.yedam.blog.letter.LetterVO;

public interface LetterMapper {

	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertLetter(LetterVO vo);

	// 글 수정
	void updateLetter(LetterVO vo);

	// 글 삭제
	void deleteLetter(LetterVO vo);
	
	// 댓글 + 글 삭제
	void deleteReplyLetter(LetterVO vo);

	// 글 상세 조회
	LetterVO getLetter(LetterVO vo);

	// 글 목록 조회
	List<LetterVO> getLetterList(LetterSearchVO vo);
	
	//다건삭제
	void deleteLetterList(LetterSearchVO vo);

	/*List<LetterVO> getLetterList(LetterVO vo);*/	
}