package com.yedam.blog.biz.category.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.category.CategoryService;
import com.yedam.blog.biz.category.CategoryVO;

@Service("categoryService2")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryMapper2 cDAO;

	@Override
	public void insertCategory(CategoryVO vo) {
		
		cDAO.insertCategory(vo);
	}

	@Override
	public void deleteCategory(CategoryVO vo) {
		
		cDAO.deleteCategory(vo);
	}

	@Override
	public void updateCategory(CategoryVO vo) {
		
		cDAO.updateCategory(vo);
	}

	@Override
	public List<Map<String, Object>> getCategoryList(CategoryVO vo) {

		return cDAO.getCategoryList(vo);
	}
	
	
}
