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

import com.coeding.spring.repository.impl.CourseDAOImpl;
import com.coeding.spring.service.TeacherService;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.service.impl.TeacherServiceImpl;
import com.coeding.spring.vo.Book;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Teacher;

@Controller
public class AdminCheckStatusController {

	@Autowired
	CourseServiceImpl cservice;
	@Autowired
	TeacherServiceImpl tservice;
 	@Autowired
	BookServiceImpl bservice;
	@RequestMapping(value = "/admin/check-lesson", method = RequestMethod.GET)
	public String checkLesson(Locale locale, Model model, HttpSession session) {
		List<Lesson> lessonnotcheck = cservice.selectLessonNotCheck();

		List<Course> listCourse = new ArrayList<Course>();
		for (Lesson l : lessonnotcheck) {
			
			Course c = new Course();
			c.setId(l.getCourseId());
			Course course = cservice.adminGetOne(c);
			listCourse.add(course);
		}
		
		List<Teacher> listTeacher=new ArrayList<Teacher>();
		for (Lesson l : lessonnotcheck) {
			
			Teacher c = new Teacher();
			c.setId(l.getTeacherId());
			Teacher teacer = tservice.admingetOne(c);
			listTeacher.add(teacer);
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("lesson", lessonnotcheck);
		map.put("course", listCourse);
		map.put("teacher", listTeacher);
		model.addAllAttributes(map);
		return "adminhai/check-lesson";
	}
	
	@RequestMapping(value = "/admin/lesson-yes", method = RequestMethod.GET)
	public String yes(Locale locale, Model model, HttpSession session,Lesson vo) {
		System.out.println(vo.toString());
		cservice.checklessonyes(vo);
		return "redirect:/admin/detail-course?id="+vo.getCourseId();
	}
	@RequestMapping(value = "/admin/lesson-no", method = RequestMethod.GET)
	public String no(Locale locale, Model model, HttpSession session,Lesson vo) {
		System.out.println(vo.toString());
		cservice.deletesessionadmin(vo);
		return "redirect:/admin/check-lesson";
	}
	@RequestMapping(value = "/admin/check-book", method = RequestMethod.GET)
	public String checkBook(Locale locale, Model model, HttpSession session) {
		List<Book> booklist=bservice.adminselectbooknotcheck();
		List<Course> listCourse = new ArrayList<Course>();
		for (Book l : booklist) {
			
			Course c = new Course();
			c.setId(l.getCourseId());
			Course course = cservice.adminGetOne(c);
			listCourse.add(course);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("booklist", booklist);
		map.put("course", listCourse);
		
		model.addAllAttributes(map);
		return "adminhai/check-book";
	}
}
