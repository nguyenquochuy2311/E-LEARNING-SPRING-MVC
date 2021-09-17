<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.coeding.spring.vo.Teacher" %>
<%@ page import="com.coeding.spring.vo.Course" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
	<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
	</head>
	
	<style>
		.thumb-list {
		    margin: 0 -13px;
		}
		.thumb-list ul, ol {
		    list-style: none;
		    padding: 0;
		    margin: 0;
		    list-style-image: none;
		}
		.thumb-list ul {
		    display: block;
		    list-style-type: disc;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding-inline-start: 40px;
		}
	</style>

<body>

    <!-- Loader -->
    <div id="loader">
        <div class="loader-container">
            <img src="${pageContext.request.contextPath}/resources/main/images/site.gif" alt="" class="loader-site">
        </div>
    </div>
    <!-- End Loader -->

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
                        <h1>Instructor</h1>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                                <li><a href="${pageContext.request.contextPath}/">Instructor</a></li>
                                <li class="active">Instructor</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Top Course By Cat -->

        <!-- List Course By Category -->
        <section class="white section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title text-center">
							<h4>Welcome to Instructor</h4>
							<p>Let me introduce the teacher who will be in charge of studying to you!</p>
						</div>
					</div>	
	                <div id="filters" class="filters-dropdown">
	                    <ul class="option-set" data-option-key="filter">
	                        <li>
	                        	<a href="${pageContext.request.contextPath}/instructor" class="selected" data-option-value="*">
			                        <i class="fa fa-filter"></i> All Instructor
		                        </a>
	                        </li>
	                        <li><a href="#filter" data-option-value=".cat1">English</a></li>
	                        <li><a href="#filter" data-option-value=".cat2">Korean</a></li>
	                        <li><a href="#filter" data-option-value=".cat3">Vietnamese</a></li>
	                    </ul>
	                </div>
	                <div class="row course-list shop-listing">
	                <div class="thumb-list style03 teacher brd">
		                <c:forEach var="teacher" items="${teacherList}">  
	                        <div class="col-md-3 col-sm-6 col-xs-12">
	                            <div class="shop-item-list entry">
	                                <div class="">
	                                    <img src="${pageContext.request.contextPath}/resources/upload/images/instructor/${teacher.image}" alt="${teacher.firstName}">
	                                    <div class="magnifier">
	                                    </div>
	                                </div>
	                                <div class="shop-item-title clearfix">
	                                    <h4><a href="${pageContext.request.contextPath}/instructor/detail?id=${teacher.id}">${teacher.lastName} ${teacher.firstName}</a></h4>
	                                    <p>Expert of iEnglish</p>
	                                    <div class="shopmeta">
	                                        <span class="pull-left">Vote</span>
	                                        <div class="rating pull-right">
	                                            <i class="fa fa-star"></i>
	                                            <i class="fa fa-star"></i>
	                                            <i class="fa fa-star"></i>
	                                            <i class="fa fa-star"></i>
	                                            <i class="fa fa-star"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="shop-button clearfix">
	                                    <a href="${pageContext.request.contextPath}/instructor/detail?id=${teacher.id}" class="btn btn-primary btn-block">Read more</a>
	                                </div>
	                            </div>
	                        </div>
						</c:forEach> </div>   
					</div>   
				</div>
			</div>
        </section>
        <!-- End List Course By Category -->

        <!-- Popular Course -->
        <%@ include file="/WEB-INF/views/main/common/popularCourses2.jsp" %>
        <!-- End Popular Course -->

        <!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->
		
		<!-- Copyright -->
		<%@ include file="/WEB-INF/views/main/common/copyright.jsp" %>
		<!-- End Copyright -->
			
    </div>
    <!-- End All Page -->

    <!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
	<!-- End Script -->
	
  </body>
    <script type="text/javascript">(
            function ($) {
                "use strict";
                $(window).load(function () {
                    $('.portfolio').isotope({
                        itemSelector: '.item', layoutMode: 'fitRows'
                    });
                    $('#filters a.selected').trigger("click");
                });

                $('#filters a').click(function (e) {
                    e.preventDefault();
                    var selector = $(this).attr('data-option-value');

                    $('.portfolio').isotope({ filter: selector });

                    $(this).parents('ul').find('a').removeClass('selected');

                    $(this).addClass('selected');
                });

                jQuery(document).ready(function ($) {

                    $(window).resize();

                    $Filter.find('a').click(function () {

                        $Filter.find('ul li').not($(this)).removeClass('active'); $(this).parent('li').addClass('active');
                    });
                });
            })(jQuery);
    </script>
</body>

</html>