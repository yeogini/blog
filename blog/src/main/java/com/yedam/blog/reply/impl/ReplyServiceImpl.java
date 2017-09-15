package com.yedam.blog.reply.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.reply.ReplyService;
import com.yedam.blog.reply.ReplyVO;
import com.yedam.blog.search.BlogSearchService;
import com.yedam.blog.search.BlogSearchVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyMapper replyDAO;

	@Override
	public List<ReplyVO> getReplyList(ReplyVO replyvo) {
		return replyDAO.getReplyList(replyvo);
	}

	@Override
	public void insertReply(ReplyVO replyvo) {
		replyDAO.insertReply(replyvo);
	}

	@Override
	public void deleteReply(ReplyVO replyvo) {
		replyDAO.deleteReply(replyvo);
	}

	@Override
	public ReplyVO getReply(ReplyVO replyvo) {
		// TODO Auto-generated method stub
		return replyDAO.getReply(replyvo);
	}

}
