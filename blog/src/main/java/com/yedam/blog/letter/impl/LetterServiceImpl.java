package com.yedam.blog.letter.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yedam.blog.biz.common.LogAdvice;
import com.yedam.blog.letter.LetterAllVO;
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
	

	

	
	public LetterVO getLetter(LetterVO vo, String hitsyn) {
		if(hitsyn.equals("yes")) {
			letterDAO.hitsLetter(vo);
		}
		return letterDAO.getLetter(vo);
	}



	@Override
	public void updateLetter(LetterVO vo) {
		letterDAO.updateLetter(vo);
		
	}

	@Override
	public void deleteLetter(LetterVO vo) {
		letterDAO.deleteReplyLetter(vo);
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
	
	/*글 + 댓글 삭제*/
	@Override
	public void deleteReplyLetter(LetterVO vo) {
		// TODO Auto-generated method stub
		letterDAO.deleteReplyLetter(vo);
	}

	/*글 조회수*/
	@Override
	public LetterVO hitsLetter(LetterVO vo) {
		// TODO Auto-generated method stub
		return letterDAO.hitsLetter(vo);
	}




	//최신 글
	@Override
	public LetterVO newest(LetterVO vo) {
		// TODO Auto-generated method stub
		return letterDAO.newest(vo);
	}





	@Override
	public List<LetterAllVO> getLetterAll(LetterAllVO vo) {
		// TODO Auto-generated method stub
		return letterDAO.getLetterAll(vo);
	}





	@Override
	public int getTotalLetter(LetterVO vo) {
		// TODO Auto-generated method stub
		return letterDAO.getTotalLetter(vo);
	}
	
	
	
}
