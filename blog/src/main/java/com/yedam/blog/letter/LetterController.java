package com.yedam.blog.letter;

import java.io.File;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.blog.biz.admin.CategoryService;
import com.yedam.blog.biz.admin.CategoryVO;



@Controller
@SessionAttributes("letter")		// 모델에 board 저장될 때 세션에도 저장
public class LetterController {
	
	
	
	@Autowired 
	LetterService letterService;
	
	@Autowired 
	CategoryService categoryService;
	
	
	@ModelAttribute("conditionMap")
	public List<CategoryVO> searchConditionMap(HttpSession session) {
		CategoryVO categoryVo = new CategoryVO();							// 새로운 객체 categoryVo 생성
		categoryVo.setUserId((String)session.getAttribute("login"));		// 세션에 저정된 login 값을 불러 categoryVo에 넣고 
		return categoryService.getOnlyCategory(categoryVo);					// categoryService의 getOnlyCategory에 categoryVo를 넣는다
	}
	
	// 등록 폼 페이지
	@RequestMapping(value="/letterInsert.do",method=RequestMethod.GET)			// 응답 멤핑 맞으면
	public String boardInsertForm() {
		
		return "/letter/letterInsert";
	}
	
	//등록
	@RequestMapping(value="/letterInsert.do",method=RequestMethod.POST)
	public String letterInsert(LetterVO vo, LetterSearchVO vo1,	SessionStatus sessionStatus, HttpSession session) {
		vo.setUserId((String)session.getAttribute("login"));
		letterService.insertLetter(vo);
		letterService.getLetterList(vo1);
		/*글 바로 등록 보기*/
		sessionStatus.setComplete();

		return "redirect:/getLetter.do?letterNo="+vo.getLetterNo();
	}
	

	@RequestMapping(value="/insertLetter.do",method=RequestMethod.POST)
	@ResponseBody
	public LetterVO insertLetter(@RequestBody LetterVO vo,HttpSession session)
	{
		String userid = (String)session.getAttribute("login");
		vo.setUserId(userid);
		letterService.insertLetter(vo);
		System.err.println(vo);
		return vo;
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
		System.err.println("바보멍충이");
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
	
	//상세조회
		@RequestMapping("/getLetterAll.do")
		public String getLetterAll(Model model,HttpServletRequest request) {
			LetterVO vo = new LetterVO();  
			String no = (String)request.getParameter("letterNo");
			System.err.println("진짜바보" +no);
			vo.setLetterNo(no);
			model.addAttribute("letter", letterService.getLetter(vo,"yes"));
				return "letter/getLetter";
		}
}
