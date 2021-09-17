<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
<style>
.link {
    background-color: transparent;
    color: blue;
    cursor: pointer;
    display: inline;
    outline: none;
    margin: 0;
    padding: 0;
    border: 0;    
}
.link:hover {
  color: red;
}

.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 10; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0);
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
</style>
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
						<h1>My Page</h1>
					</div>
					<div class="col-md-6 text-right">
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="#">Home</a></li>
								<li><a href="#">My Page</a></li>
								<li class="active">My Info</li>
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
					<c:set var="btmyinfo" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/mypage/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-8">
						<div class="blog-wrapper">
							<div class="blog-desc">
								<div class="shop-cart">
									<table class="table">
										<tbody>
											<tr>
												<td>
													<h1>Account Name</h1>
												</td>
												<td></td>
												<td><a href="editinfo" class="btn btn-default">Edit
														Info</a></td>
											</tr>
											<tr>
												<td>
													<p>Full Name</p>
												</td>
												<td>
													<p>${student.lastName} ${student.firstName}</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>id</p>
												</td>
												<td>
													<p>${student.id}</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>email</p>
												</td>
												<td>
													<p>${student.email}</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>phone number</p>
												</td>
												<td>
													<p>${student.phoneNumber }</p>
												</td>
											</tr>
											<tr>
												<td>
													<p>date of accession</p>
												</td>
												<td>
													<p>${student.createDate}</p>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="coupon-code-wrapper">
										<a class="btn btn-default btn-block" role="button"
											data-toggle="collapse" href="#collapseExample"
											aria-expanded="false" aria-controls="collapseExample">
											Statistics of the number of courses? Click to enter here </a>
										<div class="collapse" id="collapseExample">
											<div class="well">
												<div class="media">
													<h2>My course</h2>
													<div class="row my_featureRow">
														<div
															class="col-xs-6 col-sm-6 my_feature col-xs-6 text-center">
															<p>My enrolled course</p>
														</div>
														<div class="col-xs-6 col-sm-6">
															<div class="row">
																<div class="col-xs-6 col-sm-12 my_planFeature my_plan3">
																	3 things</div>
															</div>
														</div>
													</div>
													<div class="row my_featureRow">
														<div
															class="col-xs-6 col-sm-6 my_feature col-xs-6 text-center">
															<p>My bought course</p>
														</div>
														<div class="col-xs-6 col-sm-6">
															<div class="row">
																<div class="col-xs-6 col-sm-12 my_planFeature my_plan3">
																	3 things</div>
															</div>
														</div>
													</div>
													<div class="row my_featureRow">
														<div
															class="col-xs-6 col-sm-6 my_feature col-xs-6 text-center">
															<p>My completed course</p>
														</div>
														<div class="col-xs-6 col-sm-6">
															<div class="row">
																<div class="col-xs-6 col-sm-12 my_planFeature my_plan3">
																	0 things</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="row course-list shop-listing">
							<div class="col-md-6" id="type_title">
								<p>
									<b>My enrolled course</b>
								</p>
							</div>
							<div class="col-md-6 text-right">
								<a href="mycourse">View All</a>
							</div>
							
							<div class="col-md-12">
								<c:forEach var="join" items="${student.join}" end="3">
									<div class="col-md-3 col-sm-6 col-xs-12">
										<div class="shop-item-list entry">
											<div class="">
												<img alt="" src=" <c:url value='/resources/upload/images/courses/${join.image}'/>">											
												<div class="magnifier"></div>
											</div>
											<div class="shop-item-title clearfix">
												<form id="form-lesson" action="<c:url value='/course/join'/>" method="post"> 								
													<input type="hidden" name="id" value="${join.id}"/>
													<input type="hidden" name="courseId" value="${join.courseId}"/>
													<h4><input type="submit" value="${join.title}" class="link"/></h4>																		 
												</form>
												<p>${join.des}</p>
												<h5>${join.teacher.lastName} ${join.teacher.firstName}</h5>
												<h5>${join.registerDate}</h5>												
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<hr>
						<div class="row course-list shop-listing">
							<div class="col-md-6" id="type_title">
								<p>
									<b>Payment List</b>
								</p>
							</div>
							<div class="col-md-6 text-right">
								<a href="<c:url value='/mypage/mypayment'/>">View All</a>
							</div>
							<div class="blog-desc">
								<div class="shop-cart">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>No</th>
												<th>Name</th>
												<th>Price</th>
												<th>Order Date</th>
											</tr>
										</thead>
										<tbody>									
											<c:forEach var="payment" items="${student.payment}" end="3" varStatus="loop">
												<tr> 
													<td>${loop.count}</td>
													<td><a href="#">${payment.title}</a></td>
													<td>${payment.dueMount}</td>
													<td>${payment.orderDate}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						
						<div class="row course-list shop-listing">
							<div class="col-md-6" id="type_title">
								<p>
									<b>Certificate List</b>
								</p>
							</div>
							<div class="col-md-6 text-right">
								<a href="<c:url value='/mypage/mycert'/>">View All</a>
							</div>
							<div class="blog-desc">
								<div class="shop-cart">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>No</th>
												<th>Title</th>
												<th>Teacher</th>
												<th>Finish Date</th>
											</tr>
										</thead>
										<tbody>									
											<c:forEach var="cert" items="${student.certificate}" end="3" varStatus="loop">
												<tr>
													<td>${loop.count}</td>
													<td><h5 style="cursor: pointer;">${cert.course.title}</h5></td>												
													<td>${cert.teacher.lastName} ${cert.teacher.firstName}</td>
													<td>${cert.finishDate}</td>
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
			
			<c:forEach var="cert" items="${student.certificate}" end="3" varStatus="loop">
	            <div id="myModal" class="modal">
				  <span class="close">&times;</span>
				  <img class="modal-content" id="imageCert" src="<c:url value='/resources/upload/images/certificates/${cert.title }'/>">
		  			<div id="caption">CERTIFICATE</div>
				</div>
            </c:forEach>
		</section>
		<!-- End Sidebar + Content -->

		<!-- Related Course -->
		<section class="grey section">
			<div class="other-courses">
				<img src="images/xothers.png.pagespeed.ic.BLyi2PaMRC.png" alt=""
					class="">
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3>Related Courses</h3>
					</div>
				</div>
				<div id="owl-featured" class="owl-custom">
					<div class="owl-featured">
						<div class="shop-item-list entry">
							<div class="">
								<img src="<c:url value='/resources/upload/xcourse_01.png.pagespeed.ic.XTOvCuUmZu.png'/>"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="#">Learn Web Design & Development</a>
								</h4>
								<div class="shopmeta">
									<span class="pull-left">12 Student</span>
									<div class="rating pull-right">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</div>
							</div>
							<div class="visible-buttons">
								<a title="Add to Cart" href="#"><span
									class="fa fa-cart-arrow-down"></span></a> <a title="Read More"
									href="#"><span class="fa fa-search"></span></a>
							</div>
						</div>
					</div>
					<div class="owl-featured">
						<div class="shop-item-list entry">
							<div class="">
								<img src="<c:url value='/resources/upload/xcourse_02.png.pagespeed.ic.PL7Wu2UcSB.png'/>"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="#">Graphic Design & Logo Mockups
										Course</a>
								</h4>
								<div class="shopmeta">
									<span class="pull-left">21 Student</span>
									<div class="rating pull-right">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i>
									</div>
								</div>
							</div>
							<div class="visible-buttons">
								<a title="Add to Cart" href="#"><span
									class="fa fa-cart-arrow-down"></span></a> <a title="Read More"
									href="#"><span class="fa fa-search"></span></a>
							</div>
						</div>
					</div>				
				</div>
			</div>
		</section>
		<!-- End Related Course -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<!-- Script -->
	<script type="text/javascript">
		var modal = document.getElementById("myModal");
		var popupCert = document.getElementById("popup");
		var modalImg = document.getElementById("imageCert");
		var captionText = document.getElementById("caption");
		popupCert.onclick = function(){
		  modal.style.display = "block";
		}
		var span = document.getElementsByClassName("close")[0];
		span.onclick = function() { 
		  modal.style.display = "none";
		}
	</script>
	<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
	<!-- End Script -->
	
</body>

</html>
