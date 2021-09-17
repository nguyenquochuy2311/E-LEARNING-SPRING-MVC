	package com.coeding.spring.controller;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.CategoryService;
import com.coeding.spring.service.impl.AdminServiceImpl;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.service.impl.CourseServiceImpl;
import com.coeding.spring.service.impl.StudentServiceImpl;
import com.coeding.spring.service.impl.TeacherServiceImpl;
import com.coeding.spring.vo.Admin;
import com.coeding.spring.vo.Book;
import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Student;


/**
 * Handles requests for the application home page.
 */
/**
 * 
 * @author KhaiPhan
 *
 */
@Controller
@RequestMapping("/book")
public class BookController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	private BookServiceImpl bookServiceImpl;
	@Autowired 
	private TeacherServiceImpl teacherServiceImpl;
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	@Autowired
	private CourseServiceImpl courseServiceImpl;
	@Autowired
	private CategoryService catService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String bookHome(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		System.out.println(" --------------- Welcome List Book --------------- ");
		
		List<Book> list = bookServiceImpl.getBookList(null);
		model.addAttribute("bookList", list);
		
		System.out.println(list);
		
		return "book/book";	
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
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String bookDetail(@RequestParam(value="id") Integer id, Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		System.out.println(" --------------- Welcome Detail Book --------------- ");
		// *Thank Hai* 
		Map<String, Object> mapAtriibute = new HashMap<String, Object>();
		
		List<Student> listStudent = studentServiceImpl.selectTop5();
		List<Course> courseList = courseServiceImpl.getListCourse(null);
		model.addAttribute("courseList", courseList);
		
		Book vo = new Book();
		vo.setId(id.intValue());
		Book book = bookServiceImpl.getBook(vo);		
		model.addAttribute("book", book);	
		
		Category cat = book.getCourse().getCategory();
		
		List<Course> course_related = new ArrayList<Course>();
		for(Course c : courseList) {
			if(c.getCategory().getId()==cat.getId()) {
				course_related.add(c);
			}
		}
		
		if(course_related.isEmpty()) {
			for(Course c : courseList) {
				if(c.getId()!=book.getCourseId()) {
					course_related.add(c);
				}
			}
		}
		model.addAttribute("courseRelated", course_related);			
	
		HttpSession session = request.getSession();
		String paymentUrl = "#";
		if(session.getAttribute("user")==null) {
			paymentUrl = request.getContextPath()+"/login";
		}
		model.addAttribute("paymentUrl", paymentUrl);
		model.addAttribute("invoice_no", getAlphaNumericString(20));
		
		mapAtriibute.put("sumteacher", teacherServiceImpl.getSum());
		mapAtriibute.put("sumstudent", studentServiceImpl.getSum());
		mapAtriibute.put("liststudent", listStudent);
		
		model.addAllAttributes(mapAtriibute);
		
		return "book/detail";	
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchBook(@RequestParam(value="keyword") String keyword, Locale locale, Model model) {
		logger.info("Search {}.", locale);
		
		System.out.println("--------------------------- search --------------------------------");
		System.out.println("keyword = " + keyword);
	
		List<Book> result = bookServiceImpl.listSearch(keyword);
		model.addAttribute("result", result);		
			
		System.out.println("result = " + result);
		
		return "book/search";
	}
}