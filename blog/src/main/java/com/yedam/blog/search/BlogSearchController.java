package com.yedam.blog.search;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
	public String newestLetter(Model model){
		model.addAttribute("newestLetterlist", blogSearchService.getBlogSearchNewestLetter());
		return "blogSearch/newestLetter";
		
	}
	
	// 최신 댓글 (=newestReply.jsp)
	@RequestMapping(value="/newestReply.do", method=RequestMethod.GET)
	public String newestReply(Model model){
		model.addAttribute("newestReplylist", blogSearchService.getBlogSearchNewestReply());
		return "blogSearch/newestReply";
	}
	
	// 베스트 글 (=bestLetter.jsp)
	@RequestMapping(value="/bestLetter.do", method=RequestMethod.GET)
	public String bestLetter(Model model){
		model.addAttribute("bestLetterlist", blogSearchService.getBlogSearchBestLetter());
		return "blogSearch/bestLetter";
	}
	
	
	
}
