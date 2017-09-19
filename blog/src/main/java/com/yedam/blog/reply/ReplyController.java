package com.yedam.blog.reply;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.blog.biz.black.BlackService;
import com.yedam.blog.biz.black.BlackVO;

@Controller
public class ReplyController {
	
//private static final Logger logger = LoggerFactory.getLogger(BlogSearchController.class);
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	BlackService blackService;

	@RequestMapping(value="/getReplyList.do")
	@ResponseBody
	public List<ReplyVO> getReplyList(Model model, ReplyVO replyVO){
		return replyService.getReplyList(replyVO);
	}
	
	// 댓글 등록
	@RequestMapping(value="/insertReply.do")
	@ResponseBody
	public ReplyVO insertReply(Model model, ReplyVO replyVO, HttpSession session){
		BlackVO blackVo = new BlackVO();
		blackVo.setD_id(replyVO.getUserId());										// 블랙
		blackVo.setUserid((String)session.getAttribute("blogId"));					// 차단하는 사람
		blackVo = blackService.selectBlack(blackVo);
		
		if(blackVo == null) {
			replyService.insertReply(replyVO);
			replyVO=replyService.getReply(replyVO);		/*글 등록 후 바로 날짜와 삭제 버튼 바로 보이게 하기*/
			return replyVO;
		} else {
			return replyVO;
		}
		
	}
	
	
	
	// 댓글 삭제
	@RequestMapping(value="/deleteReply.do")
	@ResponseBody
	public Integer deleteReply(Model model, ReplyVO replyVO){
		replyService.deleteReply(replyVO);
		return replyVO.getReplyNo();
	}
	
	
	
}
