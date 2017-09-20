package com.yedam.blog.biz.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.blog.biz.admin.CategoryService;
import com.yedam.blog.biz.admin.CategoryVO;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryMapper categoryDAO;
	@Override
	public List<CategoryVO> getCategory(CategoryVO vo) {
		// TODO Auto-generated method stub
		return categoryDAO.getCategory(vo);
	}

	@Override
	public void insertCategory(CategoryVO vo) {
		// TODO Auto-generated method stub
		categoryDAO.insertCategory(vo);
	}

	@Override
	public void updateCategory(CategoryVO vo) {
		// TODO Auto-generated method stub
		categoryDAO.updateCategory(vo);
	}

	@Override
	public void deleteCategory(CategoryVO vo) {
		// TODO Auto-generated method stub
		categoryDAO.deleteCategory(vo);
	}

	@Override
	public CategoryVO getCategoryName(CategoryVO vo) {
		// TODO Auto-generated method stub
		return categoryDAO.getCategoryName(vo);
	}

}
