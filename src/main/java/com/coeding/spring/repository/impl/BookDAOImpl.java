package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.BookDAO;
import com.coeding.spring.vo.Book;

/**
 * 	DAO
 * @author KhaiPhan
 *
 */
@Repository
public class BookDAOImpl implements BookDAO {
	
	@Autowired
	SqlSessionTemplate session;

	@Override
	public void insert(Book vo) {
		// TODO Auto-generated method stub
		session.insert("Book.insert", vo);
	}

	@Override
	public void update(Book vo) {
		// TODO Auto-generated method stub
		session.update("Book.update", vo);
	}

	@Override
	public void delete(Book vo) {
		session.delete("Book.admindeletebook",vo);
		
	}

	@Override
	public Book get(Book book) {
		return session.selectOne("Book.selectOne", book);
	}

	@Override
	public List<Book> list(Book book) {
		return session.selectList("Book.selectList", book);
	}

	@Override
	public List<Book> listSearch(String keyword) {
		return session.selectList("Book.search", keyword);
	}
	@Override
	public void updatebookadmin(Book vo) {
		session.update("Book.updatebookadmin",vo);
		
	}

	@Override
	public List<Book> adminselectbooknotcheck() {
		return session.selectList("Book.adminselectListcheck");
	}

	@Override
	public void checkbookyes(Book vo) {
		session.update("Book.adminbookyes",vo);
		
	}

	@Override
	public Book getBookById(int book_id) {
		// TODO Auto-generated method stub
		return session.selectOne("Book.selectBookById", book_id);
	}
}
