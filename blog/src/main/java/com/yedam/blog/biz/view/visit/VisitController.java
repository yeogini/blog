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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.SessionScope;

import com.yedam.blog.biz.black.BlackService;
import com.yedam.blog.biz.black.BlackVO;
import com.yedam.blog.biz.visit.VisitDaySearchVO;
import com.yedam.blog.biz.visit.VisitService;
import com.yedam.blog.biz.visit.VisitVO;
import com.yedam.blog.reply.ReplyVO;
/*
 *  2017-09-23 김용우
 *  블랙인 사람 방명록 글 사용 시 경고창 추가
 */
@Controller
public class VisitController {
	
	@Autowired
	VisitService visitService;
	
	@Autowired
	BlackService blackService;
	
	
	/*여기*/
	//방명록 추가
	@RequestMapping("/insertVisit.do")
	public String insertVisit(VisitVO vo, 
							  @RequestParam(value="mv",required=false,defaultValue="Visit") 
							  String mv, VisitVO visitVO,  HttpSession session) {
		
		/*블로그 주인 작성자 value값 가져오기*/
		vo.setId(visitVO.getId());								// 블로그 주인
		vo.setViId((String)session.getAttribute("login"));		// 작성자

		
		
		BlackVO blackVo = new BlackVO();
		blackVo.setD_id((String)session.getAttribute("login"));			// 블랙
		blackVo.setUserid(visitVO.getId());								// 차단하는 사람
		blackVo = blackService.selectBlack(blackVo);
		
		if(blackVo == null) {
			visitService.insertVisit(vo);
			System.out.println(vo);
			if(mv.equals("Main"))
				return "visit/mainView";
			else
				return "redirect:/getVisitList.do";
		} else {
			return "visit/error";
		}
		
		
		
		
	}
	
	  
	
	//방명록 목록 조회
	@RequestMapping("/getVisitList.do")
	public String getVisitList(Model model, VisitVO vo,HttpServletRequest req){
		String userid = (String)req.getParameter("userid");
		vo.setViId(userid);
		List<Map<String, Object>> list = visitService.getVisitList(vo);
		Calendar ca = Calendar.getInstance();
		model.addAttribute("year",ca.get(Calendar.YEAR));
		int mon = ca.get(Calendar.MONTH)+1;
		if(mon <= 10)
		model.addAttribute("mon",mon);
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
