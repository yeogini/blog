package com.yedam.blog.biz.main.view.visit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.visit.VisitService;
import com.yedam.blog.biz.visit.VisitVO;

@Controller
public class MainVisitController {

	@Autowired
	VisitService visitService;
	
	//방명록 등록
	@RequestMapping("/mainviewVisit.do")
	public String insertVisit(VisitVO vo){
		return "visit/mainView";
	}
}
