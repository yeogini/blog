package com.yedam.blog.view.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.yedam.blog.biz.admin.CategoryService;
import com.yedam.blog.biz.admin.CategoryVO;
import com.yedam.blog.biz.admin.ProfileService;
import com.yedam.blog.biz.admin.ProfileVO;
import com.yedam.blog.biz.friend.FriendService;
import com.yedam.blog.biz.friend.FriendVO;


@Controller
public class AdminController {
	@Autowired
	ProfileService profileservice;
	@Autowired
	FriendService friendService;

	//프로필 관리폼
	@RequestMapping("adminProfile.do")
	public String adminProfile(HttpSession session,ProfileVO vo,Model model){
		String userid = (String)session.getAttribute("login");
		vo.setUserid(userid);
		ProfileVO result = profileservice.getProfile(vo);
		model.addAttribute("profile", result);
		return "/blogAdmin/profile"; 
	}
	
	@RequestMapping(value="updateProfile.do", method=RequestMethod.POST)
	public String updateProfile(ProfileVO vo, HttpServletRequest request) throws IllegalStateException, IOException{
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;
		MultipartFile multipartFile = multipartRequest.getFile("blog_img_file");
		String upFolder = request.getSession().getServletContext().getRealPath("/resources/upload");
		//String upFolder ="C:\\Users\\User\\git\\blog\\blog\\src\\main\\webapp\\upload";
		if(!multipartFile.isEmpty()) {
			String fileName = vo.getUserid()+".jpg"; 
			multipartFile.transferTo(new File(upFolder,fileName));
			vo.setBlog_img(fileName); 
		}
		profileservice.updateProfile(vo);
		return "redirect:getBlogAdmin.do";
	}

	
	
	@RequestMapping("adminView.do")
	public String adminView(){
		return "/blogAdmin/admin";
	}
	
	//친구관리
	@RequestMapping("adminFriend.do")
	public String adminFriend(){
		return "/blogAdmin/friendad";
	}
	
	//친구 요청
	@RequestMapping("insertFriend.do")
	public String insertFriend(FriendVO vo){
		
		return "";
	}
	
	//친구 수락
	
	
	//친구 거절 ,삭제
	@RequestMapping("deleteFriend.do")
	public String deleteFriend(){
		return "";
	}
	
	
	
}
