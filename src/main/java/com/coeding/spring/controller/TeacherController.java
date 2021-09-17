package com.coeding.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.spring.service.BookService;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.LessonService;
import com.coeding.spring.service.NoticeService;
import com.coeding.spring.service.ReferenceService;
import com.coeding.spring.service.TeacherService;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.vo.Book;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Notice;
import com.coeding.spring.vo.Reference;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;

/**
 * @author Quoc Huy
 * My Page, Edit Info
 * List Course:
 * 		Create Lesson, edit
 * 		Activity my course
 * List Book:
 * 		Create Book
 * */

@Controller
@RequestMapping("/teacher-area")
public class TeacherController {
	private static final Logger logger = LoggerFactory.getLogger(TeacherController.class);
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private CourseServiceImpl courseService;
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private ReferenceService refService;
	
	@Autowired
	private BookServiceImpl bookService;
	
	@Autowired
	private LessonService lessonService;
	
	@RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
	public String info(Locale locale, Model model, HttpServletRequest request) {
		logger.info("-------------------MyPage Teacher------------------", locale);
		HttpSession session = request.getSession();
		Teacher vo = (Teacher) session.getAttribute("user");
		String url = "redirect:/login";
		
		if(vo!=null) {
			Teacher teacher = teacherService.get(vo);
			model.addAttribute("teacher", teacher);
			url = "teacher/teacher";
		}
		return url;
	}
	
