package com.coeding.spring.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.OrderService;
import com.coeding.spring.service.impl.BookServiceImpl;
import com.coeding.spring.service.impl.PaymentServiceImpl;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.PaymentVO;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
/**
 * @author Quoc Huy
 * Rest PayPal -> PayPal Page
 * Id card test: 4802 1267 7234 0985
 * */
@Controller
@RequestMapping("/execute_payment")
public class ExecutePaymentController {

	@Autowired
	private PaymentServiceImpl paymentServices;
	
	@Autowired
	private OrderService orderService;

	@Autowired
	private CourseService courseService;
	
	@Autowired
	private BookServiceImpl bookService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.POST)
	public String post(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) {
		String paymentId = request.getParameter("paymentId");
		String payerId = request.getParameter("PayerID");

		HttpSession session = request.getSession();
		
		try {
			Payment payment = paymentServices.executePayment(paymentId, payerId);
			
			PayerInfo payerInfo = payment.getPayer().getPayerInfo();
			Transaction transaction = payment.getTransactions().get(0);
			
			request.setAttribute("payer", payerInfo);
			request.setAttribute("transaction", transaction);			
			
			
			StudentOrders order = (StudentOrders) session.getAttribute("student_orders");
			order.setDueMount(transaction.getAmount().getTotal());
			order.setPstatus(1);
			order.setStatus(1);
			
			PaymentVO pay = new PaymentVO();
			pay.setInvoiceNo(order.getInvoiceNo());
			pay.setAmount(order.getAmount());
			pay.setPstatus(1);

			paymentServices.insert(pay);
			orderService.insert(order);
			
			String url_back = "#";
			if(order.getBookId()!=null) {
				int book_id = order.getBookId().getId();
				url_back = request.getContextPath()+"/book/detail?id="+book_id;
			}else if(order.getCourseId()!=null) {
				
				Join join = new Join();
				join.setCourseId(order.getCourseId().getId());
				join.setStudentId(order.getStudentId().getId());
				
				courseService.insertJoin(join);
				
				int course_id = order.getCourseId().getId();
				url_back = request.getContextPath()+"/course/detail?id="+course_id;
			}
			model.addAttribute("url_back", url_back);
			return "payment/receipt";
			
		} catch (PayPalRESTException ex) {
			request.setAttribute("errorMessage", ex.getMessage());
			ex.printStackTrace();
			return "redirect:/cancel";
		}finally {
			if(session.getAttribute("student_orders")!=null) {
				session.removeAttribute("student_orders");
			}
		}
	
		
	}
		
}
