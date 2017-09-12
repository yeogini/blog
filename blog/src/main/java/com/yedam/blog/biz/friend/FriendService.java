package com.yedam.blog.biz.friend;

import java.util.List;

public interface FriendService {

	public List<FriendVO> getFriendList(FriendVO vo);
	
	public void insertFriend(FriendVO vo);
	
	public void updateFrined(FriendVO vo);
	
	public void deleteFriend(FriendVO vo);
}
