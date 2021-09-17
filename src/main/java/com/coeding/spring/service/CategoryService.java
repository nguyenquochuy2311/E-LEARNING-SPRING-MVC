package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Category;

/**
 * 
 * @author Quoc Huy
 *
 */
public interface CategoryService extends SV<Category> {
	
	List<Category> getCourseList(Category vo);
	
	List<Category> getJobList(Category vo);
	
	Category CatByIdJob(Category vo);
	
	int selectCount();
	
	Category admingetOneCategory(Category vo);
	
	void adminInsertCategory(Category vo);
}
