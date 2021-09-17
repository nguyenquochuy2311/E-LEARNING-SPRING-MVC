package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.AdminDAO;
import com.coeding.spring.repository.CategoryDAO;
import com.coeding.spring.vo.Admin;
import com.coeding.spring.vo.Category;

/**
 * @author Quoc Huy
 *
 */

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(Category vo) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @author KhaiPhan
	 *
	 */
	@Override
	public void update(Category vo) {
		// TODO Auto-generated method stub
		session.update("Category.catUpdate",vo);
		System.out.println("Category.catUpdate" + vo.toString());
	}

	@Override
	public void delete(Category vo) {
		// TODO Auto-generated method stub
		session.delete("Category.delete" , vo);
	}

	@Override
	public Category get(Category vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * @author KhaiPhan
	 *
	 */
	@Override
	public List<Category> list(Category vo) {
		// TODO Auto-generated method stub
		return session.selectList("Category.getCatList", vo);
	}
	
	@Override
	public void adminInsertCategory(Category vo) {
		// TODO Auto-generated method stub
		session.insert("Category.adminInsertCategory", vo);
	}
	
	@Override
	public Category admingetOneCategory(Category vo) {
		return (Category) session.selectOne("Category.admingetOneCategory", vo);
	}
	
	@Override
	public List<Category> listCatByCourse(Category vo) {
		// TODO Auto-generated method stub
		return session.selectList("Category.getCourseCatList", vo);
	}

	@Override
	public List<Category> listCatByJob(Category vo) {
		// TODO Auto-generated method stub
		return session.selectList("Category.getJobCatList", vo);
	}

	/**
	 * @author Minh Hieu
	 *
	 */
	
	@Override
	public Category CatByIdJob(Category vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Category.selectCatById", vo);
	}

	@Override
	public int selectCount() {
		return session.selectOne("Category.selectCount");
	}
	
}
