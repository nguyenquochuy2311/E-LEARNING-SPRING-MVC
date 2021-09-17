<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.coeding.spring.vo.Course" %>
<%@ page import="com.coeding.spring.vo.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Popular Course -->
<section class="white section">
	<div class="container">
		<div class="row">
		    <div class="other-courses">
			    <img src="${pageContext.request.contextPath}/resources/main/images/xothers.png.pagespeed.ic.BLyi2PaMRC.png" alt="" class="">
			</div>
		    <div class="col-md-12">
		        <div class="section-title">
		            <h3>Popular Courses | Popular recruitment information</h3>
		        </div>	
		    </div>
	    </div>
		<div id="owl-featured" class="owl-custom">
		    <c:forEach var="course" items="${courseList}">
				<c:set var="studenttotal" value="${studenttotal+1}" />
				<div class="owl-featured">
				    <div class="shop-item-list entry">
				        <div class="">      	
				            <img src="${pageContext.request.contextPath}/resources/upload/${course.image}" alt="${course.title}">
				    		<div class="magnifier"></div>
						</div>
						<div class="visible-buttons">
						    <a title="Add to Cart" href="page-shop-cart.html"><span class="fa fa-cart-arrow-down"></span></a>
						    <a title="Read More" href="${pageContext.request.contextPath}/"><span class="fa fa-search"></span></a>
				        </div>
						<div class="shop-item-title clearfix">
						    <h4><a href="${pageContext.request.contextPath}/admin/detailcourses">${course.title}</a></h4>
							<div class="shopmeta">
							    <span class="pull-left">Total : ${studenttotal} Student</span>
							    <div class="rating pull-right">
							        <i class="fa fa-star"></i>
							        <i class="fa fa-star"></i>
							        <i class="fa fa-star"></i>
							        <i class="fa fa-star"></i>
							        <i class="fa fa-star"></i>
							    </div>
							</div>
						</div>
				    </div>    
				</div>
			</c:forEach>     		        
		</div>
	</div>
</section>
<!-- End Popular Course -->