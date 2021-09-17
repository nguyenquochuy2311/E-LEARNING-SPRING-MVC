<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>
<!-- Loader -->
	<div id="loader">
		<div class="loader-container">
			<img src="images/site.gif" alt="" class="loader-site">
		</div>
	</div>
	<!-- End Loader -->

	<!-- All Page -->
	<div id="wrapper">

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- End Header -->

		<!-- Top My Page -->
		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>My Page</h1>
					</div>
					<div class="col-md-6 text-right">
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="#">Home</a></li>
								<li><a href="#">Course</a></li>
								<li class="active">Join</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Top My Page -->

		<!-- Sidebar + Content -->
		<section class="white section">
			<div class="container">
				<div class="row">
					<!-- Sidebar -->
					<c:set var="btdiscuss" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/join/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-9">
                        <div class="course-description">
                            <small>Course Status: <span>In Progress</span> </small>
                        </div>
                        <div class="blog-wrapper comment-wrapper">
							<div id="reviews" class="feedbacks">
								<h3>
									Discuss (${discuss.size() })
								</h3>
								<div class="well">
									<div class="media">
										<form method="post" action="${pageContext.request.contextPath }/course/join/discuss/add">
											<input type="text" class="form-control" name="content" placeholder="Enter content here" required></><br>
											<input type="hidden" name="id" value="${join.id}"/>
											<input type="hidden" name="courseId" value="${join.courseId}"/>	
											<input type="submit" class="btn btn-default" value="Send"></>
										</form>
									</div>
								</div>
								<div>
									<div class="well">
										<c:forEach var="discuss" items="${discuss }" varStatus="loop">
											<c:if test="${loop.count<4 }">
												<c:set var="student" value="${discuss.student }"></c:set>
											<c:set var="teacher" value="${discuss.teacher }"></c:set>
											<c:if test="${not empty student }">
												<div class="media">
													<div class="media-left">
														<a href="#">
															<img class="media-object" src="${pageContext.request.contextPath }/resources/upload/images/students/${student.image}" alt="${student.firstName } image">
														</a>
													</div>
													<div class="media-body">
														<h4 class="media-heading">${student.firstName } ${student.lastName }</h4>
														<div class="time-comment clearfix">
															<small class="pull-left">${discuss.create_date }</small>
														</div>
														<p>${discuss.content }</p>
													</div>
												</div>
											</c:if>
											<c:if test="${not empty teacher }">
												<div class="media comment-reply">
													<div class="media-right">
														<a href="#">
															<img class="media-object" src="${pageContext.request.contextPath }/resources/upload/images/instructor/${teacher.image}" alt="${teacher.firstName } image">
														</a>
													</div>
													<div class="media-body">
														<h4 class="media-heading">${teacher.firstName } ${teacher.lastName }</h4>
														<div class="time-comment clearfix">
															<small class="pull-left">${discuss.create_date }</small>
														</div>
														<p>${discuss.content }</p>
													</div>
												</div>
											</c:if>
											</c:if>
										</c:forEach>
										<div class="content-widget">
											<div class="coupon-code-wrapper">
												<p>
													<a class="btn btn-default btn-block" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
														View more? Click to enter here
													</a>
												</p>
												<div class="collapse" id="collapseExample">
													<c:forEach var="discuss" items="${discuss }" varStatus="loop">
														<c:if test="${loop.count>3 }">
															<c:set var="student" value="${discuss.student }"></c:set>
														<c:set var="teacher" value="${discuss.teacher }"></c:set>
														<c:if test="${not empty student }">
															<div class="media">
																<div class="media-left">
																	<a href="#">
																		<img class="media-object" src="${pageContext.request.contextPath }/resources/upload/images/students/${student.image}" alt="${student.firstName } image">
																	</a>
																</div>
																<div class="media-body">
																	<h4 class="media-heading">${student.firstName } ${student.lastName }</h4>
																	<div class="time-comment clearfix">
																		<small class="pull-left">${discuss.create_date }</small>
																	</div>
																	<p>${discuss.content }</p>
																</div>
															</div>
														</c:if>
														<c:if test="${not empty teacher }">
															<div class="media comment-reply">
																<div class="media-right">
																	<a href="#">
																		<img class="media-object" src="${pageContext.request.contextPath }/resources/upload/images/instructor/${teacher.image}" alt="${teacher.firstName } image">
																	</a>
																</div>
																<div class="media-body">
																	<h4 class="media-heading">${teacher.firstName } ${teacher.lastName }</h4>
																	<div class="time-comment clearfix">
																		<small class="pull-left">${discuss.create_date }</small>
																	</div>
																	<p>${discuss.content }</p>
																</div>
															</div>
														</c:if>
														</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
                    </div>
				</div>
			</div>
		</section>
		<!-- End Sidebar + Content -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
	<!-- End Script -->
</body>
</html>