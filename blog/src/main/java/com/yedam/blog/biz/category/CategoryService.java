package com.yedam.blog.biz.category;

import java.util.List;
import java.util.Map;

public interface CategoryService {

	//카테고리 추가
	void insertCategory(CategoryVO vo);
	
	//카테고리 삭제
	void deleteCategory(CategoryVO vo);
	
	//케테고리 수정
	void updateCategory(CategoryVO vo);
	
	//카테고리 목록
	List<Map<String, Object>> getCategoryList(CategoryVO vo);
}
