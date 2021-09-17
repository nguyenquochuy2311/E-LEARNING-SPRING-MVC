package com.coeding.spring.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coeding.spring.service.OrderService;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
/**
 * @author Quoc Huy
 * Test PopUp Form (Default data)
 * */
@Controller
@RequestMapping("/checkout")
public class CheckoutController {
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String get(Locale locale, Model model) {
		
		return "payment/checkout";		
		
	}
}
