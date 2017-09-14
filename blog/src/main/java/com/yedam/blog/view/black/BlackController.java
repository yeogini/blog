package com.yedam.blog.view.black;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.yedam.blog.biz.black.BlackSerivce;
import com.yedam.blog.biz.black.BlackVO;
import com.yedam.blog.biz.black.impl.BlackMapper;

@Controller
public class BlackController {

	@Autowired
	BlackSerivce blackSerivce;
		
	
	//조회??
	@RequestMapping("getBlackList.do" ) 
		public ModelAndView getBoardList(ModelAndView mv,BlackVO vo){
			List<BlackVO> list = blackSerivce.getBlackList(vo);
			mv.addObject("blackList",list);
			mv.setViewName("/blogblack/getBlackList");
			return mv;
	}
		
	
	@RequestMapping("getBlack.do")
	public String getBlack(Model model,BlackVO vo){
		model.addAttribute("black",blackSerivce.getBlack(vo));
		return "/blogblack/getBlack";
	}
	
	
	
}
