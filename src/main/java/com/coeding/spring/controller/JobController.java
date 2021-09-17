package com.coeding.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.spring.service.JobService;
import com.coeding.spring.service.impl.CandidateServiceImpl;
import com.coeding.spring.service.impl.JobServiceImpl;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Candidate;
import com.coeding.spring.vo.Job;

/**
 * @author minhhieu
 */

@Controller
@RequestMapping("/job")
public class JobController {

	private static final Logger logger = LoggerFactory.getLogger(JobController.class);
	
	@Autowired
	private CandidateServiceImpl canservice;
	
	@Autowired
	private JobServiceImpl jobservice;
	
	@Autowired
	private ServletContext context;

	@RequestMapping(value = {"", "/pageid/{pageid}" }, method = RequestMethod.GET)
	public String list(@PathVariable int pageid,Locale locale, Model model) {
		logger.info("Job list {}.", locale);
		
		List<Job> listInterest = jobservice.listJobByInterest();
		model.addAttribute("listInterest", listInterest);
				
		int total = 8;		
		Job vo = new Job();
		vo.setTotal(total);
		vo.setStatus(0);
		if(pageid == 1) {
			vo.setPageId(pageid-1);
		}else {
			pageid = (pageid-1)*total;
			vo.setPageId(pageid );
		}	
		
		float all = jobservice.countJob();
		int alls = (int) Math.ceil(all / 8);				
		model.addAttribute("countJob", alls);
		
		Job jo = new Job();
		jo.setStatus(1);
		jobservice.updateExpiry(jo);
		
		List<Job> list = jobservice.listPage(vo);
		model.addAttribute("jobLists", list);
		return "/Jobs/job";
	}

	@RequestMapping(value = { "/view" }, method = RequestMethod.GET)
	public String view(@RequestParam(value = "id") Integer id, Locale locale, Model model) {
		logger.info("Job details {}.", locale);
		
		
		Job vo = new Job();
		vo.setId(id.intValue());
		Job job = jobservice.get(vo);
		model.addAttribute("job", job);
		
		String str = job.getName();
		
		String[] name = str.split(" ");
		
		List<Job> list = jobservice.listBusName(name[0]);
		model.addAttribute("jobName", list);
		
		return "/Jobs/job-details";
	}
	
	@RequestMapping(value = { "/cvupload" }, method = RequestMethod.POST)
	public String upload(MultipartFile uploadfile,Candidate can, Locale locale, Model model, HttpSession session) {
		logger.info("post : savefile");

		String path = context.getRealPath(context.getInitParameter("uploadCV"));
		String rpath = null ;
	
		if (session.getAttribute("user") != null) {
			if (!uploadfile.isEmpty()) {
				String fileName = uploadfile.getOriginalFilename();
				String name = uploadfile.getName();
				String type = uploadfile.getContentType();
				logger.info(fileName + "," + name + "," + type);
				// realPath
				try {
					uploadfile.transferTo(new File(path + "\\" + uploadfile.getOriginalFilename()));
					rpath = path + "\\" + fileName;
					session.setAttribute("cv", rpath);
					can.setCv(fileName);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			canservice.insert(can);

			return "redirect:/job/pageid/1";
		} else {
			return "redirect:/login";
		}
		
			
		
	}
	
	

	
	

}
