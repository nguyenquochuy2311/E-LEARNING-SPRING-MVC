package com.coeding.spring.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.BusinessService;
import com.coeding.spring.service.JobService;
import com.coeding.spring.service.impl.BusinessServiceImpl;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Job;

/**
 * @author minhhieu
 */


@Controller
@RequestMapping("/business")
public class BusinessController {
	
	private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);
	
	@Autowired
	private BusinessServiceImpl businesservice;
	@Autowired
	private JobService jobservice;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		logger.info("Business list {}.", locale);
		
		List<Business> list = businesservice.list(null);
		model.addAttribute("businessList", list);
		
		return "/Business/business";
	}
	

	@RequestMapping(value = {"/view"}, method = RequestMethod.GET)
	public String view(@RequestParam(value="id") Integer id, 
			Locale locale, Model model) {
		logger.info("Business details {}.", locale);
		
		Business vo = new Business();
		vo.setId(id.intValue());
		Business business = businesservice.get(vo);
		model.addAttribute("business", business);	
		
		List<Job> list=jobservice.listBusId(vo.getId());
		model.addAttribute("jobList", list);
	
		return "/Business/business-detail";
	}
	
	
	@RequestMapping(value = {"/search"}, method = RequestMethod.GET)
	public String search(@RequestParam(value="text") String text, 
			Locale locale, Model model) {
		logger.info("Business details {}.", locale);
		
		Business vo = new Business();
		vo.setName(text);
		
		List<Business> list = businesservice.listName(vo.getName());
		model.addAttribute("searchList", list);
		System.out.println(vo.getName());
		return "/Business/business-search";
	}
	
	
	
}
