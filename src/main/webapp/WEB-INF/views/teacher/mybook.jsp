<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<meta name="description" content="Book Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Book | LearnPLUS</title>
    
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
						<h1 style="font-weight: bold; font-size: 200%;">My Book</h1>
					</div>
					<div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath }/teacher-area">Home</a></li>
                                <li><a href="${pageContext.request.contextPath }/teacher-area/mybook">My Book</a></li>
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
					<c:set var="btmybook" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/teacher/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-8">
						<h1>List Book</h1>
						<div class="shop-cart">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th data-field="${name_book }" data-filter-control="input">Item Name</th>
										<th>Price</th>
										<th data-field="${name_course }" data-filter-control="select">Course</th>
										<th>Create date</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="course" items="${course_select }" varStatus="loop">
									<c:forEach var="book" items="${course.book }">
										<div class="item cat${loop.count+1 }">
										<tr>
											<td>
												<img src="${pageContext.request.contextPath }/resources/upload/images/books/${book.image}" alt="" class="alignleft img-thumbnail"> ${book.title }
											
											</td>
										<td>$ ${book.price }</td>
										<td><a href="${pageContext.request.contextPath }/teacher-area/mycourse/detail?id=${course.id}">${course.title }</a></td>
										<td>${book.createDate }</td>
										<td>
										<div class="popup_main">
											<button class="open_popup">Edit</button>
											<div class="popup_body">
												<div class="popup_back"></div>
												<div class="popup_contain">
													<div class="popup_close">x</div>
													<form action="${pageContext.request.contextPath }/teacher-area/mybook/updatebook" method="post" enctype="multipart/form-data">
														<div class="col-lg-6 col-md-6 col-sm-12-center">
															<div class="form-group" style="display: none;">
																<label class="form-label">id</label> <input
																	type="text" class="form-control" name="id"
																	value="${book.id }">
															</div>
															<div class="form-group">
																<label class="form-label">Title</label> <input
																	type="text" class="form-control" name="title"
																	value="${book.title }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Description</label> <input
																	type="text" class="form-control" name="des"
																	value="${book.des }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Price</label> <input
																	type="number" min=0 class="form-control" name="lengths"
																	value="${book.price }" required>
															</div>
															<div class="form-group">
																<label class="form-label">Course</label><br>
																<c:forEach var="course" items="${course_select }">
																	&nbsp<input type="radio" name="courseId" value="${course.id }"> ${course.title }
																</c:forEach> 
															</div>
															<div class="form-group">
																<label class="form-label">Create Date</label> <input
																	type="text" class="form-control" name="createDate"
																	value="${book.createDate }" disabled>
															</div>
														</div>
														
														<div class="col-lg-12 col-md-12 col-sm-12">
															<div class="form-group fallback w-100">
																<label class="form-label">Book Image</label>
																<input type="file"  class="btn btn-primary" name="uploadfile" value="${pageContext.request.contextPath }/resources/upload/books/${book.image}">
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
										</div>
									</c:forEach>
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
	<!-- End Script -->
	
</body>

</html>
