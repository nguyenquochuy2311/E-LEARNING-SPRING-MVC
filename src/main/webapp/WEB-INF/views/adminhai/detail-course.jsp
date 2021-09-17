<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<style>
body {
	background: #ddd;
}

.open_popup {
	background: tomato;
	border: none;
	padding: 5px 15px;
	color: #fff;
}

.popup_body {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	-webkit-transition: 300ms;
	-moz-transition: 300ms;
	-o-transition: 300ms;
	-ms-transition: 300ms;
	transition: 300ms;
}

.popup_body_show {
	display: block;
	-webkit-transition: 300ms;
	-moz-transition: 300ms;
	-o-transition: 300ms;
	-ms-transition: 300ms;
	transition: 300ms;
}

.popup_back {
	background: rgba(0, 0, 0, 0.4);
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
}

.popup_contain {
	position: relative;
	background: #fff;
	min-width: 300px;
	max-width: 50%;
	margin: 100px auto 50px;
	min-height: 150px;
	padding: 10px 20px;
}

.popup_close {
	background: red;
	padding: 3px 10px 5px;
	position: absolute;
	right: -10px;
	top: -10px;
	color: #fff;
	border-radius: 50%;
}

#fade {
	display: none;
	position: fixed;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 80);
}

#light {
	display: none;
	position: absolute;
	top: 50%;
	left: 50%;
	max-width: 600px;
	max-height: 360px;
	margin-left: -300px;
	margin-top: -180px;
	border: 2px solid #FFF;
	background: #FFF;
	z-index: 1002;
	overflow: visible;
}

#boxclose {
	float: right;
	cursor: pointer;
	color: #fff;
	border: 1px solid #AEAEAE;
	border-radius: 3px;
	background: #222222;
	font-size: 31px;
	font-weight: bold;
	display: inline-block;
	line-height: 0px;
	padding: 11px 3px;
	position: absolute;
	right: 2px;
	top: 2px;
	z-index: 1002;
	opacity: 0.9;
}

.boxclose:before {
	content: "×";
}

#fade:hover ~ #boxclose {
	display: none;
}

.test:hover ~ .test2 {
	display: none;
}

.button {
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
}

.button1:hover {
	background-color: #4CAF50;
	color: white;
}

