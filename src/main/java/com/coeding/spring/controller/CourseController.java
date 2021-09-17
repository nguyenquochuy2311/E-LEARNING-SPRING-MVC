package com.coeding.spring.controller;

import java.nio.charset.Charset;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.CategoryService;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.vo.Book;
import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Job;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;
import com.coeding.spring.vo.User;

/**
 * @author Quoc huy
 * 
 * Full Course Page(Divide By Category), 
 * Course By Category, 
 * Course Detail
 */

@Controller
@RequestMapping("/course")
public class CourseController {
	
	private static final Logger logger = LoggerFactory.getLogger(CourseController.class);
	
	@Autowired 
	private CourseService courseService;
	
	@Autowired
	private CategoryService catService;
	
	@Autowired
	private BookServiceImpl bookService;
	
	@RequestMapping(value = {"","/pageid={pageid}"}, method = RequestMethod.GET)
	public String FullCourse(@PathVariable int pageid,Locale locale, Model model, HttpServletRequest request) {
		logger.info("-----------------Full Course-----------------", locale);
		HttpSession session = request.getSession();
		Student user = (Student) session.getAttribute("user");
		
		int total = 3;	
		Category vo = new Category();
		vo.setTotal(total);
		if(pageid == 1) {
			vo.setPageId(pageid-1);
		}else {
			pageid = (pageid-1)*total;
			vo.setPageId(pageid );
		}
		
		float all = catService.selectCount();
		int alls = (int) Math.ceil(all / 3);				
		model.addAttribute("countCat", alls);
		
		List<Category> cat = catService.getCourseList(vo);
		
		for(int i=0; i<cat.size(); i++) {
			List<Course> course = cat.get(i).getListCourse();
			for(int j=0; j<course.size(); j++) {
				course.get(j).setStatus(0);
				if(user!=null) {
					Join join = courseService.selectJoin(user.getId(), course.get(j).getId());
					if(join!=null) {
						course.get(j).setStatus(1);
					}
				}
			}
		}
		
		model.addAttribute("cat", cat);
		
		return "course/course";
	}
	
	@RequestMapping(value= {"/viewcat"}, method = RequestMethod.GET)
	public String CoursebyCat(@RequestParam("type") Integer id, @RequestParam("pageid") Integer pageid, Locale locale, Model model) {
		logger.info("-----------------Course By Cat-----------------", locale);
		
		
		int total = 8;		
		Course vo = new Course();
		vo.setId(id.intValue());
		vo.setTotal(total);
		
		if(pageid == 1) {
			vo.setPageId(pageid-1);
		}else {
			pageid = (pageid-1)*total;
			vo.setPageId(pageid );
		}
		
		float all = courseService.countCourseCat(vo);
		int alls = (int) Math.ceil(all / 8);				
		model.addAttribute("countCourse", alls);
		model.addAttribute("cat", id);
		
		
		List<Course> listCourseC = courseService.listPage(vo);
		model.addAttribute("listCourseC", listCourseC);
		
		return "course/course_bycat";
	}
	
	@RequestMapping(value= {"/detail"}, method = RequestMethod.GET)
	public String CourseDetail(@RequestParam("id") Integer id,Locale locale,Model model, HttpServletRequest request) {
		logger.info("-----------------Course Detail-----------------", locale);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		String paymentBtn = "Payment";
		String paymentUrl = "#";
		if(user==null) {
			paymentUrl = request.getContextPath()+"/login";
		}else{
			if(user instanceof Student) {
				Join join = courseService.selectJoin(user.getId(), id);
				if(join!=null) {
					paymentBtn = "Take a course";
					paymentUrl = request.getContextPath() + "/course/join?id=" + join.getId() + "&courseId=" + join.getCourseId();
				}
			}
		}		
		
		Course course = courseService.getCourse(id);
		Category cat = course.getCategory();
		List<Course> courseByC = cat.getListCourse();
		List<Course> course_related = new ArrayList<Course>();
		List<Book> book_related = new ArrayList<Book>();
		for(Course c : courseByC) {
			if(c.getId()!=id) {
				if(user!=null) {
					Join join = courseService.selectJoin(user.getId(), c.getId());
					if(join==null) {
						course_related.add(c);
					}
				}else {
					course_related.add(c);
				}
			}
			List<Book> book = c.getBook();
			for(Book b : book) {
				if(b.getCourseId()==id) {
					book_related.add(b);
				}
			}
		}
		if(course_related.isEmpty()) {
			List<Course> all_course = courseService.getAllcourses();
			for(Course c : all_course) {
				if(c.getId()!=id) {
					if(user!=null) {
						Join join = courseService.selectJoin(user.getId(), c.getId());
						if(join==null) {
							course_related.add(c);
							System.out.println(c.getId()+" "+c.getTitle());
							break;
						}
					}else {
						course_related.add(c);
						System.out.println(c.getId()+" "+c.getTitle());
						break;
					}
				}
			}
		}
		if(book_related.isEmpty()) {
			book_related.add(bookService.getBookList(null).get(0));
		}

		model.addAttribute("paymentBtn", paymentBtn);
		model.addAttribute("paymentUrl", paymentUrl);
		model.addAttribute("course", course);
		model.addAttribute("invoice_no", getAlphaNumericString(20));
		model.addAttribute("courseRelated", course_related);
		model.addAttribute("bookRelated", book_related);
		
		return "course/course_detail";
	}
	
	private static String getAlphaNumericString(int n)
    {
  
        byte[] array = new byte[256];
        new Random().nextBytes(array);
  
        String randomString = new String(array, Charset.forName("UTF-8"));
  
        StringBuffer r = new StringBuffer();
  
        String  AlphaNumericString
            = randomString
                  .replaceAll("[^A-Za-z0-9]", "");
  
        for (int k = 0; k < AlphaNumericString.length(); k++) {
  
            if (Character.isLetter(AlphaNumericString.charAt(k))
                    && (n > 0)
                || Character.isDigit(AlphaNumericString.charAt(k))
                       && (n > 0)) {
  
                r.append(AlphaNumericString.charAt(k));
                n--;
            }
        }
  
        return r.toString();
    }
}
