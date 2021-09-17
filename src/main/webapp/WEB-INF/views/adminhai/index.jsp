
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from edumin.dexignlab.com/xhtml/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:21:39 GMT -->

<jsp:include page="commons/linkheader.jsp" />
<style>
.swiper-container {
	max-width: 50%;
	height: 300px;
}
</style>
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

		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">
			<!-- row -->
			<div class="container-fluid">

				<div class="row">
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-primary">
							<div class="card-body">
								<div class="media">
									<span class="mr-3"> <i class="la la-users"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Total Students</p>
										<h3 class="text-white">${sumstudent}</h3>
										<div class="progress mb-2 bg-white">
											<div class="progress-bar progress-animated bg-light"
												style="width: 80%"></div>
										</div>
										<small>80% Increase in 20 Days</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-warning">
							<div class="card-body">
								<div class="media">
									<span class="mr-3"> <i class="la la-user"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Total Teacher</p>
										<h3 class="text-white">${sumteacher }</h3>
										<div class="progress mb-2 bg-white">
											<div class="progress-bar progress-animated bg-light"
												style="width: 50%"></div>
										</div>
										<small>50% Increase in 25 Days</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-secondary">
							<div class="card-body">
								<div class="media">
									<span class="mr-3"> <i class="la la-graduation-cap"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Total Course</p>
										<h3 class="text-white">${sumcourse }</h3>
										<div class="progress mb-2 bg-white">
											<div class="progress-bar progress-animated bg-light"
												style="width: 76%"></div>
										</div>
										<small>76% Increase in 20 Days</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-danger">
							<div class="card-body">
								<div class="media">
									<span class="mr-3"> <i class="la la-dollar"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Total Admin</p>
										<h3 class="text-white">${sumadmin }</h3>
										<div class="progress mb-2 bg-white">
											<div class="progress-bar progress-animated bg-light"
												style="width: 30%"></div>
										</div>
										<small>30% Increase in 30 Days</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-xxl-6 col-lg-12 col-sm-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">University Survey</h3>
							</div>
							<div class="card-body">
								<div id="morris_bar_stalked" class="morris_chart_height"
									style="height: 300px !important;"></div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Donught Chart</h3>
							</div>
							<div class="card-body">
								<div id="morris_donught_2" class="morris_chart_height"
									style="height: 300px !important;"></div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">University Survey</h3>
							</div>
							<div class="card-body">
								<div id="morris_area" class="morris_chart_height"
									style="height: 300px !important;"></div>
							</div>
						</div>
					</div>
					<!-- Slider main container -->
					<div class="swiper-container">
						<!-- Additional required wrapper -->
						<div class="swiper-wrapper">
							<!-- Slides -->

							<c:forEach items="${listcourse}" var="item">

								<c:set var="studenttotal" value="${studenttotal+1}" />

								<div class="swiper-slide">
									<div class="card">

										<div class="card-body">
											<h4>
												<a
													href="#">${item.title}</a>
											</h4>
											<ul class="list-group mb-3 list-group-flush">
												<li
													class="list-group-item px-0 border-top-0 d-flex justify-content-between"><span
													class="mb-0 text-muted">id</span> <a
													href="javascript:void(0);"><i
														class="la la-heart-o mr-1"></i><strong>${item.id}</strong></a>
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
						<!-- If we need pagination -->
						<div class="swiper-pagination"></div>

						<!-- If we need navigation buttons -->
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>

						<!-- If we need scrollbar -->
						<div class="swiper-scrollbar"></div>
					</div>







					<div class="col-xl-12 col-xxl-12 col-lg-12 col-md-12 col-sm-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">New Student List</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive recentOrderTable">
									<table class="table verticle-middle table-responsive-md">
										<thead>
											<tr>
												<th scope="col">No.</th>
												<th scope="col">Name</th>

												<th scope="col">Date Of Admit</th>
												<th scope="col">Email</th>
												<th scope="col">Adress</th>
												<th scope="col">image</th>
											
											</tr>
										</thead>
										<tbody>

											<c:forEach items="${liststudent}" var="student">
												<tr>
													<td>0${student.id}</td>
													<td>${student.firstName}</td>
													<td>${student.createDate}</td>


													<td>${student.email}</td>
													<td>${student.address}</td>
													<td><img src="${pageContext.request.contextPath}/resources/upload/images/students/${student.image}" width="100" class="img-fluid rounded-circle" alt=""></td>
												
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
					Copyright © Designed &amp; Developed by <a
						href="http://dexignlab.com/" target="_blank">Dexignlab</a> 2020
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

	<jsp:include page="commons/linkfooter.jsp" />
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

<!-- Mirrored from edumin.dexignlab.com/xhtml/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:22:06 GMT -->

</html>