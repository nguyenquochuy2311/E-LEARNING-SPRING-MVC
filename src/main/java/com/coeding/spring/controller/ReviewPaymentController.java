package com.coeding.spring.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.impl.PaymentServiceImpl;
import com.coeding.spring.vo.StudentOrders;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
/**
 * @author Quoc Huy
 * Form review after payment from PayPal
 * */
@Controller
@RequestMapping("/review_payment")
public class ReviewPaymentController {
	@Autowired
	private PaymentServiceImpl paymentServices;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String get(@RequestParam("paymentId") String paymentId,
			@RequestParam("PayerID") String payerId,
			Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) {

		try {
			Payment payment = paymentServices.getPaymentDetails(paymentId);
			
			PayerInfo payerInfo = payment.getPayer().getPayerInfo();
			Transaction transaction = payment.getTransactions().get(0);
			
			request.setAttribute("payer", payerInfo);
			request.setAttribute("transaction", transaction);
			
			String url = "payment/review";
			
			return url;
			
		} catch (PayPalRESTException ex) {
			request.setAttribute("errorMessage", ex.getMessage());
			ex.printStackTrace();
			return "redirect:/cancel";
		}
	}
	
}
