package com.coeding.spring.controller;

/**
 * @author minhhieu
 */

import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystem;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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
import com.coeding.spring.service.impl.JobServiceImpl;
import com.coeding.spring.vo.Admin;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Job;

@Controller
@RequestMapping("/admin")
public class BusinessAdminController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessAdminController.class);

	@Autowired
	private BusinessServiceImpl businesservice;

	@Autowired
	private JobServiceImpl jobservice;

	@Autowired
	private AdminServiceImpl service;

	@Autowired
	private ServletContext context;

	@RequestMapping(value = { "/all-business" }, method = RequestMethod.GET)
	public String list(Locale locale, Model model, HttpSession session) {
		logger.info("Business list {}.", locale);

		if (session.getAttribute("email") != null) {
			List<Business> list = businesservice.list(null);
			model.addAttribute("businessList", list);

			return "/admin/business-list";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/delete" }, method = RequestMethod.GET)
	public String delete(@RequestParam(value = "id") Integer id, Locale locale, Model model, HttpSession session) {
		logger.info("Delete Business {}.", locale);

		if (session.getAttribute("email") != null) {
			Business vo = new Business();
			vo.setId(id.intValue());

			businesservice.delete(vo);

			return "redirect:/admin/all-business";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/changepass" }, method = RequestMethod.GET)
	public String changepass(@RequestParam(value = "id") Integer id, Locale locale, Model model, HttpSession session) {
		logger.info("Change Password {}.", locale);

		if (session.getAttribute("email") != null) {
			Business vo = new Business();
			vo.setId(id.intValue());

			Business business = businesservice.get(vo);
			model.addAttribute("businessEdit", business);
			return "/admin/business-changepass";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/changed" }, method = RequestMethod.POST)
	public String changed(Locale locale, Model model, HttpSession session, HttpServletRequest request) {
		logger.info("Change Password {}.", locale);

		if (session.getAttribute("email") != null) {

			String id = request.getParameter("id");
			String confirmpass = request.getParameter("confirmpass");

			Business vo = new Business();
			vo.setId(Integer.parseInt(id));
			vo.setPassword(confirmpass);

			businesservice.updateBusPass(vo);

			return "redirect:/admin/edit?id=" + id;

		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public String edit(@RequestParam(value = "id") Integer id, Locale locale, Model model, HttpSession session) {
		logger.info(" Business {}.", locale);

		if (session.getAttribute("email") != null) {
			Business vo = new Business();
			vo.setId(id.intValue());

			Business business = businesservice.get(vo);
			model.addAttribute("businessEdit", business);
			return "/admin/business-edit";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(MultipartFile uploadfile, Business business, Locale locale, Model model, HttpSession session) {
		logger.info(" Update Business {}.", locale);

		String path = context.getRealPath(context.getInitParameter("uploadLogo"));

		if (session.getAttribute("email") != null) {
			if (!uploadfile.isEmpty()) {
				String fileName = uploadfile.getOriginalFilename();
				String name = uploadfile.getName();
				String type = uploadfile.getContentType();
				logger.info(fileName + "," + name + "," + type);
				// realPath
				try {
					uploadfile.transferTo(new File(path + "\\" + uploadfile.getOriginalFilename()));
					business.setImage(uploadfile.getOriginalFilename());
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				System.out.println(business.getImage());
			}

			businesservice.update(business);
			return "redirect:/admin/all-business";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/add-business" }, method = RequestMethod.GET)
	public String insert(Locale locale, Model model, HttpSession session) {
		logger.info(" Add Business {}.", locale);
		if (session.getAttribute("email") != null) {
			String path = context.getRealPath(context.getInitParameter("uploadLogo"));
			System.out.println(path);
			return "/admin/business-add";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/regist" }, method = RequestMethod.POST)
	public String regist(MultipartFile uploadfile, Business business, Locale locale, Model model, HttpSession session) {
		logger.info("post : savefile");

		String path = context.getRealPath(context.getInitParameter("uploadLogo"));

		if (session.getAttribute("email") != null) {
			if (!uploadfile.isEmpty()) {
				String fileName = uploadfile.getOriginalFilename();
				String name = uploadfile.getName();
				String type = uploadfile.getContentType();
				logger.info(fileName + "," + name + "," + type);
				// realPath
				try {
					uploadfile.transferTo(new File(path + "\\" + uploadfile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			int id = Integer.parseInt(String.valueOf(session.getAttribute("id")));
			business.setAdminId(id);
			business.setImage(uploadfile.getOriginalFilename());

			businesservice.insert(business);
			return "redirect:/admin/all-business";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/view" }, method = RequestMethod.GET)
	public String view(@RequestParam(value = "id") Integer id, Locale locale, Model model, HttpSession session) {
		logger.info("Business admin details {}.", locale);
		if (session.getAttribute("email") != null) {
			Business vo = new Business();
			vo.setId(id.intValue());
			
			Business business = businesservice.get(vo);
			model.addAttribute("business", business);
			
			int countJob = jobservice.listCountJob(id.intValue());
			model.addAttribute("countJob", countJob);
			System.out.println(countJob + "------");

			int expiration = jobservice.listExpiration(id.intValue());
			model.addAttribute("expiration", expiration);

			int validation = jobservice.listValidation(id.intValue());
			model.addAttribute("validation", validation);

			return "/admin/business-details";
		} else {
			return "redirect:/admin";
		}

	}

	@RequestMapping(value = { "/search" }, method = RequestMethod.GET)
	public String search(@RequestParam(value = "text") String text, Locale locale, Model model, HttpSession session) {
		logger.info("Business admin search {}.", locale);
		if (session.getAttribute("email") != null) {
			Business vo = new Business();
			vo.setName(text);

			List<Business> list = businesservice.listName(vo.getName());
			model.addAttribute("searchList", list);
			return "/admin/business-search";
		} else {
			return "redirect:/admin";
		}

	}

}
