package com.coeding.spring.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.vo.Book;

/**
 * 
 * @author KhaiPhan
 *
 */
@Controller
@RequestMapping("/search")
public class SearchController {
	
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
//	@Autowired
//	private SearchServiceImpl searchServiceImpl;
	@Autowired
	private BookServiceImpl bookServiceImpl;

	@RequestMapping(value = {""}, method = RequestMethod.GET)
	public String searchAllHomes(@RequestParam(value="searchtext") String searchtext, Locale locale, Model model) {
		logger.info("\nWelcome home! The client locale is {}.", locale);
		
		System.out.println("searchtext = " + searchtext);
	
		List<Book> result = bookServiceImpl.listSearch(searchtext);
		model.addAttribute("result", result);		
			
		System.out.println("result = " + result);
		System.out.println(" --------------- Search --------------- ");
		return "search/searchHome";	
	}
}