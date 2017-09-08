package com.yedam.blog.view.users;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.admin.ProfileService;
import com.yedam.blog.biz.users.UsersService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.blog.biz.users.UsersService;
import com.yedam.blog.biz.users.UsersVO;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;
	@Autowired
	ProfileService profileservice;
	
	@RequestMapping("/getUsersList.do")
	public String getUsers(){
		System.out.println(usersService.getUsersList());
		return "/users/login";
	}
	//회원가입 폼
	@RequestMapping("/insertUserForm.do")
	public String insertUserForm(){
		return "/users/member";
	}
	//회원가입
	@RequestMapping("/insertUser.do")
	public String insertUser(UsersVO vo){
		usersService.insertUsers(vo);
		return "redirect:getUsersList.do";
	}
	
	
	@RequestMapping("/blogList.do")
	public String getBlogList(){
		return "/blogBoard/blogList";
	}
	
	@RequestMapping("/getBlogAdmin.do")
	public String getBlogAdmin() {
		return "/blogAdmin/admin";
	}
	
	@RequestMapping("/test.do")
	public String getTest() {
		return "/blogAdmin/test";
	}
	
	//로그인
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public String login(UsersVO vo,HttpSession session){
		UsersVO result = new UsersVO();
		if(vo!=null) {
			result = usersService.getUsers(vo);
			if(result==null) {
				return "/users/login";
			} else {
				if(result.getUserPass().equals(vo.getUserPass())) {
					session.setAttribute("login",result.getUserid());
					return "/blogAdmin/admin";
				} else {
					return "/users/login";
				}
			}
		} else {
			return "/users/login";
		}
		
	}
	//로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "/users/login";
	}
	
	//프로필 관리
	@RequestMapping("adminProfile.do")
	public String adminProfile(){
		return "/blogAdmin/profile"; 
	}
}
