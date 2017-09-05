package com.yedam.blog.biz.view.visit;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.visit.VisitService;
import com.yedam.blog.biz.visit.VisitVO;

@Controller
public class VisitController {
	
	@Autowired
	VisitService visitService;
	
	//댓글 추가
	@RequestMapping("/insertVisit.do")
	public String insertVisit(VisitVO vo){
		vo.setId("a");
		vo.setViId("test22");
		visitService.insertVisit(vo);
		System.out.println(vo);
		return "redirect:/getVisitList.do";
	}
	
	//방명록 목록 조회
	@RequestMapping("/getVisitList.do")
	public String getVisitList(Model model){
		List<Map<String, Object>> list = visitService.getVisitList(null);
		model.addAttribute("VisitList",list);
		System.out.println(list);
		return "/visit/viewVisit";
	}
}
