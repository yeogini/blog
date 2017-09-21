package com.yedam.blog.biz.category.view;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.blog.biz.admin.CategoryService;
import com.yedam.blog.biz.admin.CategoryVO;



@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;
	
	//카테고리 추가
	@RequestMapping("/insertCategory.do")
	@ResponseBody
	public CategoryVO insertCategory(CategoryVO vo){
		
		System.out.println("-----------------"+vo);
		if(vo.getType().equals("n")) {
			vo.setCategoryName("게시판");
		} else if(vo.getType().equals("t")) {
			vo.setCategoryName("그룹");
		} else {
			vo.setCategoryName("-----");
		}
	
		categoryService.insertCategory(vo);
		return vo;
	}
	
	//카테고리 수정
	@RequestMapping("/updateCategory.do")
	@ResponseBody
	public CategoryVO updateCategory(@RequestBody CategoryVO vo){
		System.err.println(vo);
		categoryService.updateCategory(vo);
		return vo;
	}
	 
	//카테고리 삭제
	@RequestMapping("/deleteCategory.do")
	@ResponseBody
	public CategoryVO deleteCategory(CategoryVO vo){
		System.out.println("삭제 ==" +vo.getCategoryNo());
		categoryService.deleteCategory(vo);
		return vo;
	}
	
	//카테고리 목록
	@RequestMapping("/CategoryList.do")
	public String getCategoryList(Model model, CategoryVO vo,HttpSession session){
		String userid = (String)session.getAttribute("login");
		vo.setUserId(userid);
		List<CategoryVO> list = categoryService.getCategory(vo);
		model.addAttribute("CategoryList",list);
		return "category/categoryView";
	}
}
