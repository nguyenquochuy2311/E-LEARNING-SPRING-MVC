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

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- End Header -->

        
        <!-- Top My Page -->
        <section class="grey page-title">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-left">
                        <h1>Edit Information</h1>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">My Page</a></li>
                                <li class="active">Edit Information</li>
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
					<c:set var="bteditinfo" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/mypage/sidebar.jsp" %>
					<!-- End Sidebar -->
					
                    <div id="course-content" class="col-md-8">
                        <div class="course-description">
                            <h3 class="course-title">Edit Profile</h3>
                            <div class="edit-profile">
                                <form role="form" action="save" method="post" enctype="multipart/form-data">
									<input type="hidden" name="id" value="${student.id}">
									<div class="form-group">
										<label>First Name</label> <input type="text" name="firstName" value="${student.firstName}"
											class="form-control" placeholder="Not Empty">
									</div>
									<div class="form-group">
										<label>Last Name</label> <input type="text" name="lastName" value="${student.lastName}"
											class="form-control" placeholder="Not Empty">
									</div>
									<div class="form-group">
										<label>Phone Number</label> <input type="number" name="phoneNumber" value="${student.phoneNumber}"
											class="form-control" placeholder="Not Empty">
									</div>
									<div class="form-group">
										<label>Email</label> <input type="email" name="email" value="${student.email}"
											class="form-control" placeholder="Not Empty">
									</div>
									<div class="form-group">
										<label>Address</label> <input type="text" name="address" value="${student.address}"
											class="form-control" placeholder="Not Empty">
									</div>
									<div class="form-group">
										<label>User Name</label> <input type="text" name="userName" value="${student.userName}"
											class="form-control" placeholder="Not Empty">
									</div>
									<div class="form-group">
										<label>Password</label> <input type="password" name="password" value="${student.password}"
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
										<input type="hidden" name="image" value="${student.image}">
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