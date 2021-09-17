package com.coeding.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

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

import com.coeding.spring.service.impl.CategoryServiceImpl;

import com.coeding.spring.vo.Category;
import com.coeding.spring.vo.Teacher;

/**
 * 
 * @author KhaiPhan
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminCategoryController {
	@Autowired
	ServletContext c;
	private static final Logger logger = LoggerFactory.getLogger(AdminCategoryController.class);
		
	@Autowired
	private CategoryServiceImpl categoryServiceImpl;
	
	@RequestMapping(value = {"/all-category"}, method = RequestMethod.GET)
	public String categoryHomeAdmin(Locale locale, Model model) {
		logger.info("Welcome Admin Category ! The client locale is {}.", locale);
		
		List<Category> listcategory = categoryServiceImpl.list(null);
		model.addAttribute("listcategory", listcategory);
		System.out.println("list: " + listcategory.toString());
		
		return "adminhai/all-category";	
	}

	@RequestMapping(value = {"/edit-category"}, method = RequestMethod.GET)
	public String editcategoryAdminGET(Locale locale, Model model,HttpSession session, Category vo) {
		logger.info("Welcome edit category ! The client locale is {}.", locale);
		
		Category category = categoryServiceImpl.admingetOneCategory(vo);
		model.addAttribute("category", category);
		return "adminhai/edit-category";
	}
	
	@RequestMapping(value = {"/edit-category"}, method = RequestMethod.POST)
	public String editcategoryAdminPOST(Locale locale, Model model, HttpSession session, Category vo) {
		logger.info("Welcome edit category ! The client locale is {}.", locale);

		categoryServiceImpl.update(vo);
		System.out.println("ss : "+ vo.toString());
		return "redirect:/admin/all-category";	
	}
	
	@RequestMapping(value = {"/delete-category"}, method = RequestMethod.GET)
	public String categorydelete(@RequestParam(value="id") Integer id, Locale locale, Model model) {
		logger.info("Welcome Delete Category ! The client locale is {}.", locale);
		
		Category vo = new Category();
		vo.setId(id.intValue());
		categoryServiceImpl.delete(vo);
		
		System.out.println("vo"+ vo.toString());
		return "redirect:/admin/all-category";	
	}
	
	@RequestMapping(value = {"/update-category"}, method = RequestMethod.POST)
	public String updatecategory(Locale locale, Model model, HttpServletRequest rq) {
		logger.info("Welcome update category ! The client locale is {}.", locale);
		
		Category vo = new Category();
		vo.setTitle(rq.getParameter("title"));
		vo.setDes(rq.getParameter("des"));
		
		categoryServiceImpl.update(vo);
		
		System.out.println("vo"+ vo);
		return "redirect:/adminhai/all-category";	
	}
	
	@RequestMapping(value = {"/add-category"}, method = RequestMethod.GET)
	public String addcategoryGET(Locale locale, Model model,HttpSession session) {

		return "adminhai/add-category";	
	}
	
	@RequestMapping(value = {"/add-category"}, method = RequestMethod.POST)
	public String addcategoryPOST(Locale locale, Model model, HttpSession session, Category vo, MultipartFile uploadfile) {
		logger.info("Welcome update category ! The client locale is {}.", locale);
		
		String fileName="";
		if( !uploadfile.isEmpty() ) {
			 fileName = uploadfile.getOriginalFilename();
			String name = uploadfile.getName();
			String type = uploadfile.getContentType();
			
			System.out.println(vo.toString());
			System.out.println(c.getRealPath("/")+"resources/upload/adminupload"
				+ uploadfile.getOriginalFilename());
			// realPath
			try {
				uploadfile.transferTo(
						new File(c.getRealPath("/")+"resources/upload/images/"
									+ uploadfile.getOriginalFilename())
				);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		vo.setImage(fileName);
		categoryServiceImpl.insert(vo);
		return "redirect:/admin/all-category";	
	}
}