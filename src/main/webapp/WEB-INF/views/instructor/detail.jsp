<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.coeding.spring.vo.Teacher" %>
<%@ page import="com.coeding.spring.vo.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

  	<head>
		<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
	</head>
	
	<body class="bbPress">
	    
	    <!-- Loader -->
	    <div id="loader">
	        <div class="loader-container">
	            <img src="${pageContext.request.contextPath}/images/site.gif" alt="" class="loader-site">
	        </div>
	    </div>
	    <!-- End Loader -->
    
	    <!-- All Page -->
	    <div id="wrapper">

			<!-- Header -->
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
			<!-- End Header -->
     	
     		<!-- Top By Cat -->
			<section class="grey page-title">
				<div class="container">
					<div class="row">
						<div class="col-md-6 text-left">
							<h1>Instructor Forums</h1>
						</div>
						<div class="col-md-6 text-right">
							<div class="bread">
								<ol class="breadcrumb">
									<li><a href="${pageContext.request.contextPath}/">Home</a></li>
									<li><a href="${pageContext.request.contextPath}/instructor">Instructor</a></li>
									<li class="active">Forums</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End Top By Cat -->
			
			<section class="white section">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="section-title text-center">
								<h4>Instructor</h4>
								<p>Let me introduce teacher who will be in charge of studying to you!</p>
							</div>
						</div>
					</div>
					<hr class="invis" />
					<div class="row">
						<div class="col-md-12">
							<div id="bbpress-forums">
								<ul class="bbp-forums">
									<li class="bbp-header">
									  <ul class="forum-titles">
									    <li class="bbp-forum-info">Forums</li>
									    <li class="bbp-forum-topic-count">Topics</li>
									    <li class="bbp-forum-reply-count">Posts</li>
									    <li class="bbp-forum-freshness">Freshness</li>
									  </ul>
									</li>
									<li class="bbp-body">          
									  <ul class="forum type-forum">
										<li class="bbp-forum-info">
											<img src="${pageContext.request.contextPath}/resources/upload/images/instructor/${teacher.image}" alt="${teacher.firstName}"
										  		class="alignleft img-thumbnail"/>
											<a class="bbp-forum-title" href="#" title="General">${teacher.firstName}</a>
											<div class="bbp-forum-content">
											 	Name : ${teacher.firstName} ${teacher.lastName}<br/> 
												Email : ${teacher.email}<br/> 
												Address : ${teacher.address}<br/>
										  	</div>
										</li>
									    <li class="bbp-forum-topic-count">44</li>
									    <li class="bbp-forum-reply-count">134</li>		  
									    <li class="bbp-forum-freshness">
											<a href="#" title="Reply To: Please NOTIFY YOUR CUSTOMERS of UPDATES">2 days, 7 hours ago</a>
											<p class="bbp-topic-meta">
												<span class="bbp-topic-freshness-author">
													<a href="#" title="View admin profile" class="bbp-author-avatar" rel="nofollow">
														<img alt="" class="avatar"
													    src="${pageContext.request.contextPath }/resources/main/xstudent_05.png.pagespeed.ic.moTx3bMNF3.png"/>
													</a>&nbsp;
													<a href="#" title="View admin profile" class="bbp-author-name" rel="nofollow">Bobby DISTLEs</a>
												</span>
											</p>
									    </li>
									  </ul>              
									</li>          
								</ul>
							</div>
						</div>
					</div>	
				</div>
			</section>

			<!-- Student's Feedback -->
			<%@ include file="/WEB-INF/views/main/common/happystudents.jsp" %>
			<!-- End Student's Feedback -->
   						
			<!-- Footer -->
			<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
			<!-- End Footer -->
						
			<!-- Copyright -->
			<%@ include file="/WEB-INF/views/main/common/copyright.jsp" %>
			<!-- End Copyright -->
			
    	</div>
   		<!-- End all Page -->
	    
	    <!-- Script -->
		<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
		<!-- End Script -->
	
	</body>

</html>