.button2 {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

.button2:hover {
	background-color: #008CBA;
	color: white;
}
</style>
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
							<h4>Course Details</h4>
						</div>
					</div>
					<div
						class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active"><a
								href="${pageContext.request.contextPath}/admin/all-courses">all
									Courses</a></li>
							<li class="breadcrumb-item active"><a
								href="${pageContext.request.contextPath}/admin/check-lesson">Course
									check lesson</a></li>
						</ol>
					</div>
				</div>

				<div class="row">
					<div class="col-xl-3 col-xxl-4 col-lg-4">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<img class="img-fluid" src="images/courses/pic1.jpg" alt="">
									<div class="card-body">
										<h4 class="mb-0">${course.title}</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title">About Course</h2>
									</div>
									<div class="card-body pb-0">
										<p>${course.des}</p>
										<ul class="list-group list-group-flush">
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Duration</strong> <span class="mb-0">3 Year</span>
											</li>
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Professor</strong> <span class="mb-0"> <c:forEach
														items="${course.listTeacher}" var="dataItem">
														        ${dataItem.firstName}
													</c:forEach>

											</span>
											</li>
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Price</strong> <span class="mb-0">${course.price}</span>
											</li>
											<li
												class="list-group-item d-flex px-0 justify-content-between">
												<strong>Date</strong> <span class="mb-0">${course.createDate}</span>
											</li>
										</ul>
									</div>
									<div class="card-footer pt-0 pb-0 text-center">
										<div>
											<div class="profile-tab">
												<div class="custom-tab-1">
													<ul class="nav nav-tabs">
														<li class="nav-item">
															<h3 class="mb-1 text-primary">
																<c:set var="studenttotal" value="${0}" />
																<c:forEach items="${lesson}" var="dataItem">
																	<c:set var="studenttotal" value="${studenttotal+1}" />
																</c:forEach>
																${studenttotal}
															</h3> <a href="#about-me" data-toggle="tab" class="nav-link" style="margin-left: 30px"><span>lesson</span></a>
														</li>
														<li class="nav-item">
															<h3 class="mb-1 text-primary">
																<c:set var="studenttotal" value="${0}" />
																<c:forEach items="${course.listStudent}" var="dataItem">
																	<c:set var="studenttotal" value="${studenttotal+1}" />
																</c:forEach>
																${studenttotal}
															</h3> <a href="#my-posts" data-toggle="tab" class="nav-link" style="margin-left: 20px"><span>Students</span></a>
														</li>

													</ul>
												</div>
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
												data-toggle="tab" class="nav-link active show">Course
													Lessons (Number lessons)</a></li>
											<li class="nav-item"><a href="#my-posts"
												data-toggle="tab" class="nav-link">List Student Of
													Course</a></li>
										</ul>
										<div class="tab-content">
											<div id="about-me" class="tab-pane fade active show">

												<div class="card">
													<div class="card-body">
														<div class="course-table">


															<table class="table">
																<thead>
																	<tr>
																		<th>Type</th>
																		<th>Lesson Title</th>
																		<th>Time</th>

																		<th>update</th>
																		<th>delete</th>
																	</tr>
																</thead>
																<tbody>



																	<c:forEach items="${lesson}" var="item">
																		<tr>
																			<td><i class="fa fa-question-circle"></i></td>
																			<td><a href="#!" data-toggle="modal"
																				data-target=".videopopup"> <data
																						data-src="${pageContext.request.contextPath}/resources/upload/${item.video}">${item.title}</data>
																			</a></td>
																			<td><video id="haivideo" style="display: none;"
																					preload="metadata"
																					src="${pageContext.request.contextPath}/resources/upload/${item.video}"
																					controls="controls"></video>
																				<p class="time1"></p></td>

																			<td>
																				<div class="popup_main">
																					<button class="open_popup">update</button>
																					<div class="popup_body">
																						<div class="popup_back"></div>
																						<div class="popup_contain">
																							<div class="popup_close">x</div>
																							<form
																								action="${pageContext.request.contextPath}/admin/edit-lesson"
																								method="post" enctype="multipart/form-data">
																								<div class="col-lg-6 col-md-6 col-sm-12">
																									<div class="form-group" style="display: none;">
																										<label class="form-label">id</label> <input
																											type="text" class="form-control" name="id"
																											value="${item.id}">
																									</div>
																									<div class="form-group" style="display: none;">
																										<label class="form-label">id</label> <input
																											type="text" class="form-control"
																											name="courseId" value="${item.courseId}">
																									</div>
																									<div class="form-group" style="display: none;">
																										<label class="form-label">video</label> <input
																											type="text" class="form-control" name="video"
																											value="${item.video}">
																									</div>
																									<div class="form-group">
																										<label class="form-label">title</label> <input
																											type="text" class="form-control" name="title"
																											value="${item.title}">
																									</div>
																								</div>



																								<div class="col-lg-12 col-md-12 col-sm-12">
																									<div class="form-group fallback w-100">
																										<input type="file" name="uploadfile">
																									</div>
																								</div>

																								<div class="col-lg-12 col-md-12 col-sm-12">
																									<button type="submit" class="btn btn-primary">Submit</button>
																									<button type="submit" class="btn btn-light">Cencel</button>
																								</div>
																							</form>
																						</div>
																					</div>
																				</div>
																			</td>
																			<Td><a
																				href="${pageContext.request.contextPath}/admin/delete-lesson?id=${item.id}&courseId=${item.courseId}">
																					<i class="fa fa-close"></i>
																			</a></Td>
																		</tr>
																	</c:forEach>




																</tbody>
															</table>
														</div>
													</div>
												</div>


											</div>
											<div id="my-posts" class="tab-pane fade">

												<div class="card">
													<div class="card-body">
														<div class="course-table">
															<table class="table">
																<thead>
																	<tr>
																		<th>image</th>
																		<th>Name</th>
																		<th>address</th>
																		<th>phoneNumber</th>


																		<th>Email</th>
																		<th>Joining Date</th>

																	</tr>
																</thead>
																<tbody>




																	<c:forEach items="${course.listStudent}" var="item">


																		<tr>
																			<td><img class="rounded-circle" width="35"
																				src="${pageContext.request.contextPath}/resources/upload/images/students/${item.image}"
																				alt=""></td>
																			<td><a
																				href="${pageContext.request.contextPath}/admin/detailstudent?id=${item.id}"><strong>${item.firstName}</strong></a>
																			</td>

																			<td>${item.address}</td>
																			<td>${item.phoneNumber}</td>
																			<td>${item.email}</td>
																			<td><a href="javascript:void(0);"><strong>${item.createDate}</strong></a></td>


																		</tr>
																	</c:forEach>

																</tbody>
															</table>
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
				<div class="row" style="justify-content: space-around;">
					<a
						href="${pageContext.request.contextPath}/admin/edit-course?id=${course.id}"><button
							class="button button1">update course</button></a>

					<a
						href="${pageContext.request.contextPath}/admin/delete-course?id=${course.id}" onclick="return confirm('Are you sure you want to delete this item?');"><button class="button button2">delete</button></a>
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
	<!-- Modal -->
	<div class="modal fade videopopup" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<button type="button" class="close videobtn" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<div class="modal-body">
					<video id="recap" width="100%" controls autoplay="autoplay">
						<source src="" type="video/mp4">
						<!-- <source src="" type="video/ogg"> -->

					</video>
				</div>
			</div>
		</div>
	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
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
	<script type="text/javascript">
		$(".open_popup").click(
				function() {
					$(this).parent(".popup_main").children(".popup_body")
							.addClass("popup_body_show");
				});
		$(".popup_close").click(function() {
			$(".popup_body").removeClass("popup_body_show");
		});
		$(".popup_back").click(function() {
			$(".popup_body").removeClass("popup_body_show");
		});

		$('#myModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget);
			var imgposter = button.find("data").attr("src");
			var vidsrc = button.find("data").attr("data-src");

			var timee = document.getElementById("recap");
			timevid = timee.duration;

			//$(this).find('video#recap').attr('poster', imgposter);
			$(this).find('video#recap source').attr('src', '');
			$(this).find('video#recap source').attr('src', vidsrc);

			$(this).find('video#recap')[0].load();
		}).on('hidden.bs.modal', function() {
			$(this).find('video')[0].pause();
		});

		var timee = document.querySelector("haivideo");
		console.log(timee);
		var t = timee.duration;
		console.log(t);
		timee.onloadedmetadata = function() {
			var minutes = Math.floor(timee.duration / 60);
			var seconds = Math.floor(timee.duration % 60);
			console.log(minutes)
			document.querySelector(".time1").innerHTML = minutes + ':'
					+ seconds;
		};
	</script>

</body>

<!-- Mirrored from edumin.dexignlab.com/xhtml/about-courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:26 GMT -->
</html>