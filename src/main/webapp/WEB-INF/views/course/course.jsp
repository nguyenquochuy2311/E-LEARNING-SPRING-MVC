<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>

<meta name="description" content="Course By Category Page">
<meta name="author" content="Quoc Huy">
<meta name="keywords" content="">

<title>Full Course | LearnPLUS</title>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>

<body>

	<!-- All Page -->
	<div id="wrapper">

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- End Header -->

		<!-- Top Course By Cat -->
		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>Full Course</h1>
					</div>
					<div class="col-md-6 text-right">
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="${pageContext.request.contextPath }">Home</a></li>
								<li><a href="${pageContext.request.contextPath }/course/pageid=1">Full
										Course</a></li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Top Course By Cat -->

		<!-- List Course By Category -->
		<section class="white section">
			<div class="container">


				<div id="filters" class="filters-dropdown">
					<ul class="option-set" data-option-key="filter">
						<li><a href="#filter" class="selected" data-option-value="*"><i
								class="fa fa-filter"></i> All Courses</a></li>

						<c:forEach var="cat" items="${cat }" varStatus="loop">
							<li><a href="#filter"
								data-option-value=".cat${loop.count+1 }">${cat.title }</a></li>
						</c:forEach>

					</ul>
				</div>

				<c:forEach var="cat" items="${cat }" varStatus="loop">
					<div class="portfolio course-list">

						<div class="col-md-12">
							<div class="col-md-6" id="type_title">
								<p>
									<b style="color: black; font-size: 20px">${cat.title }</b>
								</p>
							</div>
							<div class="col-md-6 text-right">
								<a
									href="${pageContext.request.contextPath }/course/viewcat?type=${cat.id}&pageid=1">view
									all></a>
							</div>
						</div>


						<c:forEach var="course" items="${cat.listCourse }">
							<div class="col-md-12">
								<div class="item cat${loop.count+1 }">
									<div class="shop-item-list entry">
										<div class="">
											<img
												src="${pageContext.request.contextPath }/resources/upload/${course.image}"
												alt="">
											<div class="magnifier"></div>
										</div>
										<div class="shop-item-title clearfix">
											<h4>
												<a
													href="${pageContext.request.contextPath }/course/detail?id=${course.id}">
													${course.title }</a>
											</h4>
											<c:set var="teacher" value="${course.teacher}"></c:set>
											<p>
												Teacher: <b>${teacher.firstName } ${teacher.lastName }</b>
											</p>
											<p>${course.des }</p>
										</div>
										<div class="shop-button clearfix">
											<c:if test="${course.status == 0}">
												<a
													href="${pageContext.request.contextPath }/course/detail?id=${course.id}"
													class="btn btn-primary btn-block">enrollment</a>
											</c:if>
											<c:if test="${course.status == 1 }">
												<a
													href="${pageContext.request.contextPath }/course/detail?id=${course.id}"
													class="btn btn-primary btn-block"
													style="background-color: #f84b4a;"><i
													class="fa fa-sign-in"></i> Take a course</a>
											</c:if>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
					</div>
				</c:forEach>


				<div class="row">
					<div class="col-md-12">

						<nav class="text-center">

							<ul class="pagination">
								<c:forEach var="i" begin="1" end="${countCat }" step="1">
									<li><a
										href="${pageContext.request.contextPath }/course/pageid=${i}">${i }</a></li>
								</c:forEach>

							</ul>

						</nav>

					</div>
				</div>

			</div>
		</section>
		<!-- End List Course By Category -->

		<!-- Popular Course -->
		<%@ include file="/WEB-INF/views/common/popular_course.jsp"%>
		<!-- End Popular Course -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<script
		src="${pageContext.request.contextPath }/resources/main/js/jquery.min.js.pagespeed.jm.iDyG3vc4gw.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/main/js/bootstrap.min.js%2bretina.js%2bwow.js.pagespeed.jc.pMrMbVAe_E.js"></script>
	<script>
		eval(mod_pagespeed_gFRwwUbyVc);
	</script>
	<script>
		eval(mod_pagespeed_rQwXk4AOUN);
	</script>
	<script>
		eval(mod_pagespeed_U0OPgGhapl);
	</script>
	<script
		src="${pageContext.request.contextPath }/resources/main/js/carousel.js%2bcustom.js.pagespeed.jc.nVhk-UfDsv.js"></script>
	<script>
		eval(mod_pagespeed_6Ja02QZq$f);
	</script>
	<script>
		eval(mod_pagespeed_KxQMf5X6rF);
	</script>
	<script
		src="${pageContext.request.contextPath }/resources/main/js/isotope.js.pagespeed.jm.3o8H2mhlCK.js"></script>
	<script type="text/javascript">
		(function($) {
			"use strict";
			$(window).load(function() {
				$('.portfolio').isotope({
					itemSelector : '.item',
					layoutMode : 'fitRows'
				});
				$('#filters a.selected').trigger("click");
			});

			$('#filters a').click(function(e) {
				e.preventDefault();
				var selector = $(this).attr('data-option-value');

				$('.portfolio').isotope({
					filter : selector
				});

				$(this).parents('ul').find('a').removeClass('selected');

				$(this).addClass('selected');
			});

			jQuery(document).ready(function($) {

				$(window).resize();

				$Filter.find('a').click(function() {

					$Filter.find('ul li').not($(this)).removeClass('active');
					$(this).parent('li').addClass('active');
				});
			});
		})(jQuery);
	</script>
</body>

</html>