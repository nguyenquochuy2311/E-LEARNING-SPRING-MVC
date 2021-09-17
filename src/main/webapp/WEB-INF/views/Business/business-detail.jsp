<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
</head>

<body>
	<div id="loader">
		<div class="loader-container">
			<img
				src="${pageContext.request.contextPath }/resources/main/images/site.gif"
				alt="" class="loader-site">
		</div>
	</div>
	<div id="wrapper">

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- End Header -->


		<section class="white section">
			<div class="container">
				<div class="row">

					<div id="course-left-sidebar" class="col-md-4">
						<div class="course-image-widget">
							<img
								src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}"
								alt="" class="img-responsive">
						</div>
					</div>

					<div id="course-content" class="col-md-8">
						<div class="course-description">
							<h3 class="course-title">${business.name }</h3>
							<p>Address: ${business.address }</p>
							<p>Country: ${business.country }</p>
							<hr>
							<h3>Company Information</h3>
							<p>${business.des }</p>
						</div>
					</div>

				</div>
			</div>
		</section>

		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>Jobs in progress</h1>
					</div>
				</div>
			</div>
		</section>

		<section class="white section">
			<div class="container">
				<div class="row course-list">
					<c:forEach var="job" items="${jobList }">
						<c:forEach var="busi" items="${job.businessId }">


							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="shop-item-list entry" style="margin: 5px">
									<div class="shop-item-title clearfix">
										<img
											src="${pageContext.request.contextPath }/resources/upload/logocompany/${busi.image}"
											alt="" style="width: 50%;" />
									</div>

									<div class="shop-item-title clearfix" style="height: 75px;">
										<h4>
											<a href="/e-learning/job/view?id=${job.id}">${job.name}</a>
										</h4>
									</div>

									<div class="shop-item-title clearfix" style="height: 50px">

										<p style="font-size: 16px; color: black;">${job.createDate }
											| ${job.expiryDate}</p>

									</div>


								</div>
							</div>



						</c:forEach>
					</c:forEach>
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

<!-- page-contact40:34 GMT -->

</html>