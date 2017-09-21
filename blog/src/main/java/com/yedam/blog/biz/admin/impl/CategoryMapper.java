package com.yedam.blog.biz.admin.impl;

import java.util.List;

import com.yedam.blog.biz.admin.CategoryVO;

public interface CategoryMapper {
public List<CategoryVO> getCategory(CategoryVO vo);
	
	public void insertCategory(CategoryVO vo);
	
	public void updateCategory(CategoryVO vo);
	
	public void deleteCategory(CategoryVO vo);
	
	public CategoryVO getCategoryName(CategoryVO vo);
	
	
}
