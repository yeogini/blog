package com.yedam.blog.view.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.users.UsersService;
import com.yedam.blog.biz.users.UsersVO;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;
	
	@RequestMapping("/getUsersList.do")
	public String getUsers(){
		System.out.println(usersService.getUsersList());
		return "/users/login";
	}
	

	@RequestMapping("/insertUserForm.do")
	public String insertUserForm(){
		return "/users/member";
	}
	@RequestMapping("/insertUser.do")
	public String insertUser(UsersVO vo){
		usersService.insertUsers(vo);
		return "redirect:getUsersList.do";
	}
	
	
	@RequestMapping("/blogList.do")
	public String getBlogList(){
		return "/blogBoard/blogList";
	}
	@RequestMapping("/blogList?hh.do")
	public String getBlogListDemo(){
		return "blogBoard/ajax_info";
	}

	@RequestMapping("/getBlogAdmin.do")
	public String getBlogAdmin() {
		return "/blogAdmin/admin";
	}
	
	@RequestMapping("/test.do")
	public String getTest() {
		return "/blogAdmin/test";
	}
}
