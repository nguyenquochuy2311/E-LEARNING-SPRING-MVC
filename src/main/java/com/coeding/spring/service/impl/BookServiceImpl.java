package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.BookDAO;
import com.coeding.spring.vo.Book;

/**
 * bookService
 * 
 * @author KhaiPhan
 *
 */
@Service("bookService")
public class BookServiceImpl {
	
	@Autowired
	private BookDAO bookRepo;
	
	public Book getBook(Book book) {
		return bookRepo.get(book);
	}
	
	public List<Book> getBookList(Book book) {
		return bookRepo.list(book);
	}
	
	public void updatebookadmin(Book vo) {
		bookRepo.updatebookadmin(vo);
	}
	public List<Book> adminselectbooknotcheck(){
		return bookRepo.adminselectbooknotcheck();
	}
	public void adminbookyes(Book vo) {
		bookRepo.checkbookyes(vo);
	}
	public void admindeletebook(Book vo) {
		bookRepo.delete(vo);
	}
	public void insert(Book book) {
		bookRepo.insert(book);
	}
	public void update(Book book) {
		bookRepo.update(book);
	}
	public List<Book> listSearch(String keyword){
		return bookRepo.listSearch(keyword);
	}
	public Book getBookById(int book_id) {
		return bookRepo.getBookById(book_id);
	}
}
