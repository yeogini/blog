package com.yedam.blog.biz.view.visit;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yedam.blog.biz.visit.VisitDaySearchVO;
import com.yedam.blog.biz.visit.VisitService;
import com.yedam.blog.biz.visit.VisitVO;

@Controller
public class VisitController {
	
	@Autowired
	VisitService visitService;
	
	//방명록 추가
	@RequestMapping("/insertVisit.do")
	public String insertVisit(VisitVO vo, @RequestParam(value="mv",required=false,defaultValue="Visit") String mv){
		vo.setId("a");
		vo.setViId("test22");
		visitService.insertVisit(vo);
		System.out.println(vo);
		if(mv.equals("Main"))
			return "visit/mainView";
		else
			return "redirect:/getVisitList.do";
	}
	
	//방명록 목록 조회
	@RequestMapping("/getVisitList.do")
	public String getVisitList(Model model, VisitDaySearchVO vo){
		List<Map<String, Object>> list = visitService.getVisitList(vo);
		Calendar ca = Calendar.getInstance();
		model.addAttribute("year",ca.get(Calendar.YEAR));
		int mon = ca.get(Calendar.MONTH)+1;
		if(mon <= 10)
		model.addAttribute("mon");
		model.addAttribute("day",ca.getActualMaximum(Calendar.DAY_OF_MONTH));
		model.addAttribute("VisitList",list);
		System.out.println(list);
		return "/visit/viewVisit";
	}
	
	//방명록 수정
	@RequestMapping("/updateVisit.do")
	public String updateVisit(VisitVO vo){
		visitService.updateVisit(vo);
		return "redirect:/getVisitList.do";
	}
	
	//방명록 단건 삭제
	@RequestMapping("/deleteVisit.do")
	public String deleteVisit(VisitVO vo, HttpSession session){
		String id = (String)session.getAttribute("login");
		System.out.println("확인---------");
		visitService.deleteVisit(vo);
		return "redirect:/getVisitList.do";
	}
	//방명록 회원삭제시 글 전체 삭제
	@RequestMapping("/deleteAllVisit.do")
	public String deleteAllVisit(VisitVO vo){
		visitService.deleteVisitList(vo);
		return "redirect:/getVisitList.do";
	}
	
}
