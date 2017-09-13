package com.yedam.blog.view.layout;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.blog.biz.layout.LayoutService;
import com.yedam.blog.biz.layout.LayoutVO;

@Controller
public class LayoutController {

	@Autowired
	LayoutService layoutService;
	
	@RequestMapping("/getBlogLayout.do")
	public String getBlogLayout(Model model, LayoutVO layoutvo, HttpSession session){
		layoutvo.setUserid((String)session.getAttribute("login"));
		model.addAttribute("layout",layoutService.getLayout(layoutvo));
		return "/blogLayout/getLayout";
		
	}
	
	//저장폼?
	@RequestMapping(value="/layoutInsert.do", method=RequestMethod.GET )
	public String layoutInsertForm(){
		return "/blogLayout/layoutInsert";
	}
	
	//저장
	@RequestMapping(value="/layoutInsert.do", method=RequestMethod.POST )
	public String layoutInsert(@ModelAttribute("layout") LayoutVO vo, HttpSession session){
		vo.setUserid((String)session.getAttribute("login"));
		if(vo.getMode().equals("ins"))
				layoutService.insertLayout(vo);
		else{
			layoutService.updateLayout(vo);
		}
			return "redirect:/getBlogLayout.do";
	}
	
	
	
	@RequestMapping(value="/layoutUpdate.do",method=RequestMethod.POST )
		public String layoutUpdate(@ModelAttribute("layout") LayoutVO vo, HttpSession session){
			vo.setUserid((String)session.getAttribute("login"));
			if(vo.getMode().equals("ins"))
					layoutService.insertLayout(vo);
			else{
				layoutService.updateLayout(vo);
			}
				return "redirect:/getBlogLayout.do";
	
		}
	
	//메인 뷰 불러오기
	@RequestMapping("getMainView.do")
	public String getMainView(Model model, HttpServletRequest req, HttpSession session){
		String blogId = req.getParameter("blogId");
		LayoutVO vo = new LayoutVO();
		vo.setUserid(blogId);
		model.addAttribute("layout",layoutService.getLayout(vo));
		return "/layoutview/layoutmain";
	}

	
}

