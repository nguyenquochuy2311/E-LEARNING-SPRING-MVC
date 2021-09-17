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
									<button
										onclick="location.href='${pageContext.request.contextPath }/login/logout'"
										class="btn btn-block btn-second">Logout</button>
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
						<h1 style="font-weight: bold; font-size: 200%;">EDIT JOBS</h1>
					</div>
				</div>
			</div>
		</section>



		<section class="white section">
			<div class="container">

				<div id="course-content" class="col-md-9"
					style="margin-left: 15%; border-style: double;">
					<div class="course-description" style="margin: 20px;">
						<h3 class="course-title" style="font-weight: bold;">JOBS
							INFORMATIONS</h3>

						<div class="edit-profile">



							<form role="form" action="update-jobs" method="post">

								<input type="hidden" name="id" value="${jobList.id }">

								<div class="form-group">
									<label style="color: black;">Name Jobs</label> <input
										type="text" name="name" value="${jobList.name }"
										class="form-control">
								</div>

								<div class="form-group">
									<label style="color: black;">Salary</label> 									
							
									<select
										class="form-control" name="salary">
										<option value="${jobList.salary }">${jobList.salary }</option>
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
									<label style="color: black;">Status</label> <select
										class="form-control" name="status" id="">
										<option value="${jobList.status }">
											<c:if test="${jobList.status == 0 }">
							Online											
						</c:if>
											<c:if test="${jobList.status == 1 }">
							Offline											
						</c:if>
										</option>
									</select>
								</div>

								<div class="form-group">
									<label style="color: black;">Expiry Date</label> <input
										type="date" name="expiryDate" value="${jobList.expiryDate }"
										class="form-control">
								</div>

								<div class="form-group">
									<label style="color: black;">Experience</label> <select
										class="form-control" name="experience">
										<option value="${jobList.experience }" selected>${jobList.experience }</option>
										<option value="Intern">Intern</option>
										<option value="1-2years">1-2years</option>
										<option value="2-5 years">2-5 years</option>
										<option value="Over 5 years">Over 5 years</option>
									</select>
								</div>


								<div class="form-group">
									<label style="color: black;">Careers group</label> <select
										class="form-control" name="catId">
										<c:forEach var="catalog" items="${jobList.categoryId}">
											<option value="${jobList.categoryId }">${catalog.title}</option>
										</c:forEach>

										<c:forEach var="cata" items="${CareersList }">
											<option value="${cata.id }">${cata.title }</option>
										</c:forEach>
									</select>

								</div>

								<div class="form-group">
									<label style="color: black;">Requirement</label>
									<textarea name="requirement" type="text" class="form-control">${jobList.requirement }</textarea>
								</div>

								<div class="form-group">
									<label style="color: black;">Details Description</label>
									<textarea type="text" name="des" class="form-control">${jobList.des }</textarea>
								</div>

								<div style="text-align: center;">
									<button style="margin-top: 50px;" type="submit"
										class="btn btn-primary">Update</button>
								</div>

							</form>
						</div>
					</div>
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

<!-- forums40:16  -->

</html>