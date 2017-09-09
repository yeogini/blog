package com.yedam.blog.letter.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yedam.blog.biz.common.LogAdvice;
import com.yedam.blog.letter.LetterSearchVO;
import com.yedam.blog.letter.LetterService;
import com.yedam.blog.letter.LetterVO;

@Service("letterService")
public class LetterServiceImpl implements LetterService {
	
	@Autowired
	LetterMapper letterDAO;

	LogAdvice log = new LogAdvice();
	
	public void insertLetter(LetterVO vo) {
		letterDAO.insertLetter(vo);
		//System.out.println("등록: " + Seq);
		System.out.println("등록: " + vo.getLetterNo());
		
	}
	

	

	
	public LetterVO getLetter(LetterVO vo) {
		return letterDAO.getLetter(vo);
	}



	@Override
	public void updateLetter(LetterVO vo) {
		letterDAO.updateLetter(vo);
		
	}

	@Override
	public void deleteLetter(LetterVO vo) {
		letterDAO.deleteLetter(vo);
		
	}

	@Override
	public List<LetterVO> getLetterList(LetterSearchVO vo) {
		return letterDAO.getLetterList(vo);
	}

	@Override
	public void deleteLetterList(LetterSearchVO vo) {
		letterDAO.deleteLetterList(vo);
		
	}
	
	
	
}
