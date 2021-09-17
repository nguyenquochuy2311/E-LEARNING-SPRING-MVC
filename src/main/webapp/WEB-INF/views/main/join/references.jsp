<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
</head>
<body>
<!-- Loader -->
	<div id="loader">
		<div class="loader-container">
			<img src="images/site.gif" alt="" class="loader-site">
		</div>
	</div>
	<!-- End Loader -->

	<!-- All Page -->
	<div id="wrapper">

		<!-- Top Area -->
		<%@ include file="/WEB-INF/views/main/common/top-area.jsp" %>
		<!-- End Top Area -->

		<!-- Header -->
		<%@ include file="/WEB-INF/views/main/common/header.jsp" %>
		<!-- End Header -->

		<!-- Top My Page -->
		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>My Page</h1>
					</div>
					<div class="col-md-6 text-right">
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="<c:url value='/mypage/info'/>">Home</a></li>								
								<li><a href="<c:url value='/mypage/mycourse'/>">Course</a></li>
								<li class="active">References</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Top My Page -->

		<!-- Sidebar + Content -->
		<section class="white section">
			<div class="container">
				<div class="row">
					
					<!-- Sidebar -->
					<c:set var="btreferences" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/join/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-9">
                        <div class="course-description">
                            <small>Course Status: <span>In Progress</span> </small>                          
                        </div>
                        <div class="course-table">
                            <h4>Notices</h4>                      
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="col-md-3">Title</th>
                                        <th class="col-md-3">Detail</th>
                                        <th class="col-md-3">file</th>
                                        <th class="col-md-3">Create Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="ref" items="${list }">
                                		<tr>                                 
                                        	<td>${ref.title }</td>  
                                        	<td><a href="#">${ref.des }</a> </td>
                                        	<td>${ref.file }</td> 
                                        	<td>${ref.createDate }</td>                             
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

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
	<!-- End Script -->
</body>
</html>