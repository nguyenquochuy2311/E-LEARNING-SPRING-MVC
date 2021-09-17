package com.coeding.spring.controller;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import java.util.Locale;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.spring.service.CategoryService;
import com.coeding.spring.service.CertificateService;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.InterestService;
import com.coeding.spring.service.JobService;
import com.coeding.spring.service.OrderService;
import com.coeding.spring.service.PaymentService;
import com.coeding.spring.service.StudentService;
import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Interest;
import com.coeding.spring.vo.Job;
import com.coeding.spring.vo.PaymentVO;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;

/**
 * @author Dang Vinh
 */
@Controller
@RequestMapping("/mypage")
public class StudentController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CategoryService catService;
	
	@Autowired
	private InterestService interestService;	
	@Autowired
	private StudentService studentService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private JobService jobService;
	@Autowired
	private CertificateService certService;
	@Autowired
	private OrderService orderService;
	/**
	 * @author Dang Vinh
	 */
	@RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome Student home! The client locale is {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Student student = studentService.get(vo);
			model.addAttribute("student", student);
			url = "/main/mypage/myinfo";
		}
		return url;
	}
	
	
	/**
	 * @author Dang Vinh
	 */
	@RequestMapping(value = {"/info"}, method = RequestMethod.GET)
	public String view(Locale locale, Model model, HttpServletRequest request) {
		logger.info("view student {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Student student = studentService.get(vo);
			model.addAttribute("student", student);
			url = "/main/mypage/myinfo";
		}
		return url;
	}
	 
	/**
	 * @author Dang Vinh
	 */
	@RequestMapping(value = {"/editinfo"}, method = {RequestMethod.POST, RequestMethod.GET})
	public String edit(Locale locale, Model model, HttpServletRequest request) {
		logger.info("edit student {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Student student = studentService.get(vo);
			model.addAttribute("student", student);
			url = "/main/mypage/editinfo";
		}
		return url;
	}

	/**
	 * @author Dang Vinh
	 */
	@RequestMapping(value = {"/save"}, method = RequestMethod.POST)
	public String save(MultipartFile uploadfile, Student param, Locale locale, Model model, HttpServletRequest request) {
		logger.info("save student {}.", locale);
		ServletContext ctx = request.getServletContext();
		String uploadPath = ctx.getRealPath(ctx.getInitParameter("uploadDir"));
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
		studentService.update(param);
//		model.addAttribute("id", param.getId());
		return "redirect:/mypage/info";
	}
	
	/**
	 * 
	 * @author Dang Vinh
	 *
	 */
	@RequestMapping(value = {"/mycourse"}, method = RequestMethod.GET)
	public String myCourse(Locale locale, Model model, HttpServletRequest request) {
		logger.info("my course {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {
			Student student = studentService.get(vo);
			model.addAttribute("student", student);
			url = "/main/mypage/mycourse";
		}
		return url;
	}
	
	/**
	 * 
	 * @author Dang Vinh
	 *
	 */
	@RequestMapping(value = {"/mypayment"}, method = RequestMethod.GET) 
	public String myPayment(Locale locale, Model model, HttpServletRequest request) {
		logger.info("my payment {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			
			List<StudentOrders> order = orderService.list_POrders(vo);
			
			List<StudentOrders> order_book = new ArrayList<StudentOrders>();
			List<StudentOrders> order_course = new ArrayList<StudentOrders>();
			for(StudentOrders o : order) {
				if(o.getBookId()!=null) {
					order_book.add(o);
				}else {
					order_course.add(o);
				}
			}
			model.addAttribute("order", order);
			model.addAttribute("orderBook", order_book);
			model.addAttribute("orderCourse", order_course);
			model.addAttribute("student", vo);

			url = "/main/mypage/mypayment";
		}
		return url;
	}
	
	/**
	 * 
	 * @author Dang Vinh
	 *
	 */
	@RequestMapping(value = "/mycert", method = RequestMethod.GET)
	public String myCertificate(Locale locale, Model model, HttpServletRequest request) {
		logger.info("my job {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			Student student = studentService.get(vo);
			List<Certificate> list = certService.ListCert(vo);
			model.addAttribute("student", student);
			model.addAttribute("list", list);
			url = "/main/mypage/mycert";
		}
		return url;
	}
	
	/**
	 * 
	 * @author Minh Hieu
	 *
	 */
	@RequestMapping(value = "/myinterest", method = RequestMethod.GET)
	public String myInterest(Locale locale, Model model, HttpServletRequest request) {
		logger.info("My interest.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			
			Category vo1 = new Category();
			vo1.setType(0);
			
			List<Category> cat = catService.getJobList(vo1);
			model.addAttribute("CareersList", cat);	
			
			Interest inter = new Interest();
			inter.setStuId(vo.getId());
			
			Interest interest = interestService.get(inter);
			model.addAttribute("interList", interest);
			
			url = "/main/mypage/myinterest";
			
		}
		return url;
	}
	
	@RequestMapping(value = "/update-interest", method = RequestMethod.POST)
	public String updatemyInterest(Interest interest ,Locale locale, Model model, HttpServletRequest request) {
		logger.info("Update interest", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			
			interest.setStuId(vo.getId());;
			
			System.out.println(interest.getCatId());
			
			interestService.update(interest);	
	
			return "redirect:/mypage/myinterest";
			
		}
		return url;
	}
	
	
	
}