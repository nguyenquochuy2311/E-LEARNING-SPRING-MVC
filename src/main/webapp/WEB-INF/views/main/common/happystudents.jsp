<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.coeding.spring.vo.Student" %>

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