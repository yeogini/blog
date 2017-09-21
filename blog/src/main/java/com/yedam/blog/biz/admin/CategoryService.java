package com.yedam.blog.biz.admin;

import java.util.List;

public interface CategoryService {
	public List<CategoryVO> getCategory(CategoryVO vo);
	
	public void insertCategory(CategoryVO vo);
	
	public void updateCategory(CategoryVO vo);
	
	public void deleteCategory(CategoryVO vo);
	
	public CategoryVO getCategoryName(CategoryVO vo);
	
	public List<CategoryVO> getOnlyCategory(CategoryVO vo);
}
