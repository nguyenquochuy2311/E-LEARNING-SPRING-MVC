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


		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>JOBS INFORMATION</h1>
					</div>
				</div>
			</div>
		</section>


		<section class="white section">
			<div class="container">
				<div class="row">

					<c:forEach var="business" items="${job.businessId }">
						<c:forEach var="cate" items="${job.categoryId }">
							<div id="course-left-sidebar" class="col-md-4">

								<div class="course-image-widget">
									<img
										src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}"
										alt="" class="img-responsive">
								</div>

								<div class="course-meta">
									<h1 style="color: aliceblue;">${business.name}</h1>
									<p class="course-category">Category : ${cate.title }</p>
									<hr>
									<p class="course-student">Country : ${business.country }</p>
									<hr>
									<p class="course-forum">
										<a href="/e-learning/business/view?id=${business.id}" title="">Company
											Information ></a>
									</p>
								</div>
							</div>


							<div id="course-content" class="col-md-8">
								<div class="course-description">
									<small>Status: <span> <c:if
												test="${job.status == '0' }">
													Online											
										</c:if> <c:if test="${job.status == '1' }">
													Offline											
										</c:if>

									</span>
									</small>
									<h3 class="course-title">${job.name }</h3>
									<p>Experience: ${job.experience }</p>
									<p>Salary: ${job.salary }</p>
									<p>Address: ${business.address }</p>
									<p>Expiry: ${job.expiryDate }</p>
									<hr>
									<h3>Top Reasons To Join Us</h3>
									<h4>Description</h4>
									<p>${job.des }</p>
									<h4>Requirement</h4>
									<p>${job.requirement }</p>
								</div>


								<c:choose>
									<c:when test="${user.role == 1 }">
										<a class="btn btn-default btn-block" role="button"
											href="#collapseExample" data-toggle="collapse">Apply Now
										</a>
									</c:when>
									<c:otherwise>
										<a class="btn btn-default btn-block" role="button"
											href="${pageContext.request.contextPath}/login">Apply Now
										</a>
									</c:otherwise>
								</c:choose>


								<div class="collapse" id="collapseExample">
									<div class="well">

										<div class="media">
											<form action="cvupload" method="post"
												enctype="multipart/form-data">

												<input type="hidden" name="jbId" value="${job.id }">
												<input type="hidden" name="stId" value="${user.id }">
												<input type="hidden" name="status" value="0">

												<div class="form-group">
													<label style="color: black;">Upload your CV</label> <input
														type="file" name="uploadfile" accept=".pdf"
														class="form-control">
												</div>

												<div style="text-align: center;">
													<button style="margin-top: 10px;" type="submit"
														class="btn btn-primary">Upload</button>
												</div>
											</form>
										</div>

									</div>
								</div>



							</div>
						</c:forEach>
					</c:forEach>

				</div>
				<hr class="invis">
				<h1>Similar Jobs</h1>


				<div class="row course-list">
					<c:forEach var="jobn" items="${jobName }">
						<c:forEach var="business" items="${jobn.businessId }">
							<c:if test="${!(jobn.name == job.name)}">
								<div class="col-md-3 col-sm-6 col-xs-12">
									<div class="shop-item-list entry" style="margin: 5px">
										<div class="shop-item-title clearfix">
											<img
												src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}"
												alt="" style="width: 50%;">
										</div>

										<div class="shop-item-title clearfix" style="height: 75px;">
											<h4>
												<a href="/e-learning/job/view?id=${jobn.id}">${jobn.name}</a>
											</h4>
										</div>

										<div class="shop-item-title clearfix" style="height: 80px">

											<p style="font-size: 16px; color: black;">${business.name }</p>

										</div>

										<div class="shop-item-title clearfix" style="height: 50px">
											<p style="font-size: 16px; color: black; font-weight: bold;">${jobn.createDate }
												| ${jobn.expiryDate}</p>
										</div>


									</div>
								</div>
							</c:if>
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



</html>