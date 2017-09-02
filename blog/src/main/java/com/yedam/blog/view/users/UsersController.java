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
}
