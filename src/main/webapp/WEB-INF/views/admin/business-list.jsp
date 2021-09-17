<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from edumin.dexignlab.com/xhtml/all-students.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Jul 2021 06:49:41 GMT -->

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Edumin - Bootstrap Admin Dashboard</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath }/resources/admin/images/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" />
<!-- Datatable -->
<link
	href="${pageContext.request.contextPath }/resources/admin/vendor/datatables/css/jquery.dataTables.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/style.css" />
</head>

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
		<jsp:include page="../adminhai/commons/header.jsp" />
		<!--**********************************

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">
			<!-- row -->
			<div class="container-fluid">
				<div class="row page-titles mx-0">
					<div class="col-lg-10 ">
						<h4>All Business</h4>
					</div>
					<a href="${pageContext.request.contextPath }/admin/add-business"
						class="btn btn-primary">+ Add new</a>
				</div>

				<div class="row">
					<c:forEach var="business" items="${businessList }">
						<div class="col-lg-4">
							<div class="card card-profile">

								<div class="card-header justify-content-end pb-0">
									<div class="dropdown">
										<button class="btn btn-link" type="button"
											data-toggle="dropdown">
											<span class="dropdown-dots fs--1"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-right border py-0">
											<div class="py-2">
												<a class="dropdown-item"
													href="/e-learning/admin/edit?id=${business.id }">Edit</a> <a
													class="dropdown-item text-danger"
													href="/e-learning/admin/delete?id=${business.id }">Delete</a>
											</div>
										</div>
									</div>
								</div>


								<div class="card-body pt-2">
									<div class="text-center">
										<div class="profile-photo">
											<img
												src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}"
												width="100" class="img-fluid rounded-circle" alt="" />
										</div>
										<h3 class="mt-4 mb-1">${business.name}</h3>

										<ul class="list-group mb-3 list-group-flush">
											<li
												class="
                            list-group-item
                            px-0
                            d-flex
                            justify-content-between
                          ">
												<span>No.</span><strong>${business.id}</strong>
											</li>
											<li
												class="
                            list-group-item
                            px-0
                            d-flex
                            justify-content-between
                          ">
													<span class="mb-0">Phone :</span><strong>${business.phoneNumber }</strong>
											</li>
											<li
												class="
                            list-group-item
                            px-0
                            d-flex
                            justify-content-between
                          ">
												<span class="mb-0">Create Date :</span><strong>${business.createDate }</strong>
											</li>
											<li
												class="
                            list-group-item
                            px-0
                            d-flex
                            justify-content-between
                          ">
												<span class="mb-0">Email:</span><strong>${business.email }</strong>
											</li>
										</ul>
										<a class="btn btn-outline-primary btn-rounded mt-3 px-4"
											href="/e-learning/admin/view?id=${business.id}">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--**********************************
            Content body end
        ***********************************-->

		<!--**********************************
            Footer start
        ***********************************-->
		<div class="footer"></div>
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

	<jsp:include page="../adminhai/commons/linkfooter.jsp" />
	<script>
		const swiper = new Swiper('.swiper-container', {
			// Optional parameters

			loop : true,

			// If we need pagination
			pagination : {
				el : '.swiper-pagination',
			},

			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// And if we need scrollbar
			scrollbar : {
				el : '.swiper-scrollbar',
			},
		});
	</script>
	
</body>

<!-- Mirrored from edumin.dexignlab.com/xhtml/all-students.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Jul 2021 06:49:41 GMT -->

</html>