	@RequestMapping(value = {"/editinfo"}, method = {RequestMethod.POST, RequestMethod.GET})
	public String edit(Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Edit Teacher----------------", locale);
		HttpSession session = request.getSession();
		Teacher vo = (Teacher) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Teacher teacher = teacherService.get(vo);
			model.addAttribute("teacher", teacher);
			url = "teacher/editinfo";
		}
		return url;
	}
	
	@RequestMapping(value = {"/save"}, method = RequestMethod.POST)
	public String save(MultipartFile uploadfile, Teacher param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Save teacher--------------- ", locale);
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadTeacher"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("image/")) {
				try {
					param.setImage(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
//					uploadfile.transferTo(new File("C:\\Users\\HP\\git\\ngu\\src\\main\\webapp\\resources\\upload\\images\\students\\" + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		teacherService.update(param);
//		model.addAttribute("id", param.getId());
		return "redirect:/teacher-area";
	}
	
	@RequestMapping(value = {"/mycourse"}, method = RequestMethod.GET)
	public String mycourse(Locale locale, Model model, HttpServletRequest request)
	{
		logger.info("-----------------My Course--------------- ", locale);
		HttpSession session = request.getSession();
		Teacher vo = (Teacher) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Teacher teacher = teacherService.get(vo);
			model.addAttribute("course", teacher.getCourseId());
			url = "teacher/mycourse";
		}
		return url;
	}
	
	@RequestMapping(value = {"/mycourse/detail"}, method = RequestMethod.GET)
	public String detail_course(@RequestParam("id") Integer id,
			Locale locale, Model model, HttpServletRequest request)
	{
		logger.info("-----------------My Course Detail--------------- ", locale);
		HttpSession session = request.getSession();
		Teacher vo = (Teacher) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Course course = courseService.getCourse(id);
			model.addAttribute("course", course);
			
			Course c = courseService.adminGetOne(course);
			List<Student> listStudent = c.getListStudent();
			model.addAttribute("student", listStudent);
			
			List<Lesson> lesson = courseService.getLessonByCourse(course);
			model.addAttribute("lesson", lesson);
			
			List<Course> list_course = teacherService.adminselectcourseByTeacher(vo);
			model.addAttribute("all_courses", list_course);
			
			List<Lesson> listL_request = new ArrayList<Lesson>(); 
			List<Lesson> all_request = courseService.selectLessonNotCheck();
			for(Lesson l1: all_request) {
				if(l1.getCourseId()==course.getId() && l1.getStatus()==0) {
					listL_request.add(l1);
				}
			}
			model.addAttribute("lesson_request", listL_request);
			
			model.addAttribute("id", id);
			
			url = "teacher/course_detail";
		}
		return url;
	}
	
	@RequestMapping(value = {"/savecourse"}, method = RequestMethod.POST)
	public String savecourse(MultipartFile uploadfile, Course param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Save teacher--------------- ", locale);
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadCourse"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("image/")) {
				try {
					param.setImage(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		courseService.update(param);
		return "redirect:/teacher-area/mycourse/detail?id="+param.getId();
	}
	
	@RequestMapping(value = {"/mycourse/savenotice"}, method = RequestMethod.POST)
	public String savenotice(MultipartFile uploadfile, Notice param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Save notice--------------- ", locale);
		
		noticeService.insert(param);
		
		return "redirect:/teacher-area/mycourse/detail?id="+param.getCourseId();
	}
	
	@RequestMapping(value = {"/mycourse/saveref"}, method = RequestMethod.POST)
	public String saveref(MultipartFile uploadfile, Reference param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Save reference--------------- ", locale);
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadCourse"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("image/")) {
				try {
					param.setFile(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		refService.insert(param);
		return "redirect:/teacher-area/mycourse/detail?id="+param.getCourseId();
	}
	
	@RequestMapping(value = {"/mybook"}, method = RequestMethod.GET)
	public String mybook(Locale locale, Model model, HttpServletRequest request)
	{
		logger.info("-----------------My Book--------------- ", locale);
		HttpSession session = request.getSession();
		Teacher vo = (Teacher) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			
			Teacher teacher = teacherService.get(vo);
			List<Course> course = teacher.getCourseId();
			List<Book> book = new ArrayList<Book>();
			for(int i=0; i<course.size(); i++) {
				List<Book> b1 = course.get(i).getBook();
				for(int j=0; j<b1.size(); j++) {
					Book b2 = b1.get(j);
					if(b2.getCourseId()==course.get(i).getId()) {
						book.add(b2);
					}
				}
			}
			model.addAttribute("book", book);
			
			model.addAttribute("course_select", course);
			url = "teacher/mybook";
		}
		return url;
	}
	
	@RequestMapping(value = {"/mybook/addbook"}, method = RequestMethod.POST)
	public String addbook(MultipartFile uploadfile, Book param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Save book--------------- ", locale);
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadBook"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("image/")) {
				try {
					param.setImage(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		param.setStatus(0);
		bookService.insert(param);
		return "redirect:/teacher-area/mybook";
	}
	
	@RequestMapping(value = {"/mybook/updatebook"}, method = RequestMethod.POST)
	public String updatebook(MultipartFile uploadfile, Book param, Locale locale, Model model, HttpServletRequest request)
	{
		logger.info("-----------------Update Book--------------- ", locale);
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadBook"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("image/")) {
				try {
					param.setImage(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		bookService.update(param);
		return "redirect:/teacher-area/mybook";
	}
	
	@RequestMapping(value= {"/mycourse/newlesson"}, method = RequestMethod.GET)
	public String addlesson(@RequestParam("id") Integer id, Locale locale, Model model)
	{
		logger.info("-----------------Form add lesson--------------- ", locale);

		Course course = courseService.getCourse(id);
		model.addAttribute("course", course);
		model.addAttribute("lesson", courseService.getLessonByCourse(course));
		
		Course c = courseService.adminGetOne(course);
		List<Student> listStudent = c.getListStudent();
		model.addAttribute("student", listStudent);
		
		model.addAttribute("id", id);
		return "teacher/new_lesson";
	}
	
	@RequestMapping(value = {"/mycourse/checkaddls"}, method = RequestMethod.POST)
	public String checkaddls(MultipartFile uploadfile, Lesson param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Save lesson--------------- ", locale);
		HttpSession session = request.getSession();
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadLesson"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("video/")) {
				try {
					param.setVideo(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		param.setStatus(0);
		Teacher vo = (Teacher) session.getAttribute("user");
		param.setTeacherId(vo.getId());
		lessonService.insert(param);
		return "redirect:/teacher-area/mycourse/detail?id="+param.getCourseId();
	}
	
	@RequestMapping(value = {"/mycourse/updatels"}, method = RequestMethod.POST)
	public String updatels(MultipartFile uploadfile, Lesson param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Update lesson--------------- ", locale);
		HttpSession session = request.getSession();
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadLesson"));
		if (!uploadfile.isEmpty()) {
			String contentType = uploadfile.getContentType();
			if (contentType.startsWith("video/")) {
				try {
					param.setVideo(uploadfile.getOriginalFilename());
					uploadfile.transferTo(new File(uploadPath + File.separator + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		lessonService.update(param);
		return "redirect:/teacher-area/mycourse/detail?id="+param.getCourseId();
	}
}


