package com.coeding.spring.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * @author Quoc Huy
 * Cancel transaction Payment
 * */
@Controller
@RequestMapping("/cancel")
public class Cancel {
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String get(Locale locale, Model model) {
		
		return "payment/cancel";		
		
	}
	
}
