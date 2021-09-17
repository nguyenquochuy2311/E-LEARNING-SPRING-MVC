package com.coeding.spring.controller;

import java.text.DateFormat;
import java.util.ArrayList;
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

import com.coeding.spring.repository.impl.TeacherDAOImpl;
import com.coeding.spring.service.impl.AdminServiceImpl;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.service.impl.StudentServiceImpl;
import com.coeding.spring.service.impl.TeacherServiceImpl;
import com.coeding.spring.vo.Admin;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;

@Controller
public class HomeAdminController {
	private static final Logger logger = LoggerFactory.getLogger(HomeAdminController.class);
	private String email;
	private int sumTeacher;
	private int sumStudent;
	private int sumCourse;
	private int sumAdmin;
	public static Admin admin;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private AdminServiceImpl service;

	@Autowired
	private TeacherServiceImpl Tservice;
//	
	@Autowired
	private StudentServiceImpl Sservice;
//	
	@Autowired
	private CourseServiceImpl Cservice;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "adminhai/page-login";

	}

	@RequestMapping(value = "/admin/login", method = RequestMethod.POST)
	public String login(Admin vo, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		logger.info("Welcome home! The client locale is {}.", locale);
		System.out.println(vo);
		admin = service.login(vo);
		if (admin != null) {
			mappercuahai(model);
			email = admin.getEmail();
			session.setAttribute("id", admin.getId());
			session.setAttribute("email", vo.getEmail());
			return "redirect:/admin/index";

		} else {
			model.addAttribute("errorMessage", "Invalid user or password");
			return "adminhai/page-login";
		}
	}

	@RequestMapping(value = "/admin/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpSession session) {

		session.removeAttribute("email");
		email = null;
		return "adminhai/page-login";

	}

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("email") != null) {
			mappercuahai(model);

			System.out.println(email);

			return "adminhai/index";
		} else {
			return "adminhai/page-login";
		}

	}

	@RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
	public String profile(Locale locale, Model model, HttpSession session) {
//		System.out.println(email);
		String email = (String) session.getAttribute("email");
		Admin vo = new Admin();
		vo.setEmail(email);
//		System.out.println(email);
		Admin vo1 = service.getProfile(vo);
//		System.out.println(vo1.getAddress());
		admin = vo1;

		model.addAttribute("admin", admin);

		return "adminhai/admin-profile";

	}

	public void mappercuahai(Model model) {
		Map<String, Object> mapAtriibute = new HashMap<String, Object>();
//		
		List<Course> allcourse = Cservice.getallv1();
////		for(Course c:allcourse) {
////			System.out.println("so luong hoc sinh cua khoa hoc: : " +c.getTitle()+" la " +c.getStudent());
////		}
////		System.out.println(allcourse.toString());
//		
		List<Student> listStudent = Sservice.selectTop5();
//		 System.out.println(listStudent.toString());
//		
//		 System.out.println(admin);
//		
//		

		List<Join> listjoiadmin = Sservice.listJoinAdmin();
		List<Student> joinstudent = new ArrayList<Student>();
		List<Course> joincourse = new ArrayList<Course>();
		List<String> joinall = new ArrayList<String>();
		for (Join j : listjoiadmin) {
			Student s = new Student();
			s.setId(j.getStudentId());
//			System.out.println(s.toString());

			Student s1 = Sservice.get(s);
			if (s1 != null) {
				joinstudent.add(s1);
				joinall.add(s1.getFirstName());
			}
			Course c = Cservice.getCourse(j.getCourseId());
//			System.out.println(c.toString());
			joincourse.add(c);

			if (c != null) {
				joinall.add(c.getTitle());
			}

		}
		for (String s : joinall) {
			System.out.println(s);
		}
		System.out.println(joinall.toString());

		sumTeacher = Tservice.getSum();
		sumStudent = Sservice.getSum();
		sumCourse = Cservice.getSum();
		sumAdmin = service.getSum();
//		mapAtriibute.put("studentjoin",joinstudent);
		mapAtriibute.put("coursejoin", joinall);

		mapAtriibute.put("sumadmin", sumAdmin);
		mapAtriibute.put("sumteacher", sumTeacher);
		mapAtriibute.put("sumstudent", sumStudent);
		mapAtriibute.put("admin", admin);
		mapAtriibute.put("sumcourse", sumCourse);

		mapAtriibute.put("liststudent", listStudent);
//		
		mapAtriibute.put("listcourse", allcourse);

		model.addAllAttributes(mapAtriibute);
	}

}
