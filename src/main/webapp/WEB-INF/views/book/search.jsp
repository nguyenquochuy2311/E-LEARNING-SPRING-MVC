<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.coeding.spring.vo.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
		<meta name="author" content="KhaiPhan">
	</head>
	
	<body>

		<!-- All Page -->
		<div id="wrapper">
	
			<!-- Header -->
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
			<!-- End Header -->
			
			<!-- Top Course By Cat -->
	        <section class="grey page-title">
	            <div class="container">
	                <div class="row">
	                   	<div class="col-md-6 text-left">
	                        <h1>Search</h1>
	                    </div>
	                    <div class="col-md-6 text-right">
	                        <div class="bread">
	                            <ol class="breadcrumb">
	                                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
	                                <li class="active"></li>
	                            </ol>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </section>
	        <!-- End Top Course By Cat -->
	        
		    <section class="white section">
			    <!-- Search Book -->
			    <form action="book/search" method="get" style="text-align: right">
			        <input type="text" name="keyword"/> &nbsp;
			    	<input type="submit" value="Search" />
			    </form>
		      	<div class="container">
					<div class="row course-list shop-listing">
						<c:forEach var="book" items="${result}">
							<div class="row course-list teacher-list">
								<div class="col-md-3 col-sm-4 col-xs-12">
								    <div class="shop-item-list entry">
							        	<style>
									     	.load-image {				  
											  border-radius: 15px;
											}
							    		</style>
							    		<img class="load-image" href="${pageContext.request.contextPath}/book/detail?id=${book.id}" src="../resources/upload/images/books/${book.image}" alt="${book.title} ">
							           <div class="magnifier"></div>      			   
							    	</div>
								</div>
								<div class="col-md-6 col-md-6">
									<div class="shop-list-desc">
									    <h4><a href="${pageContext.request.contextPath}/book/detail?id=${book.id}">${book.title}</a></h4>
										<div class="shopmeta">
										    <span class="pull-left"><strong>Teacher :</strong>${book.title}</span>
										    <div class="rating pull-right">
										        <i class="fa fa-star"></i>
										        <i class="fa fa-star"></i>
										        <i class="fa fa-star"></i>
										        <i class="fa fa-star"></i>
										        <i class="fa fa-star"></i>
										    </div>
										</div>
										<hr class="invis clearfix">
										<p>${book.des}${book.des}${book.des}${book.des}</p>
									</div>
								</div>
								<div class="col-md-3 text-right">
						     		<a href="${pageContext.request.contextPath}/book/detail?id=${book.id}" class="btn btn-default">Read more</a>
								</div>
							</div>    
						</c:forEach>	
					</div>
				</div>
				
		    </section>
		    
		    <!-- Footer -->
			<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
			<!-- End Footer -->
			
			<!-- Copyright -->
			<%@ include file="/WEB-INF/views/main/common/copyright.jsp" %>
			<!-- End Copyright -->

		</div>
	
	    <!-- Script -->
		<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
		<!-- End Script -->
		
 	</body>
	
</html>