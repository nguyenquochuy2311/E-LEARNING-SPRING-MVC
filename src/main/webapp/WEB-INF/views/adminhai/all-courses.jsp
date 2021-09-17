
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
							<h4>All Courses</h4>
						</div>
					</div>
					<div
						class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">Courses</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">All Courses</a></li>
						</ol>
					</div>
				</div>

				<div class="row">

					<c:forEach items="${listcourse}" var="item">
						<div class="col-xl-3 col-xxl-4 col-lg-4 col-md-6 col-sm-6">
							<div class="card">

								<div class="card-body">
									<h4>
										<a
											href="${pageContext.request.contextPath}/admin/detailcourse">${item.title}</a>
									</h4>
									<ul class="list-group mb-3 list-group-flush">
										<li
											class="list-group-item px-0 border-top-0 d-flex justify-content-between"><span
											class="mb-0 text-muted">id</span> <a
											href="javascript:void(0);"><i class="la la-heart-o mr-1"></i><strong>${item.id}</strong></a>
										</li>
										<li
											class="list-group-item px-0 d-flex justify-content-between">
											<span class="mb-0">price:</span><strong>${item.price}</strong>
										</li>
										<li
											class="list-group-item px-0 d-flex justify-content-between">
											<span class="mb-0">Professor :</span><strong> <c:forEach
													items="${item.listTeacher}" var="dataItem">
														        ${dataItem.firstName}
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
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
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

<!-- Mirrored from edumin.dexignlab.com/xhtml/all-courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:26 GMT -->
</html>