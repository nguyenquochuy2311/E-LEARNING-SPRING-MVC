<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ page import="com.coeding.spring.vo.Course" %>	
<%@ page import="com.coeding.spring.vo.Student" %>
<%@ page import="com.coeding.spring.vo.Teacher" %>

<!DOCTYPE html>
<html>
	<head>
	
		<meta name="description" content="Home Logged Page">
	  	<meta name="author" content="Quoc Huy">
	  	<meta name="keywords" content="">
	
		<title>LearnPLUS</title>
	
		<%@ include file="/WEB-INF/views/common/head.jsp"%>
	</head>

	<body>

		<!-- All Page -->
		<div id="wrapper">
		
		  	<!-- Header -->
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
			<!-- End Header -->
			
			<!-- Silder -->
			<%@ include file="/WEB-INF/views/common/slider.jsp" %>
			<!-- End Silder -->
			
			<!-- Popular Courses -->
			<%@ include file="/WEB-INF/views/main/common/popularCourses2.jsp" %>
			<!-- End Popular Courses -->
			
			<!-- Recommend Jobs -->
			<%@ include file="/WEB-INF/views/common/recommend_jobs.jsp" %>
			<!-- End Recommend Jobs -->
			
			<!-- Collaborative Business -->
			<%@ include file="/WEB-INF/views/common/business.jsp" %>
			<!-- End Collaborative Business -->
			
			<!-- Student's Feedback -->
			<section class="white section">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
						    <div class="section-title text-center">
						      	<h4>Happy Students</h4>
						      	<p>What our students say about iEnglish</p>
						    </div>
						</div>
					</div>
					<div class="row">
						<c:forEach var="student" items="${listStudent}"> 
							<div class="col-lg-4 col-md-4 col-sm-12">
								<div class="testimonial">
									<img class="alignleft img-circle" alt=""
								  	src="${pageContext.request.contextPath}/resources/upload/${student.image}"/>
									<p>Lorem Ipsum is simply dummy text of the printing and industry.</p>
									<div class="testimonial-meta">
										<h4>${student.firstName}<small><a href="#">${student.email}</a><br/>${student.createDate}</small></h4>
									</div>
								</div>
							</div> 
						</c:forEach> 
					</div>
					<div class="button-wrapper text-center">
						<p>
						  Lorem Ipsum is simply dummy text of the printing and typesetting
						  industry. Lorem Ipsum has been the industry's standard dummy text
						  ever since<br />
						  the 1500s, when an unknown printer took a galley of type and
						  scrambled it to make a type specimen book.
						</p>
						<a href="#" class="btn btn-default border-radius"><i class="fa fa-sign-in"></i> Join Us Today</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" class="btn btn-primary"><i class="fa fa-download"></i> Download PDF</a>
					</div>
				</div>
			</section>
			<!-- End Student's Feedback -->
			
			<!-- Feedback -->
			<%@ include file="/WEB-INF/views/common/feedback_form.jsp" %>
			<!-- End Feedback -->
			
			<!-- Footer -->
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
			<!-- End Footer -->
		  
		</div>
		<!-- End All Page -->

		<!-- Javascript  -->
		 	<%@include file ="/WEB-INF/views/common/script.jsp" %>
		<!-- End Javascript  -->
	</body>

</html>