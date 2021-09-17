<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="com.coeding.spring.vo.Category"%>
<%@ page import="com.coeding.spring.vo.Course"%>
<%@ page import="com.coeding.spring.vo.Student"%>
<%@ page import="com.coeding.spring.vo.Join"%>

<%
List<Course> listCourseC = (List<Course>) request.getAttribute("listCourseC");
%>

<!DOCTYPE html>

<head>

<meta name="description" content="Course By Category Page">
<meta name="author" content="Quoc Huy">
<meta name="keywords" content="">

<title>Course By Category | LearnPLUS</title>

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
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="${pageContext.request.contextPath }">Home</a></li>
								<li><a href="${pageContext.request.contextPath }/course/pageid=1">Full
										Course</a></li>
								<%
								Category cat1 = (Category) listCourseC.get(0).getCategory();
								%>
								<li><a href="#"><%=cat1.getTitle()%></a></li>
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
				<div class="row course-list shop-listing">
					<%
					for (int j = 0; j < listCourseC.size(); j++) {
					%>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="shop-item-list entry">
							<div class="">
								<img
									src="${pageContext.request.contextPath }/resources/upload/<%=listCourseC.get(j).getImage() %>"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a
										href="${pageContext.request.contextPath }/course/detail?id=<%= listCourseC.get(j).getId()%>"><%=listCourseC.get(j).getTitle()%></a>
								</h4>
								<p>
									Teacher: <b><%=listCourseC.get(j).getTeacher().getFirstName()%>
										<%=listCourseC.get(j).getTeacher().getLastName()%></b>
								</p>
								<p><%=listCourseC.get(j).getDes()%></p>
							</div>
							<div class="shop-button clearfix">
								<%
								if (request.getSession().getAttribute("user") != null) {
									Student student = (Student) session.getAttribute("user");
									List<Join> c_join = student.getJoin();
									for (int k = 0; k < c_join.size(); k++) {
										if (c_join.get(k).getCourseId() == listCourseC.get(j).getId()) {
								%>

								<a
									href="${pageContext.request.contextPath }/course/detail?id=<%=listCourseC.get(j).getId() %>"
									class="btn btn-primary btn-block"
									style="background-color: #f84b4a;"><i class="fa fa-sign-in"></i>
									Take a course</a>

								<%
								break;
								}
								if (k == c_join.size() - 1) {
								%>

								<a
									href="${pageContext.request.contextPath }/course/detail?id=<%=listCourseC.get(j).getId() %>"
									class="btn btn-primary btn-block">enrollment</a>

								<%
								}
								}
								%>

								<%
								} else {
								%>
								<a
									href="${pageContext.request.contextPath }/course/detail?id=<%=listCourseC.get(j).getId() %>"
									class="btn btn-primary btn-block">enrollment</a>
								<%
								}
								%>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>


				<div class="row">
					<div class="col-md-12">

						<nav class="text-center">

							<ul class="pagination">
								<c:forEach var="i" begin="1" end="${countCourse }" step="1">

									<li><a
										href="${pageContext.request.contextPath }/course/viewcat?type=${cat}&pageid=${i}">${i }</a></li>

								</c:forEach>
							</ul>

						</nav>

					</div>
				</div>


			</div>
		</section>
		<!-- End List Course By Category -->

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