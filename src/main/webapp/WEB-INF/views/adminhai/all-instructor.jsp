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
							<h4>All Instructor</h4>
						</div>
					</div>
					<div
						class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">Instructor</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">All Instructor</a></li>
						</ol>
					</div>
				</div>

				<div class="row">
				
					<div class="col-lg-12">
						<div class="row tab-content">
							<div id="list-view" class="tab-pane fade active show col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">All Students List</h4>
										<a href="${pageContext.request.contextPath}/admin/add-instructor" class="btn btn-primary">+ Add
											new</a>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table id="example3" class="display" style="min-width: 845px">
												<thead>
													<tr>
														<th>#</th>
														<th>Name</th>
														<th>address</th>
														<th>phoneNumber</th>


														<th>Email</th>
														<th>Joining Date</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>




													<c:forEach items="${allteacher}"  var="item">


														<tr>
															<td><img class="rounded-circle" width="35"
																src="${pageContext.request.contextPath}/resources/upload/images/instructor/${item.image}"
																alt=""></td>
															<td><a
																href="${pageContext.request.contextPath}/admin/detailteacher?id=${item.id}"><strong>${item.lastName}</strong></a>
															</td>
														
															<td>${item.address}</td>
															<td>${item.phoneNumber}</td>
															<td>${item.email}</td>
															<td><a href="javascript:void(0);"><strong>${item.createDate}</strong></a></td>


															<td><a
																href="${pageContext.request.contextPath}/admin/editteacher?id=${item.id}"
																class="btn btn-sm btn-primary"><i
																	class="la la-pencil"></i></a> <a
																href="${pageContext.request.contextPath}/admin/deleteteacher?id=${item.id}"
																class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this item?');"><i
																	class="la la-trash-o"></i></a></td>
														</tr>
													</c:forEach>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div id="grid-view" class="tab-pane fade col-lg-12">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic2.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Alexander</h3>
													<p class="text-muted">M.COM., P.H.D.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>02</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic3.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Elizabeth</h3>
													<p class="text-muted">B.COM., M.COM.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>03</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic4.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Amelia</h3>
													<p class="text-muted">M.COM., P.H.D.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>04</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic5.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Charlotte</h3>
													<p class="text-muted">B.COM., M.COM.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>05</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic6.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Isabella</h3>
													<p class="text-muted">B.A, B.C.A</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>06</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic7.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Sebastian</h3>
													<p class="text-muted">M.COM., P.H.D.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>07</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic8.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Olivia</h3>
													<p class="text-muted">B.COM., M.COM.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>08</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic9.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Emma</h3>
													<p class="text-muted">B.A, B.C.A</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>09</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-sm-6 col-12">
										<div class="card card-profile">
											<div class="card-header justify-content-end pb-0">
												<div class="dropdown">
													<button class="btn btn-link" type="button"
														data-toggle="dropdown">
														<span class="dropdown-dots fs--1"></span>
													</button>
													<div class="dropdown-menu dropdown-menu-right border py-0">
														<div class="py-2">
															<a class="dropdown-item" href="javascript:void(0);">Edit</a>
															<a class="dropdown-item text-danger"
																href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-2">
												<div class="text-center">
													<div class="profile-photo">
														<img src="${pageContext.request.contextPath}/resources/admin/images/profile/small/pic10.jpg" width="100"
															class="img-fluid rounded-circle" alt="">
													</div>
													<h3 class="mt-4 mb-1">Jackson</h3>
													<p class="text-muted">M.COM., P.H.D.</p>
													<ul class="list-group mb-3 list-group-flush">
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span>Roll No.</span><strong>10</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Phone No. :</span><strong>+01
																123 456 7890</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Admission Date. :</span><strong>01
																July 2020</strong>
														</li>
														<li
															class="list-group-item px-0 d-flex justify-content-between">
															<span class="mb-0">Email:</span><strong>info@example.com</strong>
														</li>
													</ul>
													<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
														href="about-student.html">Read More</a>
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
					Copyright © Designed &amp; Developed by <a
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

<!-- Mirrored from edumin.dexignlab.com/xhtml/all-students.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:25 GMT -->
</html>