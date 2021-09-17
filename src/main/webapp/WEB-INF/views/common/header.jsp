<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.coeding.spring.vo.User" %>
<%@ page import="com.coeding.spring.vo.Category" %>
<%@ page import="java.util.List" %>
   
<% User user = (User)request.getSession().getAttribute("user"); %>

<!-- Top Area -->
    <div class="topbar">
      <div class="container">
        <div class="row">
          <div class="col-md-6 text-left">
            <p><i class="fa fa-graduation-cap"></i> Transform your life through education </p>
          </div>
          <div class="col-md-6 text-right">
            <ul class="list-inline">
              <li>
                <a class="social" href="#"><i class="fa fa-facebook"></i></a>
                <a class="social" href="#"><i class="fa fa-twitter"></i></a>
                <a class="social" href="#"><i class="fa fa-google-plus"></i></a>
                <a class="social" href="#"><i class="fa fa-linkedin"></i></a>
              </li>
              
              <c:if test="${empty user }">
              <li class="dropdown">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-lock"></i> Login &
                  Register</a>
                <div class="dropdown-menu">
                  <form action="${pageContext.request.contextPath}/login/checklogin" method="post">
                    <div class="form-title">
                      <h4>Login Area</h4>
                      <hr>
                    </div>
                    <input class="form-control" type="text" name="userName" placeholder="User Name" required>
                    <div class="formpassword">
                      <input class="form-control" type="password" name="password" placeholder="******" required>
                    </div>
                    <div class="clearfix"></div>
                    <button type="submit" class="btn btn-block btn-primary">Login</button>
                    <hr>
                    <h4><a href="${pageContext.request.contextPath }/login/regist">Create an Account</a></h4>
                  </form>
                </div>
              </li>
              </c:if>
              <c:if test="${not empty user }">
	              <li class="dropdown">
	                <a class="dropdown-toggle" href="#" data-toggle="dropdown"> ${user.firstName }</a>
	                <div class="dropdown-menu">
	                <c:if test="${user.role == 1 }">
	                	<button onclick="location.href='${pageContext.request.contextPath}/mypage'" class="btn btn-block btn-second">My Info</button>
	                  <hr>
	                  <button onclick="location.href='${pageContext.request.contextPath}/mypage/mycourse'" class="btn btn-block btn-second">My Course</button>
	                  <hr>
	                  <button onclick="location.href='${pageContext.request.contextPath}/mypage/myinterest'" class="btn btn-block btn-second">Interest
	                    Information</button>
	                  <hr>
	                  <button onclick="location.href='${pageContext.request.contextPath}/mypage/mypayment'" class="btn btn-block btn-second">Payment
	                    list</button>
	                  <hr>
	                  <button onclick="location.href='${pageContext.request.contextPath}/mypage/editinfo'" class="btn btn-block btn-second">Edit Personal
	                    Info</button>
	                  <hr>
	                  <button onclick="location.href='${pageContext.request.contextPath }/login/logout'" class="btn btn-block btn-second">Logout</button>
	                  <hr>
	                </c:if>
	                  <c:if test="${user.role == 2}">
	                  	<button onclick="location.href='${pageContext.request.contextPath}/teacher-area'" class="btn btn-block btn-second">My Info</button>
		                  <hr>
		                  <button onclick="location.href='${pageContext.request.contextPath}/teacher-area'" class="btn btn-block btn-second">My Course</button>
		                  <hr>
		                  <button onclick="location.href='${pageContext.request.contextPath}/teacher-area'" class="btn btn-block btn-second">My Book</button>
		                  <hr>
		                  <button onclick="location.href='${pageContext.request.contextPath}/teacher-are'" class="btn btn-block btn-second">Edit Personal Info</button>
		                  <hr>
		                  <button onclick="location.href='${pageContext.request.contextPath }/login/logout'" class="btn btn-block btn-second">Logout</button>
		                  <hr>
	                  </c:if>
                </div>
              </li>
              </c:if>
            </ul>
          </div>
        </div>
      </div>
    </div>
<!-- End Top Area -->    
    
<!-- Header -->

	<c:if test="${empty user || user.role == 1 }">
		<header class="header">
      <div class="container">
        <div class="hovermenu ttmenu">
          <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
              </button>
              <div class="logo">
                <a class="navbar-brand" href="${pageContext.request.contextPath }"><img src="${pageContext.request.contextPath }/resources/main/images/xlogo.png.pagespeed.ic.vap6Ukaf0i.png"
                    alt=""></a>
              </div>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath }/course/pageid=1"><b>Course</b></a></li>

                <li><a href="${pageContext.request.contextPath }/book">Book</a></li>

                <li><a href="${pageContext.request.contextPath }/instructor">Instructor</a></li>
                <li><a href="${pageContext.request.contextPath }/job/pageid/1">Jobs</a></li>
                <li><a href="${pageContext.request.contextPath }/contact">Contact</a></li>

				<c:if test="${not empty user }">
					<li class="dropdown ttmenu-half"><a href="#" data-toggle="dropdown" class="dropdown-toggle"><%=user.getFirstName() %>
                    <b class="fa fa-angle-down"></b></a>
                  <ul class="dropdown-menu">
                    <li>
                      <div class="ttmenu-content">
                        <div class="row">
                          <div class="col-md-6">
                            <div class="box">
                              <ul>
                                <li><a href="${pageContext.request.contextPath }/mypage">My Info</a></li>
                                <li><a href="${pageContext.request.contextPath }/mypage/mycourse">My Course</a></li>
                                <li><a href="${pageContext.request.contextPath }/mypage/myinterest">Interest Information</a></li>
                              </ul>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="box">
                              <ul>
                                <li><a href="${pageContext.request.contextPath }/mypage/mypayment">Payment List</a></li>
                                <li><a href="${pageContext.request.contextPath }/mypage/editinfo">Edit Personal Information</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-md-3 nopadding">
                            <img class="img-thumbnail" src="${pageContext.request.contextPath }/resources/upload/xservice_01.png.pagespeed.ic.2iuJZT3CaV.png" alt="">
                          </div>
                          <div class="col-md-3 nopadding">
                            <img class="img-thumbnail" src="${pageContext.request.contextPath }/resources/upload/xservice_02.png.pagespeed.ic.c6RThoxSWC.png" alt="">
                          </div>
                          <div class="col-md-3 nopadding">
                            <img class="img-thumbnail" src="${pageContext.request.contextPath }/resources/upload/xservice_01.png.pagespeed.ic.2iuJZT3CaV.png" alt="">
                          </div>
                          <div class="col-md-3 nopadding">
                            <img class="img-thumbnail" src="${pageContext.request.contextPath }/resources/upload/xservice_02.png.pagespeed.ic.c6RThoxSWC.png" alt="">
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
				</c:if>
                
              </ul>

              <!-- Search -->
              <ul class="nav navbar-nav navbar-right">
                <div class="navbar-collapse collapse right">
                  <button class="btn btn-primary navbar-btn" type="button" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle Search</span>
                    <i class="fa fa-search"></i>Search
                  </button>
                </div>
                <div class="collapse clearfix" id="search">
                  <form method="get" action="${pageContext.request.contextPath }/search" class="navbar-form">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Enter search here" name="searchtext"
                        required>
                      <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary">
                          <i class="fa fa-search"></i>
                        </button>
                      </span>
                    </div>
                  </form>
                </div>
              </ul>
              <!-- End Search -->

            </div>
          </div>
        </div>
      </div>
    </header>
	</c:if>

<!-- End Header -->