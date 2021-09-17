<div id="course-left-sidebar" class="col-md-3">
	<div class="course-meta">
		<div class="course-button">
			<form id="form" action="<c:url value='/course/join/lessons'/>" method="get"> 								
				<input type="hidden" name="id" value="${join.id}"/>
				<input type="hidden" name="courseId" value="${join.courseId}"/>			
				<input type="submit" value="Lessons" onclick="myFunction()" class="btn btn-primary btn-block ${btlessons}"/>
			</form>			
		</div>
		<hr>
		<div class="course-button">
			<form id="form" action="<c:url value='/course/join/notices'/>" method="get"> 								
				<input type="hidden" name="id" value="${join.id}"/>
				<input type="hidden" name="courseId" value="${join.courseId}"/>	
				<input type="submit" value="Notices" class="btn btn-primary btn-block ${btNotices}"/>						
			</form>
		</div>
		<hr>
		<div class="course-button">
			<form id="form" action="<c:url value='/course/join/references'/>" method="get"> 								
				<input type="hidden" name="id" value="${join.id}"/>
				<input type="hidden" name="courseId" value="${join.courseId}"/>	
				<input type="submit" value="References" class="btn btn-primary btn-block ${btreferences}"/>						
			</form>	
		</div>
		<hr>
		<div class="course-button">
			<form id="form" action="<c:url value='/course/join/discuss'/>" method="get"> 								
				<input type="hidden" name="id" value="${join.id}"/>
				<input type="hidden" name="courseId" value="${join.courseId}"/>	
				<input type="submit" value="Discuss" class="btn btn-primary btn-block ${btdiscuss}"/>						
			</form>
		</div>
		<hr>
		<div class="course-button">
			<form id="form" action="<c:url value='/course/join/reviews'/>" method="get"> 								
				<input type="hidden" name="id" value="${join.id}"/>
				<input type="hidden" name="courseId" value="${join.courseId}"/>	
				<input type="submit" value="Reviews" class="btn btn-primary btn-block ${btreviews}"/>						
			</form>
		</div>
	</div>
</div>