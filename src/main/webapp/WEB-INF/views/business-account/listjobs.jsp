<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">


<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
</head>

<body class="bbPress">
	<div id="loader">
		<div class="loader-container">
			<img
				src="${pageContext.request.contextPath }/resources/main/images/site.gif"
				alt="" class="loader-site">
		</div>
	</div>



	<div id="wrapper">
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left"></div>
					<div class="col-md-6 text-right">
						<ul class="list-inline">
							<li><a class="social" href="#"><i class="fa fa-facebook"></i></a>
								<a class="social" href="#"><i class="fa fa-twitter"></i></a> <a
								class="social" href="#"><i class="fa fa-google-plus"></i></a> <a
								class="social" href="#"><i class="fa fa-linkedin"></i></a></li>


							<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown"> My Account</a>
								<div class="dropdown-menu">									
									<button onclick="location.href='${pageContext.request.contextPath }/login/logout'" class="btn btn-block btn-second">Logout</button>
								</div></li>


						</ul>
					</div>
				</div>
			</div>
		</div>



		<header class="header">
			<div class="container">
				<div class="hovermenu ttmenu">
					<div class="navbar navbar-default" role="navigation">


						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="fa fa-bars"></span>
							</button>
							<div class="logo">
								<a class="navbar-brand" href="#"><img
									src="images/xlogo.png.pagespeed.ic.vap6Ukaf0i.png" alt=""></a>
							</div>
						</div>


						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li><a
									href="${pageContext.request.contextPath }/business-account/">List
										Candidate</a></li>
								<li><a class="active"
									href="${pageContext.request.contextPath }/business-account/list-jobs">List
										Jobs</a></li>
								<li><a
									href="${pageContext.request.contextPath }/business-account/create-jobs">Create
										Jobs</a></li>
							</ul>
						</div>


					</div>
				</div>
			</div>
		</header>




		<section class="grey page-title" style="background-color: lavender;">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1 style="font-weight: bold; font-size: 200%;">LIST JOBS</h1>
					</div>
				</div>
			</div>
		</section>



		<section class="white section">
			<div class="container">

				<div class="row">
					<div class="col-md-12">
						<div id="bbpress-forums">
							<ul class="bbp-forums" style="margin: 20px;">


								<li class="bbp-header" style="border-bottom-style: solid;">
									<ul class="forum-titles">
										<li class="bbp-forum-topic-count"
											style="text-align: center; color: red;">Num</li>
										<li class="bbp-forum-info"
											style="width: 45%; text-align: center; color: red;">Title
										</li>
										<li class="bbp-forum-topic-count"
											style="width: 15%; color: red;">Expiry Date</li>
										<li class="bbp-forum-reply-count"
											style="width: 15%; color: red;">Status</li>
										<li class="bbp-forum-freshness"
											style="width: 15%; text-align: center; color: red;">Action</li>
									</ul>
								</li>

								<c:forEach var="job" items="${jobLists }">
									<li class="bbp-header" style="border-bottom-style: solid;">
										<ul class="forum-titles">

											<li class="bbp-forum-topic-count"
												style="text-align: center; margin-top: 20px; font-size: 15px;">${job.id }
											</li>

											<li class="bbp-forum-info"
												style="width: 45%; text-align: center;">
												<ul style="margin-top: 10px; align-items: center;">
													<li><h4 style="text-align: center; font-weight: bold;">${job.name }</h4></li>
												</ul>
											</li>

											<li class="bbp-forum-topic-count"
												style="width: 15%; margin-top: 23px;"><a
												style="color: black;" href="">${job.expiryDate }</a></li>

											<li class="bbp-forum-reply-count"
												style="width: 15%; margin-top: 23px;"><c:if
													test="${job.status == 0 }">
													Online											
												</c:if> <c:if test="${job.status == 1 }">
													Offline											
												</c:if></li>

											<li class="bbp-forum-freshness"
												style="width: 15%; margin-top: 14px; text-align: center;">
												<a style="color: black; font-size: 20px;"
												href="${pageContext.request.contextPath }/business-account/edit-jobs?id=${job.id}">Edit
													|</a> <a style="color: black; font-size: 20px;"
												href="${pageContext.request.contextPath }/business-account/delete-jobs?id=${job.id}">Delete</a>
											</li>

										</ul>
									</li>
								</c:forEach>


							</ul>
						</div>
					</div>
				</div>
				l
			</div>
		</section>

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp"%>
		<!-- End Footer -->

	</div>
	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp"%>
	<!-- End Script -->
</body>

<!-- forums40:16  -->

</html>