<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
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
								<li><a href="#">My Page</a></li>
								<li class="active">My Info</li>
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
					<c:set var="btmyinterest" value="${'active'}" />
					<%@ include file="/WEB-INF/views/main/mypage/sidebar.jsp"%>
					<!-- End Sidebar -->

					<div id="course-content" class="col-md-8">
						<div class="content-widget">
							<div class="tabbed-widget">
								<h1 style="color: black;">Interest Information</h1>
								<div class="tab-content" style="border-style: dotted;">

									<form action="update-interest" method="post">

										<div class="form-group">
											<label style="color: black;">Experience</label> 
											<select
												class="form-control" name="experience" >
												<option value="${interList.experience}">${interList.experience}</option>
												<option value="Intern">Intern</option>
												<option value="1-2 years">1-2 years</option>
												<option value="2-5 years">2-5 years</option>
												<option value="Over 5 years">Over 5 years</option>
											</select>
										</div>

										<div class="form-group">
											<label style="color: black;">Careers group</label> <select
												class="form-control" name="catId">
												<c:forEach var="cate" items="${interList.categoryId}">
													<option value="${cate.id}">${cate.title}</option>
												</c:forEach>
												
												<c:forEach var="cata" items="${CareersList }">
													<option value="${cata.id }">${cata.title }</option>
												</c:forEach>
											</select>
										</div>

										<div class="form-group">
											<label style="color: black;">Salary</label> <select
												class="form-control" name="salary">
												<option value="${interList.salary}">${interList.salary}</option>
												<option value=">300$">&lt;300$</option>
												<option value="300$ - 500$">300$ - 500$</option>
												<option value="500$ - 700$">500$ - 700$</option>
												<option value="700$ - 1000$">700$ - 1000$</option>
												<option value="1000$ - 1200$">1000$ - 1200$</option>
												<option value="1200$ - 1500$">1200$ - 1500$</option>
												<option value="1500$ - 2000$">1500$ - 2000$</option>
												<option value=">2000$">&gt;2000$</option>
											</select>
										</div>

										<div class="form-group">
											<label style="color: black;">Workplaces</label> <select
												class="form-control" name="workplaces">
												<option value="${interList.workplaces}">${interList.workplaces}</option>
												<option value="HaNoi">HaNoi</option>
												<option value="DaNang">DaNang</option>
												<option value="HoChiMinh">HoChiMinh</option>
											</select>
										</div>

										<div style="text-align: center;">
											<button style="margin-top: 50px;" type="submit"
												class="btn btn-primary">SAVE</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>


				</div>

			</div>
		</section>
		<!-- End Sidebar + Content -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp"%>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp"%>
	<!-- End Script -->
</body>

</html>