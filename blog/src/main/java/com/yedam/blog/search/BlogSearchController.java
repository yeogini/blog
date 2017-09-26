package com.yedam.blog.search;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.blog.search.*;

@Controller
public class BlogSearchController {
	
//private static final Logger logger = LoggerFactory.getLogger(BlogSearchController.class);
	
	@Autowired
	BlogSearchService blogSearchService;

	// 최신 글 (=newestLetter.jsp)
	@RequestMapping(value="/newestLetter.do", method=RequestMethod.GET)
	public String newestLetter(Model model,HttpServletRequest req){
		String blogId = req.getParameter("blogId");
		List<BlogSearchVO> result =blogSearchService.getBlogSearchNewestLetter(blogId);
		model.addAttribute("newestLetterlist", result);
		model.addAttribute("id", blogId);
		return "blogSearch/newestLetter";
		
	}
	
	// 최신 댓글 (=newestReply.jsp)
	@RequestMapping(value="/newestReply.do", method=RequestMethod.GET)
	public String newestReply(Model model,HttpServletRequest req){
		String blogId = req.getParameter("blogId");
		List<BlogSearchVO> result = blogSearchService.getBlogSearchNewestReply(blogId);
		model.addAttribute("newestReplylist", result);
		model.addAttribute("id", blogId);
		return "blogSearch/newestReply";
	}
	
	// 베스트 글 (=bestLetter.jsp)
	@RequestMapping(value="/bestLetter.do", method=RequestMethod.GET)
	public String bestLetter(Model model,HttpServletRequest req){
		String blogId = req.getParameter("blogId");
		List<BlogSearchVO> result = blogSearchService.getBlogSearchBestLetter(blogId);
		model.addAttribute("bestLetterlist", result);
		model.addAttribute("id", blogId);
		return "blogSearch/bestLetter";
	}
	
	
	
}
