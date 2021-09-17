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
                        <h1>My Page</h1>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">My Page</a></li>
                                <li class="active">Payment List</li>
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
					<c:set var="btmypayment" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/mypage/sidebar.jsp" %>
					<!-- End Sidebar -->
					
                    <div id="course-content" class="col-md-8">
                        <div class="content-widget">
                            <div class="tabbed-widget">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#home">All</a></li>
                                    <li><a data-toggle="tab" href="#menu1">Courses</a></li>
                                    <li><a data-toggle="tab" href="#menu2">Book</a></li>

                                </ul>
                                <div class="tab-content">
                                    <div id="home" class="tab-pane fade in active">
                                        <div class="row course-list shop-listing">
                                            <div class="blog-desc">
                                                <div class="shop-cart">
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>No</th>
                                                                <th>Type</th>
                                                                <th>Product Name</th>
                                                                <th>Invoice No</th>
                                                                <th>Due Mount</th>
                                                                <th>Order Date</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>                                                                                                                                                          
                                                        	<c:forEach var="order" items="${order}" varStatus="loop">                                                        		                                                         		
	                                                            <tr>
	                                                            	<td>${loop.count}</td>
																	<c:if test="${not empty order.bookId }">
																		<c:set var="book" value="${order.bookId }"></c:set>
																		<td>Book</td>
																		<td>${book.title}</td>
																	</c:if>
																	<c:if test="${not empty order.courseId }">
																		<c:set var="course" value="${order.courseId }"></c:set>
																		<td>Course</td>
																		<td>${course.title }</td>
																	</c:if>
	                                                                <td>${order.invoiceNo }</td>
	                                                                <td>$ ${order.dueMount}</td>
	                                                                <td>${order.orderDate }</td>
	                                                            </tr>
	                                                        </c:forEach>                                     
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="menu1" class="tab-pane fade">
                                        <div class="blog-desc">
                                            <div class="shop-cart">
                                                <table class="table table-bordered">
                                                    <thead>
	                                                    <tr>
		                                                    <th>No</th>
                                                            <th>Product Name</th>
                                                            <th>Invoice No</th>
                                                            <th>Due Mount</th>
                                                            <th>Order Date</th>
                                                     	</tr>
                                                     </thead>
                                                     <tbody>
                                                        	<c:forEach var="order" items="${orderCourse}" varStatus="loop">                                                        		                                                         		
	                                                            <tr>
	                                                            	<td>${loop.count}</td>
																	<c:if test="${not empty order.courseId }">
																		<c:set var="course" value="${order.courseId }"></c:set>
																		<td>${course.title }</td>
																	</c:if>
	                                                                <td>${order.invoiceNo }</td>
	                                                                <td>$ ${order.dueMount}</td>
	                                                                <td>${order.orderDate }</td>
	                                                            </tr>
	                                                        </c:forEach>        
	                                                        
                                                     </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="menu2" class="tab-pane fade">
                                        <div class="blog-desc">
                                            <div class="shop-cart">
                                                <table class="table table-bordered">
                                                    <thead>
	                                                    <tr>
	                                                        <th>No</th>
                                                            <th>Product Name</th>
                                                            <th>Invoice No</th>
                                                            <th>Due Mount</th>
                                                            <th>Order Date</th>
                                                            <th>Status</th>
                                                        </tr>
                                                     </thead>
                                                     <tbody>
	                                                       <c:forEach var="order" items="${orderBook}" varStatus="loop">                                                        		                                                         		
	                                                            <tr>
	                                                            	<td>${loop.count}</td>
																	<c:if test="${not empty order.bookId }">
																		<c:set var="book" value="${order.bookId }"></c:set>
																		<td>${book.title }</td>
																	</c:if>
	                                                                <td>${order.invoiceNo }</td>
	                                                                <td>$ ${order.dueMount}</td>
	                                                                <td>${order.orderDate }</td>
	                                                                <c:if test="${order.status==1 }">
	                                                                	<td>Delivered</td>
	                                                                </c:if>
	                                                                <c:if test="${order.status==0 }">
	                                                                	<td>Pending</td>
	                                                                </c:if>
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