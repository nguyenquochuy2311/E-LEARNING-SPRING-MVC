package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Book;

/**
 * 
 * @author KhaiPhan
 *
 */
public interface BookDAO extends DAO<Book>{

	List<Book> listSearch(String keyword);
	void updatebookadmin(Book vo);
	List<Book> adminselectbooknotcheck();
	void checkbookyes(Book vo);
	
	Book getBookById(int book_id);
}
