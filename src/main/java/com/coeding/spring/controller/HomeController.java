package com.coeding.spring.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coeding.spring.service.CategoryService;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.service.impl.StudentServiceImpl;
import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.User;

/**
 * @author Quoc huy
 * Home Page
 */

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private CourseServiceImpl courseServiceImpl;
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user")!=null) {
			User user = (User) session.getAttribute("user");
			if(user.getRole()==2) {
				return "redirect:/teacher-area";
			}else if(user.getRole()==3) {
				return "redirect:/business-account";
			}
		}
		
		List<Course> courseList = courseServiceImpl.getListCourse(null);
		model.addAttribute("courseList", courseList);
		System.out.println("allcourse: " + courseList.toString());
		
		List<Student> listStudent = studentServiceImpl.selectTop5();
		model.addAttribute("listStudent", listStudent);
		System.out.println("listStudent : " + listStudent.toString());
		
		return "home";
	}
	
}
