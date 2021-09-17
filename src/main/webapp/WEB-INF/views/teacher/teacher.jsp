<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<meta name="description" content="Teacher Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Info | LearnPLUS</title>
    
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>

	<!-- Loader -->
	<div id="loader">
		<div class="loader-container">
			<img src="${pageContext.request.contextPath }/resources/main/images/site.gif" alt="" class="loader-site">
		</div>
	</div>
	<!-- End Loader -->

	<!-- All Page -->
	<div id="wrapper">

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- End Header -->

		<section class="grey page-title" style="background-color: lavender;">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1 style="font-weight: bold; font-size: 200%;">My Info</h1>
					</div>
					<div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath }/teacher-area">Home</a></li>
                                <li><a href="${pageContext.request.contextPath }/teacher-area">My Info</a></li>
                            </ol>
                        </div>
                    </div>
				</div>
			</div>
		</section>

		<!-- Sidebar + Content -->
		<section class="white section">
			<div class="container">
				<div class="row">
					
					<!-- Sidebar -->
					<c:set var="btmyinfo" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/teacher/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-8">
						<div class="blog-wrapper">
							<div class="blog-desc">
								<div class="shop-cart">
									<table class="table">
										<tbody>
											<tr>
												<td>
													<h1>${teacher.firstName}</h1>
												</td>
												<td></td>
												<td><a href="${pageContext.request.contextPath }/teacher-area/editinfo" class="btn btn-default">Edit
														Info</a></td>
											</tr>
											<tr>
												<td>
													<p>Last Name</p>
												</td>
												<td>
													<p>${teacher.lastName}</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>id</p>
												</td>
												<td>
													<p>${teacher.id}</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>email</p>
												</td>
												<td>
													<p>${teacher.email}</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>phone number</p>
												</td>
												<td>
													<p>${teacher.phoneNumber }</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>date of accession</p>
												</td>
												<td>
													<p>${teacher.createDate}</p>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="coupon-code-wrapper">
										<a class="btn btn-default btn-block" role="button"
											data-toggle="collapse" href="#collapseExample"
											aria-expanded="false" aria-controls="collapseExample">
											Statistics of the number of courses? Click to enter here </a>
										<div class="collapse" id="collapseExample">
											<div class="well">
												<div class="media">
													<h2>My course</h2>
													<div class="row my_featureRow">
														<div
															class="col-xs-6 col-sm-6 my_feature col-xs-6 text-center">
															<p>My enrolled course</p>
														</div>
														<div class="col-xs-6 col-sm-6">
															<div class="row">
																<div class="col-xs-6 col-sm-12 my_planFeature my_plan3">
																	3 things</div>
															</div>
														</div>
													</div>
													<div class="row my_featureRow">
														<div
															class="col-xs-6 col-sm-6 my_feature col-xs-6 text-center">
															<p>My bought course</p>
														</div>
														<div class="col-xs-6 col-sm-6">
															<div class="row">
																<div class="col-xs-6 col-sm-12 my_planFeature my_plan3">
																	3 things</div>
															</div>
														</div>
													</div>
													<div class="row my_featureRow">
														<div
															class="col-xs-6 col-sm-6 my_feature col-xs-6 text-center">
															<p>My completed course</p>
														</div>
														<div class="col-xs-6 col-sm-6">
															<div class="row">
																<div class="col-xs-6 col-sm-12 my_planFeature my_plan3">
																	0 things</div>
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
					</div>
				</div>
			</div>
		</section>
		<!-- End Sidebar + Content -->

	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/common/script.jsp" %>
	<!-- End Script -->
	
</body>

</html>
