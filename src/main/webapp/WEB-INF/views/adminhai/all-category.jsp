<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.coeding.spring.vo.Category" %>
<!DOCTYPE html>
<html lang="en">
	<style>
		body {
			background: #ddd;
		}
		
		.open_popup {
			
			border: none;
			
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
								<h4>List Category</h4>
							</div>
						</div>
						<div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item active"><a href="all-category">Category</a></li>
								<li class="breadcrumb-item active"><a href="all-category">List category</a></li>
							</ol>
						</div>
					</div>
					<div class="row">
				
					<div class="col-lg-12">
						<div class="row tab-content">
							<div id="list-view" class="tab-pane fade active show col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">All Category List</h4>
										<a href="${pageContext.request.contextPath}/admin/add-category" class="btn btn-primary">
										+ Add new</a>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table id="example3" class="display" style="min-width: 845px">
												<thead>
													<tr>
														<th>Image</th>
														<th>Id</th>
														<th>Title</th>
														<th>Des</th>
														<th>Create date</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${listcategory}"  var="item">
														<tr>
															<td>
																<img class="rounded-circle" width="35" alt=""
																src="${pageContext.request.contextPath}/resources/upload/images/${item.image}" >
															</td>
															<td><a href="${pageContext.request.contextPath}/admin/detailteacher?id=${item.id}">
																<strong>${item.id}</strong></a>
															</td>
															<td>${item.title}</td>
															<td>${item.des}</td>
															<td><a href="javascript:void(0);"><strong>${item.createDate}</strong></a></td>
															<td><a href="${pageContext.request.contextPath}/admin/edit-category?id=${item.id}"
																	class="btn btn-sm btn-primary">
																	<i class="la la-pencil"></i></a> 
																<a href="${pageContext.request.contextPath}/admin/delete-category?id=${item.id}"
																	class="btn btn-sm btn-danger">
																	<i class="la la-trash-o"></i></a>
															</td>
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
					<p> Copyright Â© Designed &amp; Developed by 
						<a href="index.html" target="_blank">DexignLab</a> 
						2021
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
		<script src="${pageContext.request.contextPath}/resources/admin/vendor/global/global.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/js/custom.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/js/dlabnav-init.js"></script>
	
		<!-- Datatable -->
		<script src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/js/plugins-init/datatables.init.js"></script>
	
		<!-- Svganimation scripts -->
		<script src="${pageContext.request.contextPath}/resources/admin/vendor/svganimation/vivus.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/vendor/svganimation/svg.animation.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/js/styleSwitcher.js"></script>

	</body>

	<!-- Mirrored from edumin.dexignlab.com/xhtml/add-courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:26 GMT -->
</html>