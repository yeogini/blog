package com.yedam.blog.biz.friend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.friend.FriendService;
import com.yedam.blog.biz.friend.FriendVO;

@Service("friendService")
public class FriendServiceImpl implements FriendService{

	@Autowired
	FriendMapper friendDAO;
	
	@Override
	public List<FriendVO> getFriendList(FriendVO vo) {
		// TODO Auto-generated method stub
		return friendDAO.getFriendList(vo);
	}

	@Override
	public void insertFriend(FriendVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateFrined(FriendVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFriend(FriendVO vo) {
		// TODO Auto-generated method stub
		
	}

}
