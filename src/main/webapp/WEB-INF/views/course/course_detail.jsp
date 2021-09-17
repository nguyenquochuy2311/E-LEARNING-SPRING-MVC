<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="description" content="Course Detail Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">
    <title>Course Detail | Learning Management System HTML Template</title>
    
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <script>
    	$('#myModal').on('shown.bs.modal', function () {
    	  $('#myInput').trigger('focus')
    	})
    
    </script>
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

        <!-- Top Course -->
        <section class="grey page-title">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-left">
                        <h1>Course Detail</h1>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath }">Home</a></li>
                                <li><a href="#">Category 1</a></li>
                                <li class="active">Course Name</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Top Course-->

        <!-- Main Page -->
        <section class="white section">
            <div class="container">
                <div class="row">
                    <div id="course-left-sidebar" class="col-md-5">
                        <img src="${pageContext.request.contextPath }/resources/upload/images/courses/${course.image}" alt="">
                        <div class="magnifier">
                        </div>
                    </div>
                    <div id="course-content" class="col-md-7">
                        <h1 class="course-title"><b>${course.title }</b></h1>
                        <div class="course-description">
                        	<c:set var="teacher" value="${course.teacher }"></c:set>
                            <h4>Teacher&nbsp;&nbsp;&nbsp;&nbsp; <b>${teacher.firstName } ${teacher.lastName }</b></h4>
                            <h4>Course period&nbsp;&nbsp;&nbsp;&nbsp; <b>30 days</b></h4>
                            <h4>Study Time&nbsp;&nbsp;&nbsp;&nbsp; <b>30 days</b></h4>
                        </div>
                        <hr class="invis">
                    </div>
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12 my_planHeader my_plan2">
                                <div class="col-md-6 text-left">
                                	<c:set var="cat" value="${course.category }"></c:set>
                                    <p>course <b>${course.title } ${cat.title }</b></p>
                                </div>
                                <div class="col-md-3 text-right" id="price">
                                    <div class="my_planTitle">${course.price } USD</div>
                                </div>
                                <div class="col-md-3 text-center">
                					 <button onclick="location.href='${paymentUrl }'" type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#exampleModalCenter">
  										${paymentBtn }
									</button>
									<!-- Modal -->
									<div class="modal fade" id="exampleModalCenter" tabindex="-2" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
									  <div class="modal-dialog modal-dialog-centered" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <br><h1 class="modal-title" id="exampleModalLongTitle">Payment</h1>
									      </div>
									      <form method="post" action="${pageContext.request.contextPath }/authorize_payment">
									      <div class="modal-body">
									        <h2 style="text-align:left;">goodsinfo</h2>
									        <div class="well" style="text-align:left;color:black;">
												<h4>Product name: &nbsp;&nbsp;&nbsp;<b> ${course.title }</b></h4> 
												<h4>Price: &nbsp;&nbsp;&nbsp;$<b> ${course.price }</b></h4> 
												<h4>Tax: &nbsp;&nbsp;&nbsp;$<b> 10</b></h4>
												<hr>
												<h4>Amount: &nbsp;&nbsp;&nbsp;$<b> ${course.price + 10 }</b></h4>
												<input type="hidden" name="product_id" value="${course.id }" /> 
												<input type="hidden" name="invoice_no" value="${invoice_no}" />
									         	<input type="hidden" name="tax" value="10" />
												<input type="hidden" name="amount" value="${course.price + 10 }" />	  
												<input type="hidden" name="type" value="course"/>       	
									         </div>	
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
									        <input type="submit" class="btn btn-default" value="Payment" />
									      </div>
									      </form>
									    </div>
									  </div>
                				</div>
                				
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="content-widget">
                            <div class="widget-title">
                                </br>
                                <h4>Other Information</h4>
                                <hr>
                            </div>
                            <div class="tabbed-widget">
                                <ul class="nav nav-tabs">
                                    <li class="col-md-3 active"><a data-toggle="tab" href="#home">Introduction</a></li>
                                    <li class="col-md-3"><a data-toggle="tab" href="#menu1">Instructor</a></li>
                                    <li class="col-md-3"><a data-toggle="tab" href="#menu2">Course List</a></li>
                                    <li class="col-md-3"><a data-toggle="tab" href="#menu3">Course Review</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="home" class="tab-pane fade in active">
                                        <h1>Introduction</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit
                                            amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua. amet, consectetur adipisicing elit, sed do
                                            eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor
                                            sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua</p>
                                    </div>
                                    <div id="menu1" class="tab-pane fade">
                                        <h1>Instructor</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit
                                            amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua. amet, consectetur adipisicing elit, sed do
                                            eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor
                                            sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua</p>
                                    </div>
                                    <div id="menu2" class="tab-pane fade">
                                        <h1>Course List</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit
                                            amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua. amet, consectetur adipisicing elit, sed do
                                            eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor
                                            sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua</p>
                                    </div>
                                    <div id="menu3" class="tab-pane fade">
                                        <h1>Course Reviews</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit
                                            amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua. amet, consectetur adipisicing elit, sed do
                                            eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor
                                            sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Main Page -->

        <!-- Related Course -->
        <c:if test="${not empty courseRelated }">
        <section class="grey section">
            <div class="other-courses">
                <img src="${pageContext.request.contextPath }/resources/upload/xothers.png.pagespeed.ic.BLyi2PaMRC.png" alt="" class="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2>Related Course</h2>
                        </div>
                    </div>
                </div>
                <c:forEach var="courseR" items="${courseRelated }" varStatus="loop">
                	<c:if test="${loop.count<3 }">
                		<div class="row course-list teacher-list">
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="shop-item-list entry">
                            <div class="">
                                <img src="${pageContext.request.contextPath }/resources/upload/images/courses/${courseR.image}" alt="${courseR.title }">
                                <div class="magnifier">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-6">
                        <div class="shop-list-desc">
                            <h4><a href="${pageContext.request.contextPath }/course/detail?id=${courseR.id}">${courseR.title }</a></h4>
                            <div class="shopmeta">
                            	<c:set var="teacher" value="${courseR.teacher }"></c:set>
                                <span class="pull-left"><strong>Teacher :</strong> ${teacher.firstName } ${teacher.lastName }</span>
                            </div>
                            <hr class="invis clearfix">
                            <p>${courseR.des }</p>
                        </div>
                    </div>
                    <div class="col-md-3 text-right">
                        <a href="${pageContext.request.contextPath }/course/detail?id=${courseR.id}" class="btn btn-primary btn-lg">enrollment</a>
                    </div>
                </div>
                	</c:if>
                </c:forEach>
            </div>
        </section>
        </c:if>
        <!-- End Related Course -->

        <!-- Related Book -->

        	<section class="white section">
            <div class="container">
                <div class="row">
                    <div class="section-title">
                        <h2>Related Book</h2>
                    </div>
                </div>
                <c:forEach var="bookR" items="${bookRelated }" varStatus="loop">
                	<c:if test="${loop.count < 3 }">
                		<div class="row course-list teacher-list">
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="shop-item-list entry">
                            <div class="">
                                <img src="${pageContext.request.contextPath }/resources/upload/images/books/${bookR.image}" alt="">
                                <div class="magnifier">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-6">
                        <div class="shop-list-desc">
                            <h4><a href="${pageContext.request.contextPath }/book/detail?id=${bookR.id}">${bookR.title }</a></h4>
                            <div class="shopmeta">
                            	<c:set var="course1" value="${bookR.course }"></c:set>
                                <span class="pull-left"><strong>Course :</strong> ${course1.title } </span>
                            </div>
                            <hr class="invis clearfix">
                            <p>${bookR.des }</p>
                        </div>
                    </div>
                    <div class="col-md-3 text-right">
                        <a href="${pageContext.request.contextPath }/book/detail?id=${bookR.id}" class="btn btn-primary btn-lg">Read more</a>
                    </div>
                </div>
                	</c:if>
                </c:forEach>
            </div>


        </section>
        
        <!-- End Related Book -->

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
        <!-- End Footer -->
    </div>

    <%@ include file="/WEB-INF/views/common/script.jsp" %>
</body>

</html>