package com.coeding.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coeding.spring.service.BookService;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.vo.Book;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Lesson;

@Controller
public class AdminBookController {
	@Autowired
	BookServiceImpl bservice;
	@Autowired
	CourseServiceImpl cservice;
	@RequestMapping(value = "/admin/list-book", method = RequestMethod.GET)
	public String listBook(Locale locale, Model model, HttpSession session) {
		List<Book> getlistbook=bservice.getBookList(null);
		
		List<Course> listCourse = new ArrayList<Course>();
		for (Book l : getlistbook) {
			
			Course c = new Course();
			c.setId(l.getCourseId());
			Course course = cservice.adminGetOne(c);
			listCourse.add(course);
		}
		
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("listbook", getlistbook);
		map.put("course", listCourse);
		model.addAllAttributes(map);
		
		return "adminhai/list-book";
	}
	@RequestMapping(value = "/admin/update-book", method = RequestMethod.POST)
	public String updatebookadmin(Locale locale, Model model, Book vo) {
		bservice.updatebookadmin(vo);
		return "redirect:/admin/list-book";
	}
	@RequestMapping(value = "/admin/book-yes", method = RequestMethod.GET)
	public String yes(Locale locale, Model model, Book vo) {
		bservice.adminbookyes(vo);
		return "redirect:/admin/list-book";
	}
	@RequestMapping(value = "/admin/book-delete", method = RequestMethod.GET)
	public String delete(Locale locale, Model model, Book vo) {
		bservice.admindeletebook(vo);
		return "redirect:/admin/list-book";
	}
}
