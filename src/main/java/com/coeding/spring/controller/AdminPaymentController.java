package com.coeding.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coeding.spring.service.OrderService;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;

@Controller
public class AdminPaymentController {
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/admin/list-payment", method = RequestMethod.GET)
	public String payment(Locale locale, Model model, HttpSession session) {

		List<StudentOrders> order = orderService.adminlist();

		List<StudentOrders> order_book = new ArrayList<StudentOrders>();
		List<StudentOrders> order_course = new ArrayList<StudentOrders>();
		List<StudentOrders> student_oder = new ArrayList<StudentOrders>();
		for (StudentOrders o : order) {
			if (o.getBookId() != null) {
				order_book.add(o);
			}
			if (o.getStudentId() != null) {
				student_oder.add(o);
			}

			else {
				order_course.add(o);
			}
		}
		model.addAttribute("order", order);
		model.addAttribute("orderBook", order_book);
		model.addAttribute("orderCourse", order_course);

		return "adminhai/payment";

	}
}
