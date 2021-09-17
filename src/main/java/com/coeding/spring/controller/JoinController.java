package com.coeding.spring.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.spring.service.CertificateService;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.DiscussService;
import com.coeding.spring.service.FeedbackService;
import com.coeding.spring.service.LessonService;
import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Discuss;
import com.coeding.spring.vo.Feedback;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Notice;
import com.coeding.spring.vo.Progress;
import com.coeding.spring.vo.Reference;
import com.coeding.spring.vo.Star;
import com.coeding.spring.vo.Student;

/**
 * @author Dang Vinh
 */
@Controller
@RequestMapping(value = "/course/join")
public class JoinController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private LessonService lessonService;
	@Autowired
	private CertificateService certificateService;
	@Autowired
	private FeedbackService feedbackService;
	@Autowired
	private DiscussService discussService;
	
	@RequestMapping( value = {"", "/", "/lessons"}, method = {RequestMethod.GET, RequestMethod.POST}) 
	public String join(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My Course {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {	
			Cookie[] cookies = request.getCookies();		
			if(cookies!=null) {
				int lessonId = 0;
				int progress = 0;
				for (int i=0; i<cookies.length; i++) {
					if (cookies[i].getName().equals("lessonId")) {
						lessonId = Integer.parseInt(cookies[i].getValue());
					} else if (cookies[i].getName().equals("progress")) {
						progress = Integer.parseInt(cookies[i].getValue());
					}
				}
				if(lessonId!=0 && progress!=0) {
					lessonService.saveProgress(join.getId(), lessonId, progress);
				}
			}					
			int sumProcess = 0;
			List<Lesson> list = courseService.listLesson(join);
			if (list!=null) {
				for (int i=0; i<list.size(); i++) {
					if (list.get(i).getProgress()!=null) {
						sumProcess += (list.get(i).getProgress().getProgress() * 100) / (list.size()*100) ;
					}
				}
				join.setSumProcess(sumProcess);
				sumProcess = courseService.saveSumProcess(join);
			}							
			Course course = courseService.getCourse(join.getCourseId());
			Certificate certificate = certificateService.get(join);
			model.addAttribute("certificate", certificate);
			model.addAttribute("join", join);
			model.addAttribute("course", course);
			model.addAttribute("list", list);			
			model.addAttribute("sumProcess", sumProcess);
			url = "/main/join/lessons";		
		}
		return url;
	}
	
	@RequestMapping( value = {"/notices"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String notices(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My notices {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			List<Notice> list = courseService.listNotice(join);
			model.addAttribute("join", join);
			model.addAttribute("list", list);
			url = "/main/join/notices";
		}
		return url;
	}
	
	@RequestMapping( value = {"/references"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String references(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My references {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			List<Reference> list = courseService.listRef(join);
			model.addAttribute("join", join);
			model.addAttribute("list", list);
			url = "/main/join/references";
		}
		return url;
	}
	
	@RequestMapping( value = {"/discuss"}, method = RequestMethod.GET)
	public String discuss(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My discuss {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			Discuss param = new Discuss();
			param.setJoin(join);
			List<Discuss> discuss = discussService.list(param);
			System.out.println(discuss.size());
			model.addAttribute("join", join);
			model.addAttribute("discuss", discuss);
			url = "/main/join/discuss";
		}
		return url;
	}
	
	@RequestMapping(value = {"/discuss/add"}, method = {RequestMethod.POST})
	public String addDiscuss(@RequestParam("content") String content, Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My discuss {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			Discuss discuss = new Discuss();
			discuss.setContent(content);
			discuss.setStudent(vo);
			discuss.setJoin(join);
			
			discussService.insert(discuss);
			url = "redirect:/course/join/discuss?id="+join.getId()+"&courseId="+join.getCourseId();
		}
		
		return url;
	}
	
	@RequestMapping( value = {"/reviews"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String reviews(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My reviews {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			model.addAttribute("student", vo);
			model.addAttribute("join", join);
			Feedback fb = new Feedback();
			fb.setCourseId(join.getCourseId());
			List<Feedback> list = feedbackService.list(fb);
			List<Star> lstar = feedbackService.countFeedbackByStar(fb);
			double count=0;
			double sum=0;
			
			List<Star> ls = new ArrayList<>();
			Star star1 = new Star(1, 0, 0, 0);
			Star star2 = new Star(2, 0, 0, 0);
			Star star3 = new Star(3, 0, 0, 0);
			Star star4 = new Star(4, 0, 0, 0);
			Star star5 = new Star(5, 0, 0, 0);
			ls.add(star1); ls.add(star2); ls.add(star3); ls.add(star4); ls.add(star5);
			
			for (int i=0; i<lstar.size(); i++) {
				count += lstar.get(i).getCount();
				sum += lstar.get(i).getSum();			
				double tmp = ( (double)lstar.get(i).getCount() ) / (  (double)list.size() ) * 100 ;
				lstar.get(i).setPercent( (int) tmp);
				
				System.out.println( lstar.get(i).getPercent() );			
				int k = lstar.get(i).getStar();
				ls.set(k-1, lstar.get(i)); 
			}
			
			for (int i=0; i<ls.size(); i++) {
				System.out.println(" " + ls.get(i).getStar() + 
								   " " + ls.get(i).getCount() +
								   " " + ls.get(i).getSum() + 
								   " " + ls.get(i).getPercent()  );
			}
			double dstar = sum/count ;
			int istar = (int) Math.round(dstar);			
			dstar = Math.round(dstar * 100.0) / 100.0;
			System.out.println("-------" + dstar + istar);
			model.addAttribute("list", list);
			model.addAttribute("dstar", dstar);
			model.addAttribute("istar", istar);
			model.addAttribute("ls", ls);
			url = "/main/join/reviews";
		}
		return url;
	}
	
	@RequestMapping( value = {"/view"}, method = {RequestMethod.GET})
	public String view( Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My views {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {			
			Lesson lesson = (Lesson) session.getAttribute("lesson");
			model.addAttribute("join", join);
			model.addAttribute("lesson", lesson);	
			url = "/main/join/view";
		}
		return url;
	}
	
	@RequestMapping( value = {"/setLesson"}, method = {RequestMethod.GET})
	public String setLesson( Join join, Locale locale, Model model, HttpServletRequest request) {
		
		String progress = request.getParameter("progress");	
		String lessonId = request.getParameter("lessonId");
		String title = request.getParameter("title");
		String des = request.getParameter("des");
		String video = request.getParameter("video");
		Lesson lesson = new Lesson();
		lesson.setId( Integer.parseInt(lessonId) );
		lesson.setTitle(title);
		lesson.setDes(des);
		lesson.setVideo(video);
		
		HttpSession session = request.getSession();
		session.setAttribute("lesson", lesson);
		return "redirect:/course/join/view?id=" + join.getId() + "&courseId=" + join.getCourseId() + "&progress=" + progress ;
	}
	
	@RequestMapping( value = {"/complete"}, method = {RequestMethod.GET})
	public String complete( Join join, Locale locale, Model model, HttpServletRequest request) {
		
		ServletContext ctx = request.getServletContext();
		String certPath = ctx.getRealPath(ctx.getInitParameter("Certificate"));
		HttpSession session = request.getSession();
		Student student = (Student) session.getAttribute("user");		
		Certificate certificate = new Certificate();
		certificate.setTitle("studentId-" + student.getId() + "_courseId-" + join.getCourseId() + ".png");
		certificate.setJoinId(join.getId());
		certificateService.insert(certificate);	
		certificate = certificateService.get(join);
		System.out.println(certPath);
		createCertificate(certPath, certificate);
		return "redirect:/course/join?id=" + join.getId() + "&courseId=" + join.getCourseId();
	}
	
	@RequestMapping( value = {"/feedback"}, method = {RequestMethod.GET})
	public String feedback(Locale locale, Model model, HttpServletRequest request) {
		ServletContext ctx = request.getServletContext();
		String studentId = request.getParameter("studentId");
		String joinId = request.getParameter("joinId");
		String courseId = request.getParameter("courseId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		
		Feedback fb = new Feedback(0, Integer.parseInt(studentId), title, content, Integer.parseInt(courseId), 0, 
				Integer.parseInt(star), 0, null );	
		feedbackService.insert(fb);
		System.out.println("------" + studentId + joinId + " " + courseId + title + content + star);
		return "redirect:/course/join/reviews?id=" + joinId + "&courseId=" + courseId;
	}
	
	public void createCertificate(String certPath, Certificate certificate) {
		int width = 800;
        int height = 550;
        String s = "";
        // Constructs a BufferedImage of one of the predefined image types.
        try {
        	
			BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			Graphics g = bufferedImage.createGraphics();
    
		 // Create a graphics which can be used to draw into the buffered image
		    g.setColor(new Color( 24, 116, 205 ));
	        g.fillRect(0, 0, width, height);
	        g.setColor(new Color(250, 250, 210));
	        g.fillRect(15, 15, 770 , 520);	        
	        g.setColor(new Color(0, 0, 139));
	        g.fillRect(20, 20, 760 , 510);
	        g.setColor(new Color(250, 250, 210));
	        g.fillRect(25, 25, 750 , 500);      
	        g.setFont(new Font("Times New Roman", Font.BOLD, 50));
	        g.setColor(new Color(178, 34, 34));
	        g.drawString("CERTIFICATE", 100, 100);	        
	        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
	        g.setColor(new Color(25, 25, 112));
	        g.drawString("OF COMPLETION", 100, 140);	        
	        g.setFont(new Font("Times New Roman", Font.BOLD, 18));
	        g.setColor(new Color(54, 54, 54));
	        g.drawString("This is to certify that", 100, 200);
	        
	        s = certificate.getStudent().getLastName() + " " + certificate.getStudent().getFirstName() ; // Name
	        g.setFont(new Font("Kunstler Script", Font.BOLD, 70));
	        g.setColor(new Color(32, 178, 170));
	        g.drawString(s, 100, 275);
       
	        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
	        g.setColor(Color.black);
	        g.drawString("has successfullly completed the course", 100, 340);
	              
	        s = certificate.getCourse().getTitle(); // Course
	        g.setFont(new Font("Times New Roman", Font.BOLD, 40));
	        g.setColor(new Color(205, 16, 118));
	        g.drawString(s, 100, 385);
	        
	        DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");  
	        s = dateFormat.format(certificate.getFinishDate()); // finish date
	        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
	        g.setColor(new Color(138, 43, 226));
	        g.drawString(s, 140, 450);
	        
	        s = certificate.getTeacher().getLastName() + " " + certificate.getTeacher().getFirstName(); // Teacher
	        g.setFont(new Font("Times New Roman", Font.BOLD, 30));
	        g.setColor(new Color(0, 128, 128));
	        g.drawString(s, 450, 450);
	 
	        // Disposes of this graphics context and releases any system resources that it is using. 
	        
	        BufferedImage logo = ImageIO.read(new File(certPath + File.separator + "logo.png"));
			BufferedImage logoText = ImageIO.read(new File(certPath + File.separator + "logo-text.png"));
			g.drawImage(logo, 580, 20, null);
		    g.drawImage(logoText, 333, 493, null);
	        
	        g.dispose();
	        	    
	        File file = new File(certPath + File.separator + certificate.getTitle());
	        ImageIO.write(bufferedImage, "png", file);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
