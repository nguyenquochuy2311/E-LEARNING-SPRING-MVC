<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta name="description" content="New Lesson Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Add New Lesson | LearnPLUS</title>

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
						<h1 style="font-weight: bold; font-size: 200%;">Add new lesson</h1>
					</div>
					<div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath }/teacher-area">Home</a></li>
                                <li><a href="${pageContext.request.contextPath }/teacher-area/mycourse">My Course</a></li>
                                <li><a href="${pageContext.request.contextPath }/teacher-area/mycourse/detail?id=${course.id}">${course.title }</a></li>
                                <li><a href="#">Add new lesson</a></li>
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
                        <div class="course-description">
                        	<a style="float:right;" href="${pageContext.request.contextPath }/teacher-area/mycourse/detail?id=${course.id}" class="btn btn-default">Back to course</a><br>
                            <h3 class="course-title">New Lesson</h3>
                            <div class="edit-profile">
                                <form role="form" action="${pageContext.request.contextPath }/teacher-area/mycourse/checkaddls" method="post" enctype="multipart/form-data">
									<input type="hidden" name="courseId" value="${course.id}">
									<div class="form-group">
										<label>Title</label> <input type="text" name="title"
											class="form-control" placeholder="Title" required>
									</div>
									<div class="form-group">
										<label>Description</label> <textarea type="text" name="des" 
											class="form-control" placeholder="Description" required></textarea>
									</div>
									<div class="form-group">
										<label>Length</label>
										<input type="text" class="form-control" name="lengths"
											placeholder="Length" required >
									</div>
									<div class="form-group">
										<label>Upload Video</label> 
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
	<script src="${pageContex.request.contextPath }/resources/main/js/tinymce/tinymce.min.js"></script>
    <script>
    tinymce.init({
        selector: 'textarea'
    });
    </script>
	<!-- End Script -->

</body>

</html>