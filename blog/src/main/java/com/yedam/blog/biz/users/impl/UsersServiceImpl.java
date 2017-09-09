package com.yedam.blog.biz.users.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.users.UsersService;
import com.yedam.blog.biz.users.UsersVO;

@Service("usersService")
public class UsersServiceImpl implements UsersService{

	@Autowired UsersMapper usersDAO;
	
	public UsersServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public List<UsersVO> getUsersList() {
		// TODO Auto-generated method stub
		return usersDAO.getUsersList();
	}

	@Override
	public void insertUsers(UsersVO vo) {
		// TODO Auto-generated method stub

		usersDAO.insertUsers(vo);

	}

	@Override
	public UsersVO getUsers(UsersVO vo) {
		// TODO Auto-generated method stub
		return usersDAO.getUsers(vo);
	}

	@Override
	public void updateUsers(UsersVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUsers(UsersVO vo) {
		// TODO Auto-generated method stub
		
	}

}
