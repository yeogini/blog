package com.yedam.blog.biz.users.impl;

import java.util.List;

import com.yedam.blog.biz.users.UsersVO;


public interface UsersMapper {

		public List<UsersVO> getUsersList();

		public void insertUsers(UsersVO vo);

		public UsersVO getUsers(UsersVO vo);

		public void updateUsers(UsersVO vo);

		public void deleteUsers(UsersVO vo);
}
