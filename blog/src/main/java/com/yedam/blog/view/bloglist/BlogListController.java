package com.yedam.blog.view.bloglist;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.blog.biz.bloglist.BlogListService;
import com.yedam.blog.biz.bloglist.BlogListVO;
import com.yedam.blog.biz.bloglist.BlogSearchListVO;
import com.yedam.blog.biz.users.UsersService;
import com.yedam.util.Paging;

@Controller
public class BlogListController {
	@Autowired
	BlogListService bloglistService;
	@Autowired
	UsersService usersService;
	
	//블로그 목록
	@RequestMapping("/blog.do")
	public ModelAndView getBlogList(BlogSearchListVO vo,ModelAndView mv,HttpServletRequest req){
		Paging paging = new Paging();
		String spage = req.getParameter("page");
		int page = 1;
		if(spage !=null) {
			page = Integer.parseInt(spage);
		}
		paging.setPage(page);
		paging.setTotalRecord(usersService.getUsersList().size());
		int start, end;
		start = (page*paging.getPageUnit())-(paging.getPageUnit()-1);
		end = start + paging.getPageUnit() -1;
		vo.setStart(start);
		vo.setEnd(end);
		
		List<BlogListVO> list =bloglistService.getBlogSearchList(vo);
		mv.addObject("paging",paging);
		mv.addObject("bloglist",list);
		mv.setViewName("/board/list");
		return mv;
	}
	@RequestMapping("getBlogListAjax.do")
	public List<BlogListVO> getBlogListAjax(Map<String,String> map){
		
		Paging paging = new Paging();
		int page = 1;
		System.out.println(map.get("page"));
		paging.setPage(page);
		int start, end;
		start = (page*paging.getPageUnit())-(paging.getPageUnit()-1);
		end = start + paging.getPageUnit() -1;
		BlogSearchListVO vo = new BlogSearchListVO();
		vo.setStart(start);
		vo.setEnd(end);

		return bloglistService.getBlogSearchList(vo);
	}
}
