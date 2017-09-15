package com.yedam.blog.reply;

import java.util.List;

public interface ReplyService {

	public List<ReplyVO>  getReplyList(ReplyVO replyvo);
	
	public void insertReply(ReplyVO replyvo);
	
	public void  deleteReply(ReplyVO replyvo);
	
	public ReplyVO getReply (ReplyVO replyvo);
	
}
