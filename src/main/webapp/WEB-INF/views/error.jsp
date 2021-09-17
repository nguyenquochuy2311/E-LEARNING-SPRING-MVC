<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>   
<%@ page import="com.coeding.spring.vo.User" %>
<!DOCTYPE html>

<head>

	<meta name="description" content="Page Error">
  	<meta name="author" content="Quoc Huy">
  	<meta name="keywords" content="">

	<title>LearnPLUS</title>

	<%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>

<body>

  <!-- All Page -->
  <div id="wrapper">

    <!-- Page Not Found -->
    <section class="grey section">
		<div class="container">
			<div class="row">
				<div id="content" class="col-md-12 col-sm-12 col-xs-12">
					<div class="blog-wrapper">
						<div class="row second-bread">
							<div class="col-md-6 text-left">
								<h1>Page Not Found</h1>
							</div>
							<div class="col-md-6 text-right">
								<div class="bread">
									<ol class="breadcrumb">
										<li><a href="#">Home</a></li>
										<li class="active">ERROR</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<div class="blog-wrapper">
						<div class="blog-desc notfound text-center">
							<h3>Error</h3>
							<p class="lead">The page you are looking for no longer exists. Perhaps you can return<br> back to the site's homepage and see if you can find what you are looking for. Or, you can try finding<br> it with the information below.</p>
							<% if(request.getSession().getAttribute("user")!=null) { 
									User user1 = (User) request.getSession().getAttribute("user");
									if(user1.getRole()==1){
								%>
										<a href="${pageContext.request.contextPath }" class="btn btn-default">Back to homepage</a>
										<hr class="invis">
									<% 
									}else if(user1.getRole()==2){   
								%>
										<a href="${pageContext.request.contextPath }/teacher-area" class="btn btn-default">Back to homepage</a>
										<hr class="invis">
									<%
									}else if(user1.getRole()==3){
								%>
										<a href="${pageContext.request.contextPath }/business-account" class="btn btn-default">Back to homepage</a>
										<hr class="invis">
									<%		
									}
							}else if(request.getAttribute("javax.servlet.forward.request_uri").toString().contains("admin")==true){
								%>
										<a href="${pageContext.request.contextPath }/admin/index" class="btn btn-default">Back to homepage</a>
										<hr class="invis">									
									<%
							}else{
								%>
										<a href="${pageContext.request.contextPath }" class="btn btn-default">Back to homepage</a>
										<hr class="invis">
										
								<% } %>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <!-- End Page Not Found -->
    
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!-- End Footer -->
    
  </div>
  <!-- End All Page -->

	<!-- Javascript  -->
  <%@include file ="/WEB-INF/views/common/script.jsp" %>
	<!-- End Javascript  -->
</body>

</html>