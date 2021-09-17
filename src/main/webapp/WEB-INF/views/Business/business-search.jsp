<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
</head>

<body>
	<div id="loader">
		<div class="loader-container">
			<img
				src="${pageContext.request.contextPath }/resources/main/images/site.gif"
				alt="" class="loader-site">
		</div>
	</div>
	<div id="wrapper">
		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- End Header -->

		<section class="grey page-title">
			<div class="container">
				<form role="form" method="get" action="search">
					<table class="form-group">
						<tr>
							<td style="width: 100%;"><input type="text" name="text"
								class="form-control" placeholder="Search company,job..."></td>
							<td><input class="btn btn-primary" type="submit"
								value="SEARCH"></td>
						</tr>
					</table>
				</form>
			</div>
		</section>

		<section class="white section">
			<div class="container">
				<div class="row course-list shop-listing">

					<c:forEach var="result" items="${searchList }">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="shop-item-list entry">
								<div class="">
									<img
										src="${pageContext.request.contextPath }/resources/upload/logocompany/${result.image}"
										alt="" height="280px">
									<div class="magnifier"></div>
								</div>
								<div class="shop-item-title clearfix">
									<h4>
										<a href="/e-learning/business/view?id=${result.id}">${result.name}</a>
									</h4>
									<p>${result.country }</p>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</section>

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp"%>
		<!-- End Footer -->
		
	</div>
	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp"%>
	<!-- End Script -->
</body>

<!-- page-shop40:34 GMT -->

</html>