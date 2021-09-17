<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Recommend Jobs -->
<section class="section darkskin fullscreen paralbackground parallax"
	style="background-image:url(${pageContext.request.contextPath }/resources/upload/xparallax_01.jpg.pagespeed.ic.JPVsQrTu6o.jpg)"
	data-img-width="1627" data-img-height="868" data-diff="100">
	<div class="overlay"></div>
	<div class="container">


		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h4>Recommend Jobs For You</h4>
				</div>
			</div>
		</div>


		<div id="owl-featured-2" class="owl-custom">
			<c:forEach var="jobInter" items="${listInterest}">
				<c:forEach var="business" items="${jobInter.businessId }">
					<div class="owl-featured">

						<div class="shop-item-list entry">
							<div class="">
								<img
									src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}"
									alt="">
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="/e-learning/job/view?id=${jobInter.id}">${jobInter.name}</a>
								</h4>
								<div class="shopmeta">
									<p style="font-size: 16px; color: black; font-weight: bold;">${jobInter.createDate }
										| ${jobInter.expiryDate}</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:forEach>




		</div>
	</div>
</section>
<!-- End Recommend Jobs -->