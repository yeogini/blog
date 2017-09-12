package com.yedam.blog.reply;

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
public class ReplyController {
	
//private static final Logger logger = LoggerFactory.getLogger(BlogSearchController.class);
	
	@Autowired
	ReplyService replyService;


	
	// 최신 댓글 (=newestReply.jsp)
	@RequestMapping(value="/thisLetterReply.do", method=RequestMethod.GET)
	public String newestReply(Model model){
		model.addAttribute("thisLetterReply", replyService.thisLetterReply());
		return "blogSearch/newestReply";
	}
	
	
	
}
