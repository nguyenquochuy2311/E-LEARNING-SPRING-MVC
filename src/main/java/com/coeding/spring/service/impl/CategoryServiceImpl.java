package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.CategoryDAO;
import com.coeding.spring.service.CategoryService;
import com.coeding.spring.vo.Category;

/**
 * @author Quoc Huy
 */
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryDAO catDao;

	@Override
	public List<Category> getCourseList(Category vo) {
		// TODO Auto-generated method stub
		return catDao.listCatByCourse(vo);
	}

	@Override
	public List<Category> getJobList(Category vo) {
		// TODO Auto-generated method stub
		return catDao.listCatByJob(vo);
	}

	@Override
	public void insert(Category vo) {
		// TODO Auto-generated method stub
		catDao.adminInsertCategory(vo);
	}

	/**
	 * @author KhaiPhan
	 */
	@Override
	public void update(Category vo) {
		// TODO Auto-generated method stub
		catDao.update(vo);
	}

	@Override
	public void delete(Category vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Category get(Category vo) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @author KhaiPhan
	 */
	@Override
	public List<Category> list(Category vo) {
		// TODO Auto-generated method stub
		return catDao.list(vo);
	}

	@Override
	public Category admingetOneCategory(Category vo) {
		// TODO Auto-generated method stub
		return catDao.admingetOneCategory(vo);
	}

	public void adminInsertCategory(Category vo) {
		// TODO Auto-generated method stub
		catDao.adminInsertCategory(vo);
	}
	
	@Override
	public Category CatByIdJob(Category vo) {
		// TODO Auto-generated method stub
		return catDao.CatByIdJob(vo);
	}

	@Override
	public int selectCount() {
		
		return catDao.selectCount();
	}

}
