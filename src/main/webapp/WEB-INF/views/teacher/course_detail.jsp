<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<meta name="description" content="Detail Course Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Course Detail | LearnPLUS</title>
    
	<%@ include file="/WEB-INF/views/common/head.jsp"%>

	<style>
.open_popup {
	background: tomato;
	border: none;
	padding: 5px 15px;
	color: #fff;
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
	min-height: 580px;
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
					<h1 style="font-weight: bold; font-size: 200%;">Couse detail</h1>
				</div>
				<div class="col-md-6 text-right">
                       <div class="bread">
                           <ol class="breadcrumb">
                               <li><a href="${pageContext.request.contextPath }/teacher-area">Home</a></li>
                               <li><a href="${pageContext.request.contextPath }/teacher-area/mycourse">My Course</a></li>
                               <li><a href="#">${course.title }</a></li>
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
                        	<a style="float:right;" href="${pageContext.request.contextPath }/teacher-area/mycourse/newlesson?id=${course.id}" class="btn btn-default">New a lesson</a><br>
                            <h3>List Lesson of <b><u><a href="${pageContext.request.contextPath }/teacher-area/mycourse/detail?id=${course.id}">${course.title }</u></b></a></h3>
                            <div class="course-table">
				              <table class="table">
				                <thead>
				                  <tr>
				                    <th colspan="2">Lesson Title</th>
				                    <th>Description</th>
				                    <th>Length</th>
				                    <th>Create Date</th>
				                  </tr>
				                </thead>
				                <tbody> 
				                <c:forEach var="lesson" items="${lesson }">
				                	<tr>
				                    <td><a href="#!" data-toggle="modal"
									data-target=".videopopup"> <data
											data-src="${pageContext.request.contextPath}/resources/upload/video/${lesson.video}"> ${lesson.title }</data>
									</a></td>
									<td><video id="haivideo" style="display: none;"
										preload="metadata"
										src="${pageContext.request.contextPath}/resources/upload/video/${lesson.video}"
										controls="controls"></video>
									<p class="time1"></p></td>
									<td>${lesson.des }</td>
									<td>${lesson.lengths }</td>
									<td>${lesson.createDate }</td>
				                   	<td>
										<div class="popup_main">
											<button class="open_popup">Edit</button>
											<div class="popup_body">
												<div class="popup_back"></div>
												<div class="popup_contain">
													<div class="popup_close">x</div>
													<form action="${pageContext.request.contextPath }/teacher-area/mycourse/updatels" method="post" enctype="multipart/form-data">
														<div class="col-lg-6 col-md-6 col-sm-12-center">
															<div class="form-group" style="display: none;">
																<label class="form-label">id</label> <input
																	type="text" class="form-control" name="id"
																	value="${lesson.id }">
															</div>
															<div class="form-group">
																<label class="form-label">Title</label> <input
																	type="text" class="form-control" name="title"
																	value="${lesson.title }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Description</label> <input
																	type="text" class="form-control" name="des"
																	value="${lesson.des }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Lengths</label> <input
																	type="text" class="form-control" name="lengths"
																	value="${lesson.lengths }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Course</label><br> 
																<c:forEach var="course" items="${all_courses }">
																	&nbsp<input type="radio" name="courseId" value="${course.id }" <c:if test="${course.id==lesson.courseId }"> checked</c:if> > ${course.title }
																</c:forEach>
															</div>
															<div class="form-group">
																<label class="form-label">Create Date</label> <input
																	type="text" class="form-control" name="createDate"
																	value="${lesson.createDate }" disabled>
															</div>
														</div>
				
														<div class="col-lg-12 col-md-12 col-sm-12">
															<div class="form-group fallback w-100">
																<label class="form-label">Video</label>
																<input type="file"  class="btn btn-primary" name="uploadfile" value="${pageContext.request.contextPath }/resources/upload/video/${lesson.video}">
															</div>
														</div>
				
														<div class="col-lg-12 col-md-12 col-sm-12">
															<button type="submit" class="btn btn-primary">Submit</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</td>
				                  </tr>
				                </c:forEach>

				                </tbody>
				              </table>
				            </div>
                        </div>
						<div class="coupon-code-wrapper">
		<p>
			<a class="btn btn-primary btn-block" style="background-color:#428992;" role="button" data-toggle="collapse" href="#collapseExample4" aria-expanded="false" aria-controls="collapseExample4">
				List Lesson Request (${lesson_request.size() })
			</a>
		</p>
		<div class="collapse grey-section" id="collapseExample4">
			<div class="well">
	            <div class="edit-profile">
	    			    <table class="table">
				                <thead>
				                  <tr>
				                    <th colspan="2">Lesson Title</th>
				                    <th>Description</th>
				                    <th>Length</th>
				                    <th>Create Date</th>
				                  </tr>
				                </thead>
				                <tbody>
				                <c:forEach var="lesson1" items="${lesson_request }">
				                	<tr>
				                    <td><a href="#!" data-toggle="modal"
									data-target=".videopopup"> <data
											data-src="${pageContext.request.contextPath}/resources/upload/video/${lesson1.video}"> ${lesson1.title }</data>
									</a></td>
									<td><video id="haivideo" style="display: none;"
										preload="metadata"
										src="${pageContext.request.contextPath}/resources/upload/video/${lesson1.video}"
										controls="controls"></video>
									<p class="time1"></p></td>
									<td>${lesson1.des }</td>
									<td>${lesson1.lengths }</td>
									<td>${lesson1.createDate }</td>
				                   	<td>
										<div class="popup_main">
											<button class="open_popup">Edit</button>
											<div class="popup_body">
												<div class="popup_back"></div>
												<div class="popup_contain">
													<div class="popup_close">x</div>
													<form action="${pageContext.request.contextPath }/teacher-area/mycourse/updatels" method="post" enctype="multipart/form-data">
														<div class="col-lg-6 col-md-6 col-sm-12-center">
															<div class="form-group" style="display: none;">
																<label class="form-label">id</label> <input
																	type="text" class="form-control" name="id"
																	value="${lesson1.id }>">
															</div>
															<div class="form-group">
																<label class="form-label">Title</label> <input
																	type="text" class="form-control" name="title"
																	value="${lesson1.title }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Description</label> <input
																	type="text" class="form-control" name="des"
																	value="${lesson1.des }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Lengths</label> <input
																	type="text" class="form-control" name="lengths"
																	value="${lesson1.lengths }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Course</label><br> 
																<c:forEach var="course" items="${all_courses }">
																	&nbsp<input type="radio" name="courseId" value="${course.id }" <c:if test="${course.id==lesson1.courseId }"> checked</c:if>> ${course.title}
																</c:forEach>

															</div>
															<div class="form-group">
																<label class="form-label">Create Date</label> <input
																	type="text" class="form-control" name="createDate"
																	value="${lesson1.createDate }" disabled>
															</div>
														</div>
				
														<div class="col-lg-12 col-md-12 col-sm-12">
															<div class="form-group fallback w-100">
																<label class="form-label">Video</label>
																<input type="file"  class="btn btn-primary" name="uploadfile" value="${pageContext.request.contextPath }/resources/upload/video/${lesson1.video}">
															</div>
														</div>
				
														<div class="col-lg-12 col-md-12 col-sm-12">
															<button type="submit" class="btn btn-primary">Submit</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</td>
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
		</section>
		<!-- End Sidebar + Content -->

	</div>
	<!-- End All Page -->

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

	<!-- Script -->
	<%@ include file="/WEB-INF/views/common/script.jsp" %>
	<script>
    function previewImage() {
        var file = document.getElementById("file_upload").files;
        if (file.length > 0) {
            var fileReader = new FileReader();

            fileReader.onload = function (event) {
                document.getElementById("preview").setAttribute("src", event.target.result);
            };

            fileReader.readAsDataURL(file[0]);
        }
    }
    </script>
    
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

		$('#myModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget);
			var imgposter = button.find("data").attr("src");
			var vidsrc = button.find("data").attr("data-src");

			var timee = document.getElementById("recap");
			timevid = timee.duration;

			//$(this).find('video#recap').attr('poster', imgposter);
			$(this).find('video#recap source').attr('src', '');
			$(this).find('video#recap source').attr('src', vidsrc);

			$(this).find('video#recap')[0].load();
		}).on('hidden.bs.modal', function() {
			$(this).find('video')[0].pause();
		});

		var timee = document.querySelector("haivideo");
		console.log(timee);
		var t = timee.duration;
		console.log(t);
		timee.onloadedmetadata = function() {
			var minutes = Math.floor(timee.duration / 60);
			var seconds = Math.floor(timee.duration % 60);
			console.log(minutes)
			document.querySelector(".time1").innerHTML = minutes + ':'
					+ seconds;
		};
	</script>
	


	<!-- Datatable -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/plugins-init/datatables.init.js"></script>

	
	
</body>

</html>
