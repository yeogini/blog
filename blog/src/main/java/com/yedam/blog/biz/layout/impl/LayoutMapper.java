package com.yedam.blog.biz.layout.impl;

import com.yedam.blog.biz.layout.LayoutVO;

public interface LayoutMapper {

	public void insertLayout(LayoutVO vo);
	
	public void updateLayout(LayoutVO vo);

	LayoutVO getLayout(LayoutVO vo);
}
