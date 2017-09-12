package com.yedam.blog.biz.admin.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.admin.ProfileService;
import com.yedam.blog.biz.admin.ProfileVO;

@Service("profileservice")
public class ProfileServiceImpl implements ProfileService{
	@Autowired
	ProfileMapper profileDAO;
	
	@Override
	public void updateProfile(ProfileVO vo) {
		// TODO Auto-generated method stub
		profileDAO.updateProfile(vo);
	}

	@Override
	public ProfileVO getProfile(ProfileVO vo) {
		// TODO Auto-generated method stub
		return profileDAO.getProfile(vo);
	}

}
