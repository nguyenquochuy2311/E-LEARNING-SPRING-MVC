package com.coeding.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;


import com.coeding.spring.service.impl.StudentServiceImpl;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;

@Controller
public class AdminStudentController {
	@Autowired
	ServletContext c;
	@Autowired
	private StudentServiceImpl sservice;

	@RequestMapping(value = "/admin/all-students", method = RequestMethod.GET)
	public String add(Locale locale, Model model, HttpSession session) {
		List<Student> listStudent=sservice.adminGetAll();
		System.out.println(listStudent.toString());
		model.addAttribute("list",listStudent);
		return "adminhai/all-students";
	}
	
	@RequestMapping(value = "/admin/detailstudent", method = RequestMethod.GET)
	public String detail(Locale locale, Model model,HttpSession session,Student vo) {
		Student detailTeacher=sservice.get(vo);
		List<Course> allteaacher=sservice.selectCourseByStudent(vo);
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("detailTeacher",detailTeacher);
		map.put("teacherAndCourse", allteaacher);
		model.addAllAttributes(map);
		return "adminhai/detail-student";
		
	}
	@RequestMapping(value = "/admin/editstudent", method = RequestMethod.GET)
	public String edit(Locale locale, Model model,HttpSession session,Student vo) {
		
//		Tservice.delete(vo);
		Student t=sservice.get(vo);
		model.addAttribute("teacher",t);
		return "adminhai/edit-student";
	}
	@RequestMapping(value = "/admin/editstudent", method = RequestMethod.POST)
	public String edit2(Locale locale, Model model,HttpSession session,Student vo) {
	System.out.println(vo.toString());
		sservice.update(vo);
		
		return "redirect:/admin/all-students";
	}
	@RequestMapping(value = "/admin/add-student", method = RequestMethod.GET)
	public String add1(Locale locale, Model model,HttpSession session) {
		return "adminhai/add-student";
	}
	@RequestMapping(value = "/admin/add-student", method = RequestMethod.POST)
	public String add1(Locale locale, Model model,HttpSession session,Student vo,MultipartFile uploadfile) {
		
		String fileName="";
		if( !uploadfile.isEmpty() ) {
			 fileName = uploadfile.getOriginalFilename();
			String name = uploadfile.getName();
			String type = uploadfile.getContentType();
			
//			System.out.println(vo.toString());
		System.out.println(c.getRealPath("/")+"resources/upload/adminupload"
				+ uploadfile.getOriginalFilename());
			// realPath
			try {
				uploadfile.transferTo(
						new File(c.getRealPath("/")+"resources/upload/images/students/"
									+ uploadfile.getOriginalFilename())
				);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		vo.setImage(fileName);
		sservice.adminInsert(vo);
		return "redirect:/admin/all-students";
	}
	@RequestMapping(value = "/admin/deletestudent", method = RequestMethod.GET)
	public String adminDeleteTeacher(Locale locale, Model model,HttpSession session,Student vo) {
		System.out.println(vo.toString());
		sservice.deleteapply(vo);
		sservice.admindelete(vo);
		
		return "redirect:/admin/all-students";
	}
}
