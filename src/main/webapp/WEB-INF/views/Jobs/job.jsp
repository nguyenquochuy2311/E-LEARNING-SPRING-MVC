<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
</head>
<body>
	<div id="loader">
		<div class="loader-container">
			<img
				src="${pageContext.request.contextPath }/resources/main/images/site.gif"
				alt="" class="loader-site" />
		</div>
	</div>

	<div id="wrapper">


		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- End Header -->

		<c:if test="${user.role == 1 }">
			<!-- Recommend Job -->
			<%@ include file="/WEB-INF/views/common/recommend_jobs.jsp"%>
			<!--  -->
		</c:if>


		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>Popular Jobs</h1>
					</div>
				</div>
			</div>
		</section>

		<section class="white section">
			<div class="container">
				<div class="row course-list">

					<c:forEach var="job" items="${jobLists }">
						<c:forEach var="business" items="${job.businessId }">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="shop-item-list entry" style="margin: 5px">

									<div class="shop-item-title clearfix">
										<img
											src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}"
											alt="" style="width: 50%;" />
									</div>

									<div class="shop-item-title clearfix" style="height: 75px;">
										<h4>
											<a href="/e-learning/job/view?id=${job.id}">${job.name}</a>
										</h4>
									</div>

									<div class="shop-item-title clearfix" style="height: 80px">
										<p style="font-size: 16px; color: black;">${business.name }</p>
									</div>

									<div class="shop-item-title clearfix" style="height: 50px">
										<p style="font-size: 16px; color: black; font-weight: bold;">${job.createDate }
											| ${job.expiryDate}</p>
									</div>


								</div>
							</div>
						</c:forEach>
					</c:forEach>

				</div>

				<div class="row">
					<div class="col-md-12">

						<nav class="text-center">

							<ul class="pagination">
								<c:forEach var="i" begin="1" end="${countJob }" step="1">

									<li><a
										href="${pageContext.request.contextPath }/job/pageid/${i}">${i }</a></li>

								</c:forEach>

							</ul>

						</nav>

					</div>
				</div>


			</div>
		</section>

		<section class="grey section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title text-center">
							<h4>Happy Students</h4>
							<p>What Our Students Say About LearnPLUS</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="testimonial">
							<img class="alignleft img-circle"
								src="${pageContext.request.contextPath }/resources/upload/xstudent_01.png.pagespeed.ic.756JwMcqdq.png"
								alt="" />
							<p>Lorem Ipsum is simply dummy text of the printing and
								industry.</p>
							<div class="testimonial-meta">
								<h4>
									John DOE <small><a href="#">.com</a></small>
								</h4>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="testimonial">
							<img class="alignleft img-circle"
								src="${pageContext.request.contextPath }/resources/upload/xstudent_02.png.pagespeed.ic.y-PM-y4pVj.png"
								alt="" />
							<p>Lorem Ipsum is simply dummy text of the most popular
								items.</p>
							<div class="testimonial-meta">
								<h4>
									Jenny Anderson <small><a href="#">photodune.com</a></small>
								</h4>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="testimonial">
							<img class="alignleft img-circle"
								src="${pageContext.request.contextPath }/resources/upload/xstudent_03.png.pagespeed.ic.uCQY3WNMCJ.png"
								alt="" />
							<p>Lorem Ipsum is simply dummy text of the printing.</p>
							<div class="testimonial-meta">
								<h4>
									Mark BOBS <small><a href="#">tutsplus.com</a></small>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="button-wrapper text-center">
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting
						industry. Lorem Ipsum has been the industry's standard dummy text
						ever since<br /> the 1500s, when an unknown printer took a galley
						of type and scrambled it to make a type specimen book.
					</p>
					<a href="#" class="btn btn-default border-radius"><i
						class="fa fa-sign-in"></i> Join Us Today</a> &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="btn btn-primary"><i class="fa fa-download"></i>
						Download PDF</a>
				</div>
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

<!-- blog00  -->
</html>
