package com.coeding.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.spring.service.BusinessService;
import com.coeding.spring.service.StudentService;
import com.coeding.spring.service.TeacherService;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.Teacher;
import com.coeding.spring.vo.User;

/**
 * @author Quoc huy
 * Login, Logout, Sign Up
 */

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private StudentService studentService;
	
	@Autowired 
	private TeacherService teacherService;
	
	@Autowired
	private BusinessService businessService;

	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String login(Locale locale, Model model, HttpServletRequest request) {
		logger.info("------------Form Login---------------", locale);

		String url = "login/login_form";
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user")!=null) {
			User user = (User) session.getAttribute("user");
			int role = user.getRole();
			switch (role) {
			case 1:
				url = "redirect:/";
				break;
			case 2:
				url = "redirect:/teacher-area";
				break;
			case 3:
				url = "redirect:/business-account";
				break;
			default:
				break;
			}
		}
		
		String user_old = "";
		
		if(request.getCookies()!=null){
			Cookie ck[] = request.getCookies();
			for(Cookie cookie : ck) {
				if(cookie.getName().compareTo("user_old")==0) {
					user_old = cookie.getValue().toString();
				}
				cookie.setMaxAge(0);
				cookie.setValue(null);
			}
		}
			
		model.addAttribute("user_old", user_old);
		
		return url;
	}
	
	@RequestMapping(value = {"/checklogin"}, method = RequestMethod.POST)
	public String checklogin(Student vo, Locale locale, Model model, 
			HttpServletRequest request, HttpServletResponse response){
		logger.info("--------------Check Login-------------", locale);
		
		String u_name = vo.getUserName();
		String pass = vo.getPassword();
		
		Teacher teacher = new Teacher();
		teacher.setUserName(u_name);
		teacher.setPassword(pass);
		
		Business business = new Business();
		business.setUserName(u_name);
		business.setPassword(pass);
		
		String url="redirect:/";
		HttpSession session = request.getSession(); 
		
		
		if(studentService.checkLogin(vo)!=null) {
			Student student = studentService.checkLogin(vo);
			student.setRole(1);
			session.setAttribute("user", student);
		}else if(teacherService.checkLogin(teacher)!=null){
			teacher = teacherService.checkLogin(teacher);
			teacher.setRole(2);
			session.setAttribute("user", teacher);
			url = "redirect:/teacher-area";
		}else if(businessService.checkLogin(business)!=null){
			business = businessService.checkLogin(business);
			business.setRole(3);
			session.setAttribute("user", business);
			url = "redirect:/business-account";
		}else {
			Cookie ck = new Cookie("user_old", vo.getUserName());
			response.addCookie(ck);
			url =  "redirect:/login";
		}
		return url;
	}
	
	@RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpServletRequest request) {
		logger.info("------------Logout---------------", locale);
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = {"/regist"}, method = RequestMethod.GET)
	public String signup(Locale locale, Model model, HttpServletRequest request) {
		logger.info("-------------Sign Up--------------", locale);
		
		String username = "";
		String email = "";
		String first_name = "";
		String last_name = "";
		
		String message="";
		
		if(request.getCookies()!=null){
			Cookie ck[] = request.getCookies();
			for(Cookie cookie : ck) {
				if(cookie.getName().compareTo("Username")==0) {
					username = cookie.getValue().toString();
				}else if(cookie.getName().compareTo("Email")==0) {
					email = cookie.getValue().toString();
				}else if(cookie.getName().compareTo("FirstName")==0) {
					first_name = cookie.getValue().toString();
				}else if(cookie.getName().compareTo("LastName")==0) {
					last_name = cookie.getValue().toString();
				}
				cookie.setMaxAge(0);
				cookie.setValue(null);
			}
		}
		
		model.addAttribute("username", username);
		model.addAttribute("email", email);
		model.addAttribute("firstName", first_name);
		model.addAttribute("lastName", last_name);
		
		if(request.getAttribute("message")!=null) {
			message = request.getAttribute("message").toString();
			System.out.println(message);
		}
		model.addAttribute("message",message);
		
		return "login/regist_form";
	}
	
	@RequestMapping(value = {"/signup"}, method = RequestMethod.POST)
	public String checksignup(@RequestParam("confirm-password") String confirm_pass,
			Student vo, Locale locale, Model model, HttpServletResponse response, HttpServletRequest request) {
		logger.info("------------Check Sign Up---------------", locale);
		
		Teacher teacher = new Teacher();
		teacher.setUserName(vo.getUserName());
		
		Business business = new Business();
		business.setUserName(vo.getUserName());
		
		if(!vo.getPassword().equals(confirm_pass) || 
				studentService.checkUserName(vo)!=null ||
					studentService.checkEmail(vo)!=null ||
						teacherService.checkUserName(teacher)!=null ||
							businessService.checkUserName(business)!=null){
							
			Cookie ck = new Cookie("Username", vo.getUserName());
			Cookie ck1 = new Cookie("Email", vo.getEmail());
			Cookie ck2 = new Cookie("FirstName", vo.getFirstName());
			Cookie ck3 = new Cookie("LastName", vo.getLastName());
			
			response.addCookie(ck);
			response.addCookie(ck1);
			response.addCookie(ck2);
			response.addCookie(ck3);
			
			String message = "";
			
			if(!vo.getPassword().equals(confirm_pass)) {
				message = "Wrong password confirm";
			}else if(studentService.checkEmail(vo)!=null) {
				message = "Email existed";
			}else if(studentService.checkUserName(vo)!=null) {
				message = "User Name existed";
			}else if(teacherService.checkUserName(teacher)!=null){
				message = "User Name existed";
			}
			
			request.setAttribute("message", message);
			
			return "redirect:/login/regist";
		}else {
			studentService.insert(vo);

			//request.setAttribute("confirm_regist", "Regist Success");
			
			if(request.getCookies()!=null){
				Cookie ck[] = request.getCookies();
				for(Cookie cookie : ck) {
					cookie.setMaxAge(0);
					cookie.setValue(null);
				}
			}
		}
		return "redirect:/login";
	}
}
