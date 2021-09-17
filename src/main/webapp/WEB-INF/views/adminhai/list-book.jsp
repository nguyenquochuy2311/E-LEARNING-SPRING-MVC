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
							<h4>List Book</h4>
						</div>
					</div>
					<div
						class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">Book</a></li>
							<li class="breadcrumb-item active"><a
								href="javascript:void(0);">List book</a></li>
						</ol>
					</div>
				</div>

				<div class="row">

					<div class="col-xl-7 col-xxl-8 col-lg-8">



						<table class="table">
							<thead>
								<tr>
									<th></th>
									<th>title</th>
									<th>description</th>
									<th>price</th>


								</tr>
							</thead>
							<tbody>



								<c:forEach items="${listbook}" var="item">
									<tr>
										<td><i class="fa fa-book" aria-hidden="true"></i></td>
										<td>${ item.title}</td>
										<td>${ item.des}</td>

										<td>${ item.price}</td>

									</tr>
								</c:forEach>




							</tbody>
						</table>

					</div>
					<div class="col-xl-3 col-xxl-8 col-lg-8">




						<table class="table">
							<thead>
								<tr>


									<th>name course</th>

								</tr>
							</thead>
							<tbody>



								<c:forEach items="${course}" var="item">
									<tr>

										<td>${ item.title}</td>



									</tr>
								</c:forEach>




							</tbody>
						</table>



					</div>
					<div class="col-xl-2 col-xxl-8 col-lg-8">




						<table class="table">
							<thead>
								<tr>


									<th>update</th>
									<th>delete</th>
								</tr>
							</thead>
							<tbody>



								<c:forEach items="${listbook}" var="item">
									<tr>

										<td>
											<div class="popup_main">
												<button class="open_popup">
													<i class="fa fa-pencil" aria-hidden="true"></i>
												</button>
												<div class="popup_body">
													<div class="popup_back"></div>
													<div class="popup_contain">
														<div class="popup_close">x</div>
														<form
															action="${pageContext.request.contextPath}/admin/update-book"
															method="post" enctype="multipart/form-data">
															<div class="col-lg-6 col-md-6 col-sm-12">
																<div class="form-group" style="display: none;">
																	<label class="form-label">id</label> <input type="text"
																		class="form-control" name="id" value="${item.id}">
																</div>

																<div class="form-group">
																	<label class="form-label">title</label> <input
																		type="text" class="form-control" name="title"
																		value="${item.title}">
																</div>
																<div class="form-group">
																	<label class="form-label">des</label> <input
																		type="text" class="form-control" name="des"
																		value="${item.des}">
																</div>
																<div class="form-group">
																	<label class="form-label">price</label> <input
																		type="number" class="form-control" name="price"
																		value="${item.price}">
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
										<td><a href="${pageContext.request.contextPath}/admin/book-delete?id=${item.id}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>

									</tr>

								</c:forEach>




							</tbody>
						</table>



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