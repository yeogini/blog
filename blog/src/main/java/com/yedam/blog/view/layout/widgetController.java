package com.yedam.blog.view.layout;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.admin.CategoryService;
import com.yedam.blog.biz.admin.CategoryVO;
import com.yedam.blog.biz.admin.ProfileService;
import com.yedam.blog.biz.admin.ProfileVO;
import com.yedam.blog.biz.layout.DetailsService;
import com.yedam.blog.biz.layout.DetailsVO;
import com.yedam.blog.biz.users.UsersService;
import com.yedam.blog.biz.users.UsersVO;

@Controller
public class widgetController {
	@Autowired
	ProfileService profileservice;

	@Autowired
	UsersService usersService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	DetailsService detailsService;
	
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
	
	//카테고리
		@RequestMapping("getCategory.do")
		public String getCategory(HttpServletRequest req, Model model){
			String blogId = req.getParameter("blogId");
			CategoryVO vo = new CategoryVO();
			vo.setUserId(blogId);
			List<CategoryVO> result = categoryService.getCategory(vo);
			model.addAttribute("category", result);
			return "/layoutview/categoryView";
		}
	
		
		@RequestMapping("getLetterView.do")
		public String getLetterView(HttpServletRequest req, Model model,DetailsVO vo){
			String blogId = req.getParameter("blogId");
			vo.setUserid(blogId);
			List<DetailsVO> result = detailsService.getDetailsList(vo);
			model.addAttribute("datas", result);
			return "/layoutview/letterListView";
		}
}
