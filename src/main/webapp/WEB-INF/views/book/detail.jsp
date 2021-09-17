<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.coeding.spring.vo.Book"%>
<%@ page import="com.coeding.spring.vo.Course"%>
<%@ page import="com.coeding.spring.vo.Student"%>
<%@ page import="com.coeding.spring.vo.Teacher"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- author KhaiPhan -->
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.load-image {
	border-radius: 15px;
}
</style>
</head>

<body>
	<!-- Loader -->
	<div id="loader">
		<div class="loader-container">
			<img src="" alt="" class="loader-site">
		</div>
	</div>
	<!-- End Loader -->

	<!-- All Page -->
	<div id="wrapper">

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- End Header -->

		<!-- Top Page Book -->
		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>Book Detail Page</h1>
					</div>
					<div class="col-md-6 text-right">
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="${pageContext.request.contextPath}/">Home</a></li>
								<li><a href="${pageContext.request.contextPath}/book">Book</a></li>
								<li><a href="${pageContext.request.contextPath}/book">Book
										detail page</a></li>
								<li class="active">${book.title}</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Top Page Book -->

		<!-- Main Page -->
		<section class="white section">
			<div class="container">
				<div class="row">
					<div id="course-content" class="col-md-8">
						<div id="course-left-sidebar" class="col-md-6">
							<img class="load-image"
								src="${pageContext.request.contextPath}/resources/upload/images/books/${book.image}"
								alt="${book.title}">
						</div>
						<div class="course-description" class="col-md-6">
							<small>Book Status: <span>In Progress</span>
							</small> <small>Book Price: $<span> ${book.price}</span>
							</small>
							<h3 class="course-title">${book.title}</h3>
							<div class="course-description">
								<p>${book.des}</p>
							</div>
							<hr class="invis">
						</div>
					</div>
					<div class="col-md-3 text-right">
						<div class="course-button">
							<!-- Trigger the modal with a button -->
							<button type="button" onclick="location.href='${paymentUrl}'"
								class="btn btn-primary launch" data-toggle="modal"
								data-target="#exampleModalCenter">
								<i class="fa fa-rocket"></i> Pay Now
							</button>
							<!-- Modal -->
							<div class="modal fade" id="exampleModalCenter" tabindex="-2"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<br>
											<h1 class="modal-title" style="text-align: center;"
												id="exampleModalLongTitle">Payment</h1>
										</div>
										<form method="post"
											action="${pageContext.request.contextPath }/authorize_payment">
											<div class="modal-body">
												<h2 style="text-align: left;">goodsinfo</h2>
												<div class="well" style="text-align: left; color: black;">
													<h4>
														Product name: &nbsp;&nbsp;&nbsp;<b> ${book.title }</b>
													</h4>
													<h4>
														Price: &nbsp;&nbsp;&nbsp;$<b> ${book.price }</b>
													</h4>
													<h4>
														Tax: &nbsp;&nbsp;&nbsp;$<b> 10</b>
													</h4>
													<hr>
													<h4>
														Amount: &nbsp;&nbsp;&nbsp;$<b> ${book.price + 10 }</b>
													</h4>
													<input type="hidden" name="product_id" value="${book.id }" />
													<input type="hidden" name="invoice_no"
														value="${invoice_no}" /> <input type="hidden" name="tax"
														value="10" /> <input type="hidden" name="amount"
														value="${book.price + 10 }" /> <input type="hidden"
														name="type" value="book" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-dismiss="modal">Close</button>
												<input type="submit" class="btn btn-default" value="Payment" />
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="other-courses">
						<img
							src="${pageContext.request.contextPath}/resources/main/images/xothers.png.pagespeed.ic.BLyi2PaMRC.png"
							alt="" class="">
					</div>
				</div>
			</div>
		</section>
		<!-- End Main Page -->

		<!-- Related Course in This Book-->
		<section class="grey section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>Related Course in This Book</h2>
						</div>
					</div>
				</div>

				<c:forEach var="course" items="${courseRelated}" varStatus="loop">
					<c:if test="${loop.count < 3}">
						<div class="row course-list teacher-list">
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="shop-item-list entry">
									<div class="">
										<img class="load-image"
											src="${pageContext.request.contextPath}/resources/upload/${course.image}"
											alt="">
									</div>
								</div>
							</div>
							<div class="col-md-6 col-md-6">
								<div class="shop-list-desc">

									<h4>
										<a href="${pageContext.request.contextPath }/course/detail?id=${course.id}">${course.title }</a>
									</h4>
									<c:set var="teacher" value="${course.teacher }"></c:set>
									<div class="shopmeta">
										<span class="pull-left"><strong>Teacher:
												${teacher.firstName }${teacher.lastName }</strong></span>
									</div>
									<hr class="invis clearfix">
									<p>${course.des }</p>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>				

				
			</div>

		</section>
		<!-- End related Course in This Book-->

		<!-- Popular Courses -->
		<%@ include file="/WEB-INF/views/main/common/popularCourses2.jsp"%>
		<!-- Popular Courses -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp"%>
		<!-- End Footer -->

		<!-- Copyright -->
		<%@ include file="/WEB-INF/views/main/common/copyright.jsp"%>
		<!-- End Copyright -->

	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp"%>
	<!-- End Script -->

	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>