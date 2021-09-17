<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<meta name="description" content="Teacher Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Info | LearnPLUS</title>
    
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>

	<!-- Loader -->
	<div id="loader">
		<div class="loader-container">
			<img src="${pageContext.request.contextPath }/resources/main/images/site.gif" alt="" class="loader-site">
		</div>
	</div>
	<!-- End Loader -->

	
	<!-- All Page -->
	<div id="wrapper">

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- End Header -->

		<section class="grey page-title" style="background-color: lavender;">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1 style="font-weight: bold; font-size: 200%;">My Course</h1>
					</div>
					<div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath }/teacher-area">Home</a></li>
                                <li><a href="${pageContext.request.contextPath }/teacher-area/mycourse">My Course</a></li>
                            </ol>
                        </div>
                    </div>
				</div>
			</div>
		</section>
		

		<!-- Sidebar + Content -->
		<section class="white section">
			<div class="container">
				<div class="row">
					
					<!-- Sidebar -->
					<c:set var="btmycourse" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/teacher/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-8">
						<h1>List Course</h1>
						<div class="shop-cart">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Item Name</th>
										<th>Price</th>
										<th>Create Date</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="course" items="${course }">
									<tr>
										<td>
											<a href="${pageContext.request.contextPath }/teacher-area/mycourse/detail?id=${course.id}">
												<img src="${pageContext.request.contextPath }/resources/upload/${course.image }" alt="" class="alignleft img-thumbnail"> ${course.title }
											</a>
										</td>
										<td>${course.price }</td>
										<td>${course.createDate }</td>
										<td class="remove">
											<a href="${pageContext.request.contextPath }/teacher-area/mycourse/detail?id=${course.id}">Detail</a>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Sidebar + Content -->

	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/common/script.jsp" %>
	<!-- End Script -->
	
</body>

</html>
