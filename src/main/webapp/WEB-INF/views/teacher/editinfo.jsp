<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta name="description" content="Edit Teacher Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Edit Info | LearnPLUS</title>

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
						<h1 style="font-weight: bold; font-size: 200%;">Edit Information</h1>
					</div>
					<div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath }/teacher-area">Home</a></li>
                                <li><a href="${pageContext.request.contextPath }/teacher-area/editinfo">Edit Information</a></li>
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
					<c:set var="bteditinfo" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/teacher/sidebar.jsp" %>
					<!-- End Sidebar -->
					
                    <div id="course-content" class="col-md-8">
                        <div class="course-description">
                            <h3 class="course-title">Edit Profile</h3>
                            <div class="edit-profile">
                                <form role="form" action="${pageContext.request.contextPath }/teacher-area/save" method="post" enctype="multipart/form-data">
									<input type="hidden" name="id" value="${teacher.id}">
									<div class="form-group">
										<label>First Name</label> <input type="text" name="firstName" value="${teacher.firstName}"
											class="form-control" placeholder="First Name" required>
									</div>
									<div class="form-group">
										<label>Last Name</label> <input type="text" name="lastName" value="${teacher.lastName}"
											class="form-control" placeholder="Last Name">
									</div>
									<div class="form-group">
										<label>Phone Number</label> <input type="number" name="phoneNumber" value="${teacher.phoneNumber}"
											class="form-control" placeholder="Phone Number" required>
									</div>
									<div class="form-group">
										<label>Email</label> <input type="email" name="email" value="${teacher.email}"
											class="form-control" placeholder="Email" required>
									</div>
									<div class="form-group">
										<label>Address</label> <input type="text" name="address" value="${teacher.address}"
											class="form-control" placeholder="Address" required>
									</div>
									<div class="form-group">
										<label>User Name</label> <input type="text" name="userName" value="${teacher.userName}"
											class="form-control" placeholder="Username">
									</div>
									<div class="form-group">
										<label>Password</label> <input type="password" name="password" value="${teacher.password}"
											class="form-control" placeholder="************">
									</div>
									<div class="form-group">
										<label>Re-Enter Password</label> <input type="password"
											class="form-control" placeholder="************">
									</div>
									<div class="form-group">
										<label>About Your Self</label>
										<textarea type="text" class="form-control"
											placeholder="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.."></textarea>
									</div>
									<div class="form-group">
										<label>Upload Avatar</label> 
										<input type="hidden" name="image" value="${teacher.image}">
										<input type="file" class="btn btn-primary" name="uploadfile">
										<p class="help-block">
											Or you can use <a href="#">Gravatar Service</a>.
										</p>
									</div>
									<button type="submit" class="btn btn-primary">Submit
										Changes</button>
								</form>
                            </div>
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