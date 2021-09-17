package com.coeding.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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

import com.coeding.spring.service.TeacherService;
import com.coeding.spring.service.impl.TeacherServiceImpl;
import com.coeding.spring.vo.Admin;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;

/**
 * 	start with admin
 * @author NGOCHAI
 *
 */

@Controller
public class AdminTeacherController {
	@Autowired
	ServletContext c;
	@Autowired 
	private TeacherServiceImpl Tservice;

	@RequestMapping(value = "/admin/all-instructor", method = RequestMethod.GET)
	public String adminHomeTeacher(Locale locale, Model model,HttpSession session) {
		HomeAdminController home=new HomeAdminController();
		Admin a=home.admin;
		List<Teacher> getall=Tservice.list(null);
		Map<String, Object> mapAtriibute=new HashMap<String, Object>();
		mapAtriibute.put("admin", a);
		mapAtriibute.put("allteacher", getall);
		model.addAllAttributes(mapAtriibute);
//		System.out.println(getall.toString());
		return "adminhai/all-instructor";
	
		
	}
	
	@RequestMapping(value = "/admin/add-instructor", method = RequestMethod.GET)
	public String adminAddTeacher(Locale locale, Model model,HttpSession session) {
		return "adminhai/add-instructor";
	}
	
	@RequestMapping(value = "/admin/add-instructor", method = RequestMethod.POST)
	public String adminAddTeacher1(Locale locale, Model model,HttpSession session,Teacher vo,MultipartFile uploadfile) {
		
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
						new File(c.getRealPath("/")+"resources/upload/images/instructor/"
									+ uploadfile.getOriginalFilename())
				);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		vo.setImage(fileName);
		Tservice.adminInsert(vo);
		return "redirect:/admin/all-instructor";
	}
	
	@RequestMapping(value = "/admin/detailteacher", method = RequestMethod.GET)
	public String adminDetailTeacher(Locale locale, Model model,HttpSession session,Teacher vo) {
//		System.out.println(vo.getId());
//		List<Course> allteaacher=Tservice.selectOneAndCourse(vo.getId());
//		if(allteaacher.isEmpty()) {
//			return "test";
//		}
//		
//		System.out.println(allteaacher.toString());
//		List<Teacher> t=new ArrayList<Teacher>();
//		List<Student> listStudent=new ArrayList<Student>();
//		for(Course c:allteaacher) {
//			
//			t=c.getInfoTeacher();
//			listStudent=c.getStudent();
////			System.out.println(listStudent.toString());
//			System.out.println(c.toString());
//		}
//		
//		Teacher detailTeacher=new Teacher();
//		for(Teacher t1:t) {
//			detailTeacher=t1;
//			break;
//		}
////		System.out.println(detailTeacher.toString());
//		
//		
//		for(Student t1:listStudent) {
////			System.out.println(t1.toString());
//		}
		
		
		Teacher detailTeacher=Tservice.admingetOne(vo);
		System.out.println(detailTeacher.toString());
		List<Course> coursebyTeacher=Tservice.adminselectcourseByTeacher(vo);
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("detailTeacher",detailTeacher);
		map.put("teacherAndCourse", coursebyTeacher);
		model.addAllAttributes(map);
		
		

		return "adminhai/detail-teacher";
	}
	
	@RequestMapping(value = "/admin/deleteteacher", method = RequestMethod.GET)
	public String adminDeleteTeacher(Locale locale, Model model,HttpSession session,Teacher vo) {
		System.out.println(vo.toString());
		Tservice.delete(vo);
		
		return "redirect:/admin/all-instructor";
	}
	
	@RequestMapping(value = "/admin/editteacher", method = RequestMethod.GET)
	public String admineditTeacher(Locale locale, Model model,HttpSession session,Teacher vo) {
		
//		Tservice.delete(vo);
		Teacher t=Tservice.admingetOne(vo);
		model.addAttribute("teacher",t);
		return "adminhai/edit-teacher";
	}
	@RequestMapping(value = "/admin/editteacher", method = RequestMethod.POST)
	public String admineditTeacher2(Locale locale, Model model,HttpSession session,Teacher vo) {
	System.out.println(vo.toString());
		Tservice.adminupdate(vo);
		
		return "redirect:/admin/all-instructor";
	}
	
	
	
}
