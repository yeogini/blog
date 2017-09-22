package com.yedam.blog.biz.friend.impl;

import java.util.List;

import com.yedam.blog.biz.friend.FriendVO;

public interface FriendMapper {

public List<FriendVO> getFriendList(FriendVO vo);
	
	public void insertFriend(FriendVO vo);
	
	public void updateFrined(FriendVO vo);
	
	public void deleteFriend(FriendVO vo);
	
	public FriendVO getFriend(FriendVO vo);
	
	public int addFriendSession(FriendVO vo);
}
