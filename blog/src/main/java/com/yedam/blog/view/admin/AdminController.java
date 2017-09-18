package com.yedam.blog.view.admin;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String adminFriend(Model model,HttpSession session){
		String userid = (String)session.getAttribute("login");
		FriendVO vo = new FriendVO();
		vo.setUserid(userid);
		List<FriendVO> result = friendService.getFriendList(vo);
		model.addAttribute("friendList", result);
		return "/blogAdmin/friendad";
	}
	
	//친구 요청
	@RequestMapping("insertFriend.do")
	@ResponseBody
	public Map<String,? extends Object> insertFriend(@RequestBody FriendVO vo){

		FriendVO f1 = new FriendVO();
		FriendVO f2 = new FriendVO();
		f1.setUserid(vo.getUserid());
		f1.setF_id(vo.getF_id());
		f1.setF_state(1);
		f2.setUserid(vo.getF_id());
		f2.setF_id(vo.getUserid());
		f2.setF_state(2);
		
		
		friendService.insertFriend(f1);
		friendService.insertFriend(f2);
		 
		return Collections.singletonMap("result","success");
	}
	
	//친구 수락
	@RequestMapping("updateFriend.do")
	@ResponseBody
	public FriendVO updateFriend(FriendVO vo,HttpServletRequest req){
		
		int no = Integer.parseInt(req.getParameter("no"));

		System.out.println("친구 = " + no);
		vo.setF_no(no);
		FriendVO f1 = new FriendVO();
		FriendVO f2 = new FriendVO();
		
		f1 = friendService.getFriend(vo);
		f2.setF_id(f1.getUserid());
		f2.setUserid(f1.getF_id());
		
		friendService.updateFrined(f1);
		friendService.updateFrined(f2);
		return f1;
	}
	
	//친구 거절 ,삭제
	@RequestMapping("deleteFriend.do")
	public String deleteFriend(){
		return "";
	}
	
	
	
}
