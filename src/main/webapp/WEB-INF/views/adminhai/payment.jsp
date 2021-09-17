<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
							<h4>List Payment</h4>
						</div>
					</div>
					<div
						class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">Payment</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">List Payment</a></li>
						</ol>
					</div>
				</div>

				<div class="row">

					<div class="card">
						<div class="card-body">
							<div class="course-table">
								<table class="table">
									<thead>
										<tr>
											<th>No</th>
											<th>Student</th>
											<th>Type</th>
											<th>Product Name</th>
											<th>Invoice No</th>
											<th>Due Mount</th>
											<th>Order Date</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="order" items="${order}" varStatus="loop">
											<tr>
												<td>${loop.count}</td>
												<c:if test="${not empty order.studentId }">
													<c:set var="student" value="${order.studentId }"></c:set>
													
													<td>${student.firstName}</td>
												</c:if>
												<c:if test="${not empty order.bookId }">
													<c:set var="book" value="${order.bookId }"></c:set>
													<td>Book</td>
													<td>${book.title}</td>
												</c:if>
												<c:if test="${not empty order.courseId }">
													<c:set var="course" value="${order.courseId }"></c:set>
													<td>Course</td>
													<td>${course.title }</td>
												</c:if>
												<td>${order.invoiceNo }</td>
												<td>$ ${order.dueMount}</td>
												<td>${order.orderDate }</td>
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
	</script>

</body>

<!-- Mirrored from edumin.dexignlab.com/xhtml/about-courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:26 GMT -->
</html>