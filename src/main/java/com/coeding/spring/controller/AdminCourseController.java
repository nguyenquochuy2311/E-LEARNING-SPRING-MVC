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
import com.coeding.spring.service.impl.CategoryServiceImpl;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.service.impl.TeacherServiceImpl;
import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;

@Controller
public class AdminCourseController {
	@Autowired
	ServletContext c;
	@Autowired
	private CourseServiceImpl Cservice;
	@Autowired
	private TeacherServiceImpl Tservice;
	@Autowired
	private CategoryServiceImpl cateService;

	@RequestMapping(value = "/admin/all-courses", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		List<Course> allcourse = Cservice.getallv1();
		model.addAttribute("listcourse", allcourse);
		return "adminhai/all-courses";

	}

	@RequestMapping(value = "/admin/detail-course", method = RequestMethod.GET)
	public String detial(Locale locale, Model model, HttpSession session, Course vo) {

		Course c = Cservice.adminGetOne(vo);
		List<Lesson> getLesson = Cservice.getLessonByCourse(vo);

		System.out.print(c.toString());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("course", c);
		map.put("lesson", getLesson);
		model.addAllAttributes(map);

		return "adminhai/detail-course";

	}

	@RequestMapping(value = "/admin/add-course", method = RequestMethod.GET)
	public String add(Locale locale, Model model, HttpSession session, Course vo) {

		List<Teacher> getallTeacher = Tservice.list(null);
		List<Category> getAllCate = cateService.getCourseList(null);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("nameTeacher", getallTeacher);
		map.put("nameCate", getAllCate);
		model.addAllAttributes(map);
		return "adminhai/add-course";
	}

	@RequestMapping(value = "/admin/add-course", method = RequestMethod.POST)
	public String add1(Locale locale, Model model, HttpSession session, Course vo) {
		

		Cservice.adminInsert(vo);

		return "redirect:/admin/all-courses";
	}

	@RequestMapping(value = "/admin/edit-course", method = RequestMethod.GET)
	public String edit(Locale locale, Model model, HttpSession session, Course vo) {
		Course c = Cservice.adminGetOne(vo);
		System.out.println("o edie" + c);
		List<Teacher> getallTeacher = Tservice.list(null);
		List<Category> getAllCate = cateService.getCourseList(null);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("nameTeacher", getallTeacher);
		map.put("nameCate", getAllCate);
		map.put("course", c);
		model.addAllAttributes(map);

		return "/adminhai/edit-course";
	}

	@RequestMapping(value = "/admin/edit-course", method = RequestMethod.POST)
	public String edit1(Locale locale, Model model, HttpSession session, Course vo) {
		Course vo1 = vo;
		if (vo1.getListStudent() == null)
			vo1.setListStudent(new ArrayList<Student>());
		if (vo1.getListTeacher() == null)
			vo1.setListTeacher(new ArrayList<Teacher>());
		System.out.println(vo1.toString());
		Cservice.adminupdate(vo1);

		return "redirect:/admin/all-courses";
	}

	@RequestMapping(value = "/admin/edit-lesson", method = RequestMethod.POST)
	public String editlesson(Locale locale, Model model, HttpSession session, Lesson vo, MultipartFile uploadfile) {
		String fileName = "";
		String video = vo.getVideo();
		if (!uploadfile.isEmpty()) {
			fileName = uploadfile.getOriginalFilename();
			String name = uploadfile.getName();
			String type = uploadfile.getContentType();

//			System.out.println(vo.toString());
//			System.out.println(c.getRealPath("/") + "resources/upload/adminupload" + uploadfile.getOriginalFilename());
			// realPath
			try {
				uploadfile.transferTo(
						new File(c.getRealPath("/") + "resources/upload/" + uploadfile.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("vo dc truyen xuong--" + video);

		System.out.println("file dc truyen xuong--" + fileName);
		if (fileName != null) {
			vo.setVideo(fileName);
		}
		if (fileName.equals("")) {
			System.out.println("filename khac null");
			vo.setVideo(video);
		}
		Cservice.updatelessonadmin(vo);

		return "redirect:/admin/detail-course?id="+vo.getCourseId();
	}
	
	@RequestMapping(value = "/admin/delete-lesson", method = RequestMethod.GET)
	public String deletelesson(Locale locale, Model model, HttpSession session, Lesson vo) {
		
		Cservice.deletesessionadmin(vo);

		return "redirect:/admin/detail-course?id="+vo.getCourseId();
	}
	@RequestMapping(value = "/admin/delete-course", method = RequestMethod.GET)
	public String deletecourse(Locale locale, Model model, HttpSession session, Course vo) {
		
		Cservice.admindeletecourse(vo);

		return "redirect:/admin/all-courses";
	}
}
