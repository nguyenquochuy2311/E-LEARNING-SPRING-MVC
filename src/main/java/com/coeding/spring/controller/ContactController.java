package com.coeding.spring.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author KhaiPhan
 *
 */
@Controller
@RequestMapping("/contact")
public class ContactController {
	
	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		System.out.println(" --------------- Welcome Contact --------------- ");
				
		return "contact/contact";
	}
}