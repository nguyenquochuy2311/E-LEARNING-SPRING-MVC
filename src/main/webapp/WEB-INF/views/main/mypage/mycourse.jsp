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
.pro {
	height: 5px;
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
					<c:set var="btmycourse" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/mypage/sidebar.jsp" %>
					<!-- End Sidebar -->
					
                    <div id="course-content" class="col-md-8">
                        <div class="content-widget">
                            <div class="tabbed-widget">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#home">My enrolled course</a></li>
                                    <li><a data-toggle="tab" href="#menu1">My complete course</a></li>
                                    <li><a data-toggle="tab" href="#menu2">My like course</a></li>

                                </ul>
                                <div class="tab-content">
                                    <div id="home" class="tab-pane fade in active">
                                        <div class="row course-list shop-listing">
			                            	<c:forEach var="join" items="${student.join}">
												<div class="col-md-3 col-sm-6 col-xs-12">
													<div class="shop-item-list entry">
														<div class="">
															<img alt=""
																src=" <c:url value='/resources/upload/images/courses/${join.image}'/>">
															<div class="magnifier"></div>
														</div>
														<div class="shop-item-title clearfix">														
															<form id="form-lesson" action="<c:url value='/course/join'/>" method="get"> 								
																<input type="hidden" name="id" value="${join.id}"/>
																<input type="hidden" name="courseId" value="${join.courseId}"/>
																<h4><input type="submit" value="${join.title}" class="link"/></h4>																		 
															</form>															
															
															<h5>${join.teacher.lastName} ${join.teacher.firstName}</h5>
															<h5>${join.registerDate}</h5>														
														</div>													
														<div class="progress pro">
															<div class="progress-bar" role="progressbar" style="width: 100%;"></div>
														</div>					
													</div>
												</div>
											</c:forEach>         
                                        </div>
                                    </div>
                                    <div id="menu1" class="tab-pane fade">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit
                                            amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua. amet, consectetur adipisicing elit, sed do
                                            eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor
                                            sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua</p>
                                    </div>
                                    <div id="menu2" class="tab-pane fade">
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