package com.yedam.blog.view.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.users.UsersService;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;
	
	@RequestMapping("/getUsersList.do")
	public String getUsers(){
		System.out.println(usersService.getUsersList());
		return "/users/login";
	}
	
<<<<<<< HEAD
	@RequestMapping("/insertUser.do")
	public String insertUser(){
		return "/users/member";
	}
	
	@RequestMapping("/blogList.do")
	public String getBlogList(){
		return "/blogBoard/blogList";
	}
	@RequestMapping("/blogList?hh.do")
	public String getBlogListDemo(){
		return "blogBoard/ajax_info";
=======
	@RequestMapping("/getBlogAdmin.do")
	public String getBlogAdmin() {
		return "/blogAdmin/admin";
	}
	
	@RequestMapping("/test.do")
	public String getTest() {
		return "/blogAdmin/test";
>>>>>>> branch 'master' of https://github.com/yeogini/blog.git
	}
}
