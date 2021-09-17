package com.coeding.spring.controller;

/**
 * @author minhhieu
 */

import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystem;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.spring.service.BusinessService;
import com.coeding.spring.service.impl.AdminServiceImpl;
import com.coeding.spring.service.impl.BusinessServiceImpl;
import com.coeding.spring.service.impl.CandidateServiceImpl;
import com.coeding.spring.service.impl.CategoryServiceImpl;
import com.coeding.spring.service.impl.JobServiceImpl;
import com.coeding.spring.vo.Admin;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Candidate;
import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Job;

@Controller
@RequestMapping("/business-account")
public class BusinessAccountController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessAccountController.class);
	
	@Autowired
	private CategoryServiceImpl catservice;
	
	@Autowired
	private CandidateServiceImpl canservice;

	@Autowired
	private JobServiceImpl jobservice;

	@Autowired
	private ServletContext context;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String canlist(Locale locale, Model model, HttpServletRequest resquest) {
		logger.info("Business list {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			Candidate vo = new Candidate();
			vo.setJbId(bus.getId());
			vo.setStatus(0);

			List<Candidate> can0 = canservice.list(vo);
			model.addAttribute("status", can0);

			Candidate vo1 = new Candidate();
			vo1.setJbId(bus.getId());
			vo1.setStatus(1);

			List<Candidate> can1 = canservice.list(vo1);
			model.addAttribute("status1", can1);

			return "/business-account/candidates";
		}

		return "redirect:/login";

	}

	@RequestMapping(value = { "/delete-jobs" }, method = RequestMethod.GET)
	public String delete(@RequestParam(value = "id") Integer id, Locale locale, Model model,
			HttpServletRequest resquest) {
		logger.info("Delete Business {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			Job job = new Job();
			job.setId(id.intValue());

			jobservice.delete(job);

			return "redirect:/business-account/list-jobs";
		}

		return "redirect:/login";

	}

	@RequestMapping(value = { "/create-jobs" }, method = RequestMethod.GET)
	public String create(Locale locale, Model model, HttpServletRequest resquest) {
		logger.info(" Create Jobs {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			Category vo = new Category();
			vo.setType(0);
			
			List<Category> cat = catservice.getJobList(vo);
			model.addAttribute("CareersList", cat);			
			
			return "/business-account/createjobs";
		}

		return "redirect:/login";

	}

	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public String newJobs(Job job, Locale locale, Model model, HttpServletRequest resquest) {
		logger.info(" New Jobs {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			job.setBusId(bus.getId());

			jobservice.insert(job);

			return "redirect:/business-account/list-jobs";
		}

		return "redirect:/login";

	}

	@RequestMapping(value = { "/list-jobs" }, method = RequestMethod.GET)
	public String joblist(Locale locale, Model model, HttpServletRequest resquest) {
		logger.info("Job list {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			List<Job> list = jobservice.listBusId(bus.getId());
			model.addAttribute("jobLists", list);

			return "/business-account/listjobs";
		}

		return "redirect:/login";
	}

	@RequestMapping(value = { "/edit-jobs" }, method = RequestMethod.GET)
	public String edit(@RequestParam(value = "id") Integer id, Locale locale, Model model,
			HttpServletRequest resquest) {
		logger.info(" Edit Job {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			
			Category vo1 = new Category();
			vo1.setType(0);
			
			List<Category> cat = catservice.getJobList(vo1);
			model.addAttribute("CareersList", cat);			
			
			
			Job vo = new Job();
			vo.setId(id.intValue());

			Job job = jobservice.get(vo);
			model.addAttribute("jobList", job);

			return "/business-account/editjobs";
		}

		return "redirect:/login";

	}

	@RequestMapping(value = { "/update-jobs" }, method = RequestMethod.POST)
	public String update(Job job, Locale locale, Model model, HttpServletRequest resquest) {
		logger.info(" Update Job {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			jobservice.update(job);
			
			Job jo = new Job();
			jo.setStatus(0);
			jobservice.updateValid(jo);
			
			Job jo1 = new Job();
			jo1.setStatus(1);
			jobservice.updateExpiry(jo1);
		

			return "redirect:/business-account/list-jobs";
		}

		return "redirect:/login";
	}

	@RequestMapping(value = { "/download" }, method = RequestMethod.GET)
	public String download(@RequestParam(value = "id") Integer id, Locale locale, Model model,
			HttpServletRequest resquest, HttpServletResponse response) {
		logger.info(" Download CV {}.", locale);

		HttpSession session = resquest.getSession();
		Business bus = (Business) session.getAttribute("user");

		if (bus != null) {
			Candidate vo = new Candidate();
			vo.setId(id.intValue());
			Candidate can = canservice.get(vo);

			String nameCV = can.getCv();

			String dataDirectory = context.getRealPath(context.getInitParameter("uploadCV"));
			Path file = Paths.get(dataDirectory, nameCV);

			if (Files.exists(file)) {
				response.setContentType("application/pdf");
				response.addHeader("Content-Disposition", "attachment; filename=" + nameCV);
				try {
					Files.copy(file, response.getOutputStream());
					response.getOutputStream().flush();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			Candidate vo1 = new Candidate();
			vo1.setId(id.intValue());
			vo1.setStatus(1);

			canservice.update(vo1);
		}
		
		return "redirect:/login";
	}

}
