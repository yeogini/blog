package com.yedam.blog.letter;

import java.io.File;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;



@Controller
@SessionAttributes("letter")		// 모델에 board 저장될 때 세션에도 저장
public class LetterController {
	
	
	
	@Autowired 
	LetterService letterService;
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("1", "여행");
		conditionMap.put("2", "취미");
		conditionMap.put("3", "IT");
		return conditionMap;
	}
	
	// 등록 폼 페이지
	@RequestMapping(value="/letterInsert.do",method=RequestMethod.GET)			// 응답 멤핑 맞으면
	public String boardInsertForm() {
		return "/letter/letterInsert";
	}
	
	//등록
	@RequestMapping(value="/letterInsert.do",method=RequestMethod.POST)
	public String letterInsert(
			LetterVO vo,
			SessionStatus sessionStatus) {
		vo.setUserId("aaa");
		letterService.insertLetter(vo);
		sessionStatus.setComplete();
		return "redirect:/getLetter.do?letterNo="+vo.getLetterNo();
	}
	
	//목록
	@RequestMapping(value="/getLetterList.do")
	public ModelAndView getLetterList(ModelAndView mv, LetterSearchVO vo){
		List<LetterVO> list = letterService.getLetterList(vo);
		mv.addObject("LetterList", list);  				// getBoardList에 아이템
		mv.setViewName("/letter/getLetterList");			// 리턴에는 처리후에 보여질 뷰페이지
		return mv;
	} 
	
	//상세조회
	@RequestMapping("/getLetter.do")
	public String getletter(Model model, LetterVO vo, HttpServletRequest request) {
		String referer = request.getHeader("Referer");
			model.addAttribute("letter", letterService.getLetter(vo,"yes"));
			return "letter/getLetter";
	}
	
	//수정폼
	@RequestMapping("/letterUpdate.do")
	public String letterUpdate(Model model, LetterVO vo) {
		//model.addAttribute("letter", letterService.getLetter(vo));
		return "/letter/letterUpdate";
	}
	
	//수정처리
	@RequestMapping(value="/letterUpdate.do", method=RequestMethod.POST)
	public String letterUpdate(@ModelAttribute("letter") LetterVO vo) {
		System.out.println("수정"+vo);
		//수정처리
		letterService.updateLetter(vo);
		return "redirect:/getLetter.do?letterNo="+vo.getLetterNo();
		/* return "redirect:/getLetterList.do"; */
		
	}
	
	// 단건 삭제 deleteLetter.do
		@RequestMapping("/deleteLetter.do")
		@ResponseBody
		public Map<String,? extends Object> deleteLetterList(LetterVO vo) {
			letterService.deleteLetter(vo);
			return Collections.singletonMap("result","sucess");
		} 
	
	// 댓글 + 글 삭제 deleteReplyLetterList.do
	@RequestMapping("/deleteReplyLetter.do")
	public String deleteReplyLetterList(LetterVO vo) {
		letterService.deleteReplyLetter(vo);
		return "redirect:getLetterList.do";
		}
		
	// 다건 삭제
	@RequestMapping("/deleteLetterList.do")
	public String deleteLetterList(LetterSearchVO vo) {
		letterService.deleteLetterList(vo);
		return "redirect:getLetterList.do";
	}
	
	// 글 조회수 카운팅
	@RequestMapping("/hitsLetter.do")
	public String hitsLetter(LetterVO vo) {
		letterService.hitsLetter(vo);
		return "redirect:getLetterList.do";
		}
}
