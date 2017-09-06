package com.yedam.blog.view.bloglist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.blog.biz.bloglist.BlogListService;
import com.yedam.blog.biz.bloglist.BlogListVO;

@Controller
public class BlogListController {
	@Autowired
	BlogListService bloglistService;
	
	//블로그 목록
	@RequestMapping("/blog.do")
	public ModelAndView getBlogList(BlogListVO vo,ModelAndView mv){
		List<BlogListVO> list =bloglistService.getBlogList(vo);
		mv.addObject("bloglist",list);
		mv.setViewName("/board/list");
		return mv;
	}
}
