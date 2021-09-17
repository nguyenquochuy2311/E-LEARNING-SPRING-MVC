<div id="course-left-sidebar" class="col-md-4">
	<div class="course-image-widget">
		<img
			src="<c:url value='/resources/upload/images/students/${student.image}'/>"
			alt="" class="img-responsive">
	</div>
	<div class="course-meta">
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/mypage/info" class="btn btn-primary btn-block ${btmyinfo}">My Info</a>
		</div>
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/mypage/mycourse" class="btn btn-primary btn-block ${btmycourse}">My Course</a>
		</div> 
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/mypage/myinterest" class="btn btn-primary btn-block ${btmyinterest}">Interest Information</a>
		</div>
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/mypage/mycert" class="btn btn-primary btn-block ${btmycert}">Certificate</a>
		</div>
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/mypage/mypayment" class="btn btn-primary btn-block ${btmypayment}">Payment List</a>
		</div>
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/mypage/editinfo" class="btn btn-primary btn-block ${bteditinfo}">Edit Personal Information</a>
		</div>
	</div>
</div>