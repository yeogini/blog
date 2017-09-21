package com.yedam.blog.view.black;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.yedam.blog.biz.black.BlackService;
import com.yedam.blog.biz.black.BlackVO;
import com.yedam.blog.biz.black.impl.BlackMapper;
import com.yedam.blog.biz.black.impl.BlackServiceImpl;




@Controller
public class BlackController {

	@Autowired
	BlackService blackService;
		
	
	//조회??
	@RequestMapping("getBlackList.do" ) 
		public ModelAndView getBoardList(ModelAndView mv,BlackVO vo, HttpSession session){
			vo.setUserid((String)session.getAttribute("login"));
		List<BlackVO> list = blackService.getBlackList(vo);
			mv.addObject("blackList",list);
			mv.setViewName("/blogblack/getBlackList");
			return mv;
	}
		
	
	@RequestMapping("getBlack.do")
	public String getBlack(Model model,BlackVO vo){
		model.addAttribute("black",blackService.getBlack(vo));
		return "/blogblack/getBlack";
	}
	
	//저장
	@RequestMapping(value="/insertBlack.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertBlack(BlackVO vo){ 
		blackService.insertBlack(vo);
		return "true";
	}
	
	
		//삭제
	@RequestMapping("/Deleteblack.do")
	@ResponseBody	
	public int deleteBlack(HttpServletRequest req,BlackVO vo){
			blackService.deleteBlack(vo);
			return vo.getD_no();
	}	
	
}
