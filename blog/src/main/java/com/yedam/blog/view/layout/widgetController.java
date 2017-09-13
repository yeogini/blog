package com.yedam.blog.view.layout;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.admin.ProfileService;
import com.yedam.blog.biz.admin.ProfileVO;
import com.yedam.blog.biz.users.UsersService;
import com.yedam.blog.biz.users.UsersVO;

@Controller
public class widgetController {
	@Autowired
	ProfileService profileservice;

	@Autowired
	UsersService usersService;
	@RequestMapping("getProfileView.do")
	public String getProfileView(ProfileVO vo,Model model,HttpServletRequest req){
		String blogId = req.getParameter("blogId");
		vo.setUserid(blogId);
		ProfileVO result = profileservice.getProfile(vo);
		model.addAttribute("profile", result);
		
		return "/layoutview/profileView";
	}
	
	@RequestMapping("getTitleView.do")
	public String getTitleView(HttpServletRequest req, Model model)
	{
		UsersVO vo = new UsersVO();
		String blogId = req.getParameter("blogId");
		vo.setUserid(blogId);
		UsersVO result = usersService.getUsers(vo);
		model.addAttribute("title", result);
		
		return "/layoutview/titleView";
	}
	
}
