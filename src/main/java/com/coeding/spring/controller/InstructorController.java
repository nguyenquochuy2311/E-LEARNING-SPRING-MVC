package com.coeding.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.service.impl.StudentServiceImpl;
import com.coeding.spring.service.impl.TeacherServiceImpl;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;

/**
 * Handles requests for the application home page.
 */
/**
 * 
 * @author KhaiPhan
 *
 */
@Controller
@RequestMapping("/instructor")
public class InstructorController {
	
	private static final Logger logger = LoggerFactory.getLogger(InstructorController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private TeacherServiceImpl teacherService;
	@Autowired
	private CourseServiceImpl courseServiceImpl;
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String homeInstructor(Locale locale, Model model) {
		logger.info("Welcome KHAI's home! The client locale is {}.", locale);

		System.out.println(" --------------- Welcome List Instructor --------------- ");
		
		Map<String, Object> mapAtriibute = new HashMap<String, Object>();
		
		List<Teacher> listTeacher = teacherService.list(null);
		model.addAttribute("teacherList", listTeacher);
		System.out.println("listTeacher : " + listTeacher);
		
		List<Course> courseList = courseServiceImpl.getListCourse(null);
		model.addAttribute("courseList", courseList);
		System.out.println("allcourse: " + courseList.toString());
	
		List<Student> listStudent = studentServiceImpl.selectTop5();
		mapAtriibute.put("liststudent", listStudent);
		System.out.println("listStudent : " + listStudent.toString());
		
		model.addAllAttributes(mapAtriibute);
		return "instructor/home";	//return "book.jsp";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detailInstructor(@RequestParam(value="id")  Integer id, Locale locale, Model model) {
		logger.info("Welcome KHAI's home! The client locale is {}.", locale);
		
		List<Student> listStudent = studentServiceImpl.selectTop5();
		model.addAttribute("listStudent", listStudent);
		System.out.println("listStudent" + listStudent);	
		
		System.out.println(" --------------- Welcome Detail Instructor --------------- ");
		
		Teacher vo = new Teacher();
		vo.setId(id.intValue());
		Teacher teacher = teacherService.get(vo);

		model.addAttribute("teacher", teacher);
	
		return "instructor/detail";	
	}
	
}
