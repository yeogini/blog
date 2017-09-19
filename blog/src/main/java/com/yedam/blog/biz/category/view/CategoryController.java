package com.yedam.blog.biz.category.view;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.blog.biz.category.CategoryService;
import com.yedam.blog.biz.category.CategoryVO;

@Controller
public class CategoryController {

	@Resource(name="categoryService2")
	CategoryService categoryService;
	
	//카테고리 추가
	@RequestMapping("/insertCategory.do")
	public String insertCategory(CategoryVO vo){
		vo.setUserid("aaa");
		categoryService.insertCategory(vo);
		return "redirect:/getCategoryList.do";
	}
	
	//카테고리 수정
	@RequestMapping("/updateCategory.do")
	public String updateCategory(CategoryVO vo){
		categoryService.updateCategory(vo);
		return "redirect:/getCategoryList.do";
	}
	
	//카테고리 삭제
	@RequestMapping("/deleteCategory.do")
	public String deleteCategory(CategoryVO vo){
		categoryService.deleteCategory(vo);
		return "redirect:/getCategoryList.do";
	}
	
	//카테고리 목록
	@RequestMapping("/CategoryList.do")
	public String getCategoryList(Model model, CategoryVO vo){
		List<Map<String, Object>> list = categoryService.getCategoryList(vo);
		model.addAttribute("CategoryList",list);
		return "category/categoryView";
	}
}
