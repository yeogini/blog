package com.yedam.blog.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReplyController {
	
//private static final Logger logger = LoggerFactory.getLogger(BlogSearchController.class);
	
	@Autowired
	ReplyService replyService;


	
	// 댓글 목록
	@RequestMapping(value="/getReplyList.do")
	@ResponseBody
	public List<ReplyVO> getReplyList(Model model, ReplyVO replyVO){
		return replyService.getReplyList(replyVO);
	}
	
	// 댓글 등록
	@RequestMapping(value="/insertReply.do")
	@ResponseBody
	public ReplyVO insertReply(Model model, ReplyVO replyVO){
		replyService.insertReply(replyVO);
		return replyVO;
	}
	
	// 댓글 삭제
	@RequestMapping(value="/deleteReply.do")
	@ResponseBody
	public void deleteReply(Model model, ReplyVO replyVO){
		replyService.deleteReply(replyVO);
	}
	
	
	
}
