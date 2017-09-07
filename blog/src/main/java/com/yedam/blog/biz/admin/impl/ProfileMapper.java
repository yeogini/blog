package com.yedam.blog.biz.admin.impl;

import com.yedam.blog.biz.admin.ProfileVO;

public interface ProfileMapper {
public void insertProfile(ProfileVO vo);
	
	public ProfileVO getProfile(ProfileVO vo);
}
