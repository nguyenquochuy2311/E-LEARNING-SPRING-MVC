<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="commons/linkheader.jsp" />
<body>

	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="sk-three-bounce">
			<div class="sk-child sk-bounce1"></div>
			<div class="sk-child sk-bounce2"></div>
			<div class="sk-child sk-bounce3"></div>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->

	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<jsp:include page="commons/header.jsp" />
		<div class="content-body">
			<!-- row -->
			<div class="container-fluid">

				<div class="row page-titles mx-0">
					<div class="col-sm-6 p-md-0">
						<div class="welcome-text">
							<h4>Student Profile</h4>
						</div>
					</div>
					<div
						class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active"><a
								href="${pageContext.request.contextPath}/admin/all-students">Student </a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">Student Profile </a></li>
						</ol>
					</div>
				</div>

				<div class="row">
					<div class="col-xl-3 col-xxl-4 col-lg-4">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="text-center p-3 overlay-box"
										style="background-image: url(${pageContext.request.contextPath}/uploads/${detailTeacher.image});">
										<div class="profile-photo">
											<img src="images/profile/profile.png" width="100"
												class="img-fluid rounded-circle" alt="">
										</div>
										<h3 class="mt-3 mb-1 text-white">${detailTeacher.firstName}</h3>
										<p class="text-white mb-0">${detailTeacher.lastName}</p>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item d-flex justify-content-between"><span
											class="mb-0">Followers</span> <strong class="text-muted">1204
										</strong></li>
										<li class="list-group-item d-flex justify-content-between"><span
											class="mb-0">Following</span> <strong class="text-muted">2540
										</strong></li>
										<li class="list-group-item d-flex justify-content-between"><span
											class="mb-0">Friends</span> <strong class="text-muted">2540</strong></li>
									</ul>
									<div class="card-footer text-center border-0 mt-0">
										<a href="javascript:void(0);"
											class="btn btn-primary btn-rounded px-4">Follow</a> <a
											href="javascript:void(0);"
											class="btn btn-warning btn-rounded px-4">Message</a>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title">about me</h2>
									</div>
									<div class="card-body pb-0">
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry.</p>
										<ul class="list-group list-group-flush">
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Gender</strong> <span class="mb-0">Male</span>
											</li>
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Education</strong> <span class="mb-0">PHD</span>
											</li>
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Designation</strong> <span class="mb-0">Se.
													Professor</span>
											</li>
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Operation Done</strong> <span class="mb-0">120</span>
											</li>
										</ul>
									</div>
									<div class="card-footer pt-0 pb-0 text-center">
										<div class="row">
											<div class="col-4 pt-3 pb-3 border-right">
												<h3 class="mb-1 text-primary">150</h3>
												<span>Projects</span>
											</div>
											<div class="col-4 pt-3 pb-3 border-right">
												<h3 class="mb-1 text-primary">140</h3>
												<span>Uploads</span>
											</div>
											<div class="col-4 pt-3 pb-3">
												<h3 class="mb-1 text-primary">45</h3>
												<span>Tasks</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-block">
										<h4 class="card-title">Address</h4>
									</div>
									<div class="card-body">
										<p class="mb-0">${detailTeacher.address}</p>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-block">
										<h4 class="card-title">Work Expertise</h4>
									</div>
									<div class="card-body">
										<h6>
											Photoshop <span class="pull-right">85%</span>
										</h6>
										<div class="progress ">
											<div class="progress-bar bg-danger progress-animated"
												style="width: 85%; height: 6px;" role="progressbar">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
										<h6 class="mt-4">
											Code editor <span class="pull-right">90%</span>
										</h6>
										<div class="progress">
											<div class="progress-bar bg-info progress-animated"
												style="width: 90%; height: 6px;" role="progressbar">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
										<h6 class="mt-4">
											Illustrator <span class="pull-right">65%</span>
										</h6>
										<div class="progress">
											<div class="progress-bar bg-success progress-animated"
												style="width: 65%; height: 6px;" role="progressbar">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-xxl-8 col-lg-8">
						<div class="card">
							<div class="card-body">
								<div class="profile-tab">
									<div class="custom-tab-1">
										<ul class="nav nav-tabs">
											<li class="nav-item"><a href="#about-me"
												data-toggle="tab" class="nav-link active show">About Me</a></li>
											<li class="nav-item"><a href="#my-posts"
												data-toggle="tab" class="nav-link">My Courses</a></li>
										</ul>
										<div class="tab-content">
											<div id="about-me" class="tab-pane fade active show">
												<div class="profile-about-me">
													<div class="pt-4 border-bottom-1 pb-4">
														<p>A wonderful serenity has taken possession of my
															entire soul, like these sweet mornings of spring which I
															enjoy with my whole heart. I am alone, and feel the charm
															of existence was created for the bliss of souls like
															mine.I am so happy, my dear friend, so absorbed in the
															exquisite sense of mere tranquil existence, that I
															neglect my talents.</p>
														<p>A collection of textile samples lay spread out on
															the table - Samsa was a travelling salesman - and above
															it there hung a picture that he had recently cut out of
															an illustrated magazine and housed in a nice, gilded
															frame.</p>
													</div>
												</div>
												<div class="profile-skills pt-2 border-bottom-1 pb-2">
													<h4 class="text-primary mb-4">Skills</h4>
													<a href="javascript:void()"
														class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Admin</a>
													<a href="javascript:void()"
														class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Dashboard</a>
													<a href="javascript:void()"
														class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Photoshop</a>
													<a href="javascript:void()"
														class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Bootstrap</a>
													<a href="javascript:void()"
														class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Responsive</a>
													<a href="javascript:void()"
														class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Crypto</a>
												</div>
												<div class="profile-lang pt-5 border-bottom-1 pb-5">
													<h4 class="text-primary mb-4">Language</h4>
													<a href="javascript:void()" class="text-muted pr-3 f-s-16"><i
														class="flag-icon flag-icon-us"></i> English</a> <a
														href="javascript:void()" class="text-muted pr-3 f-s-16"><i
														class="flag-icon flag-icon-fr"></i> French</a> <a
														href="javascript:void()" class="text-muted pr-3 f-s-16"><i
														class="flag-icon flag-icon-bd"></i> Bangla</a>
												</div>
												<div class="profile-personal-info">
													<h4 class="text-primary mb-4">Personal Information</h4>
													<div class="row mb-4">
														<div class="col-lg-3 col-md-4 col-sm-6 col-6">
															<h5 class="f-w-500">
																Name <span class="pull-right">:</span>
															</h5>
														</div>
														<div class="col-lg-9 col-md-8 col-sm-6 col-6">
															<span>${detailTeacher.firstName}</span>
														</div>
													</div>
													<div class="row mb-4">
														<div class="col-lg-3 col-md-4 col-sm-6 col-6">
															<h5 class="f-w-500">
																Email <span class="pull-right">:</span>
															</h5>
														</div>
														<div class="col-lg-9 col-md-8 col-sm-6 col-6">
															<span>${detailTeacher.email}</span>
														</div>
													</div>
													<div class="row mb-4">
														<div class="col-lg-3 col-md-4 col-sm-6 col-6">
															<h5 class="f-w-500">
																Availability <span class="pull-right">:</span>
															</h5>
														</div>
														<div class="col-lg-9 col-md-8 col-sm-6 col-6">
															<span>Full Time (Free Lancer)</span>
														</div>
													</div>
													<div class="row mb-4">
														<div class="col-lg-3 col-md-4 col-sm-6 col-6">
															<h5 class="f-w-500">
																Age <span class="pull-right">:</span>
															</h5>
														</div>
														<div class="col-lg-9 col-md-8 col-sm-6 col-6">
															<span>27</span>
														</div>
													</div>
													<div class="row mb-4">
														<div class="col-lg-3 col-md-4 col-sm-6 col-6">
															<h5 class="f-w-500">
																Location <span class="pull-right">:</span>
															</h5>
														</div>
														<div class="col-lg-9 col-md-8 col-sm-6 col-6">
															<span>Rosemont Avenue Melbourne, Florida</span>
														</div>
													</div>
													<div class="row mb-4">
														<div class="col-lg-3 col-md-4 col-sm-6 col-6">
															<h5 class="f-w-500">
																Year Experience <span class="pull-right">:</span>
															</h5>
														</div>
														<div class="col-lg-9 col-md-8 col-sm-6 col-6">
															<span>07 Year Experiences</span>
														</div>
													</div>
												</div>
											</div>
											<div id="my-posts" class="tab-pane fade">

												<div class="row">

													<c:forEach items="${teacherAndCourse}" var="item">

														<div class="col-xl-3 col-xxl-4 col-lg-4 col-md-6 col-sm-6">
															<div class="card">
																<img class="img-fluid" src="images/courses/pic1.jpg"
																	alt="">
																<div class="card-body">
																	<h4>${item.title}</h4>
																	<ul class="list-group mb-3 list-group-flush">
																		<li
																			class="list-group-item px-0 border-top-0 d-flex justify-content-between"><span
																			class="mb-0 text-muted">April 23</span> <a
																			href="javascript:void(0);"><i
																				class="la la-heart-o mr-1"></i><strong>230</strong></a></li>
																		<li
																			class="list-group-item px-0 d-flex justify-content-between">
																			<span class="mb-0">Duration :</span><strong>12
																				Months</strong>
																		</li>
																		<li
																			class="list-group-item px-0 d-flex justify-content-between">
																			<span class="mb-0">Instructor :</span><strong>
																			<c:forEach items="${item.listTeacher}" var="item1">
																				${item1.firstName}
																			</c:forEach>
																			
																			
																			
																			</strong>
																		</li>
																		<li
																			class="list-group-item px-0 d-flex justify-content-between">
																			<span><i
																				class="fa fa-graduation-cap text-primary mr-2"></i>Student</span><strong>

																				<c:set var="studenttotal" value="${0}" /> <c:forEach
																					items="${item.listStudent}" var="dataItem">
																					<c:set var="studenttotal" value="${studenttotal+1}" />
																				</c:forEach> ${studenttotal}
																		</strong>
																		</li>
																	</ul>
																	<a href="${pageContext.request.contextPath}/admin/detail-course?id=${item.id}" class="btn btn-primary">Read
																		More</a>
																</div>
															</div>
														</div>
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
		</div>
		<!--**********************************
            Content body end
        ***********************************-->


		<!--**********************************
            Footer start
        ***********************************-->
		<div class="footer">
			<div class="copyright">
				<p>
					Copyright Â© Designed &amp; Developed by <a
						href="http://dexignlab.com/" target="_blank">DexignLab</a> 2020
				</p>
			</div>
		</div>
		<!--**********************************
            Footer end
        ***********************************-->

		<!--**********************************
           Support ticket button start
        ***********************************-->

		<!--**********************************
           Support ticket button end
        ***********************************-->


	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<!-- Required vendors -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/global/global.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/custom.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/dlabnav-init.js"></script>

	<!-- Datatable -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/plugins-init/datatables.init.js"></script>

	<!-- Svganimation scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/svganimation/vivus.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/svganimation/svg.animation.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/styleSwitcher.js"></script>

</body>

<!-- Mirrored from edumin.dexignlab.com/xhtml/professor-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:25 GMT -->
</html>