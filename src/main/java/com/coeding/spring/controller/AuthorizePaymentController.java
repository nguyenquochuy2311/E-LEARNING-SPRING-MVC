package com.coeding.spring.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.vo.Book;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;
import com.coeding.spring.service.BookService;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.PaymentService;
import com.coeding.spring.service.StudentService;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.service.impl.PaymentServiceImpl;
import com.paypal.base.rest.PayPalRESTException;
/**
 * @author Quoc Huy
 * Form -> Service -> PayPal
 * Id card test: 4802 1267 7234 0985
 * */
@Controller
@RequestMapping("/authorize_payment")
public class AuthorizePaymentController {

	@Autowired
	private PaymentServiceImpl paymentService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private BookServiceImpl bookService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.POST)
	public String post(@RequestParam("product_id") String pid,
						@RequestParam("invoice_no") String invoice_no,
						@RequestParam("tax") String tax,
						@RequestParam("amount") String amount,
						@RequestParam("type") String type,
			Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) {
		int product_id = Integer.parseInt(pid);
		
		HttpSession session = request.getSession();
		Student s1 = (Student) session.getAttribute("user");
		
		StudentOrders student_orders = new StudentOrders();
		student_orders.setInvoiceNo(invoice_no);
		student_orders.setAmount(amount);
		student_orders.setTax(tax);
		student_orders.setStudentId(s1);
		student_orders.setStatus(0);
		student_orders.setPstatus(0);
		
		switch(type) {
			case "course":
				Course course = courseService.getCourse(product_id);
				student_orders.setCourseId(course);
				break;
			case "book":
				Book book = bookService.getBookById(product_id);
				student_orders.setBookId(book);
				break;
		}
		
		try {
			String approvalLink = paymentService.authorizePayment(student_orders);
			session.setAttribute("student_orders", student_orders);
			return "redirect:"+approvalLink;
			
		} catch (PayPalRESTException ex) {
			request.setAttribute("errorMessage", ex.getMessage());
			ex.printStackTrace();
			return "redirect:/error";
		}
	
		
	}
}
