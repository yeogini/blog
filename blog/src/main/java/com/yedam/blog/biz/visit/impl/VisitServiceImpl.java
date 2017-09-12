package com.yedam.blog.biz.visit.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.visit.VisitDaySearchVO;
import com.yedam.blog.biz.visit.VisitService;
import com.yedam.blog.biz.visit.VisitVO;

@Service("visitService")
public class VisitServiceImpl implements VisitService{

	@Autowired
	VisitMapper visitDAO;
	
	@Override
	public List<Map<String, Object>> getVisitList(VisitVO vo) {
		
		return visitDAO.getVisitList(vo);
	}

	@Override
	public void insertVisit(VisitVO vo) {
		
		visitDAO.insertVisit(vo);
	}

	@Override
	public void updateVisit(VisitVO vo) {
		
		visitDAO.updateVisit(vo);
	}

	@Override
	public void deleteVisit(VisitVO vo) {

		visitDAO.deleteVisit(vo);
	}

	@Override
	public void deleteVisitList(VisitVO vo) {

		visitDAO.deleteAllVisit(vo);
	}

	@Override
	public List<Map<String, Object>> getVisitList(VisitDaySearchVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
