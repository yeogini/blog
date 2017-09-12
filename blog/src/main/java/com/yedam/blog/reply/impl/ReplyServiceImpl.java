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
	public List<ReplyVO> thisLetterReply() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
