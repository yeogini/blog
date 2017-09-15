package com.yedam.blog.reply.impl;

import java.util.List;

import com.yedam.blog.reply.ReplyVO;

public interface ReplyMapper {

	public List<ReplyVO> getReplyList(ReplyVO replyvo);

	public void insertReply(ReplyVO replyvo);
	
	public void deleteReply(ReplyVO replyvo);
	
	public ReplyVO getReply (ReplyVO replyvo);
}
