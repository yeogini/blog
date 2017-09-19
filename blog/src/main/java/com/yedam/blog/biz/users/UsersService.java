package com.yedam.blog.biz.users;

import java.util.List;


public interface UsersService {

		public List<UsersVO> getUsersList();

		public void insertUsers(UsersVO vo);

		public UsersVO getUsers(UsersVO vo);

		public void updateUsers(UsersVO vo);

		public void deleteUsers(UsersVO vo);
		
		public int idChk(UsersVO vo);
}
