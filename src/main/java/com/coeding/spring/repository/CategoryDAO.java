package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Category;

/**
 * @author Quoc Huy
 * 
 * */

public interface CategoryDAO extends DAO<Category> {
	
	List<Category> listCatByCourse(Category vo);
	
	List<Category> listCatByJob(Category vo);
	
	Category CatByIdJob(Category vo);
	
	int selectCount();
	
	public void update(Category vo);

	public Category admingetOneCategory(Category vo);

	void adminInsertCategory(Category vo);
}
