<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="course-left-sidebar" class="col-md-4">
	<div class="course-image-widget">
		<c:if test="${not empty teacher }">
			<img
			src="<c:url value='/resources/upload/images/instructor/${teacher.image}'/>"
			alt="" class="img-responsive">
		</c:if>
	</div>
	<div class="course-meta">
		<div class="course-button">
			<a href="${pageContext.request.contextPath}/teacher-area" class="btn btn-primary btn-block ${btmyinfo}">My Info</a>
		</div>
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath }/teacher-area/mycourse" class="btn btn-primary btn-block ${btmycourse}">My Course</a>
		</div> 
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath }/teacher-area/mybook" class="btn btn-primary btn-block ${btmybook}">My Book</a>
		</div>
		<hr>
		<div class="course-button">
			<a href="${pageContext.request.contextPath }/teacher-area/editinfo" class="btn btn-primary btn-block ${bteditinfo}">Edit Personal Information</a>
		</div>
	</div>
	<%-- <% if(request.getParameter("id")!=null) { %> --%>
	<c:if test="${not empty id }">
		<br>
	<div class="row">
		<div class="content-widget">
			<div class="accordion-widget">
				<div class="accordion-toggle-2">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour">
										<h3>List Student <b>(${student.size() })</b> <i class="indicator fa fa-plus"></i></h3>
									</a>
								</div>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">
									<table id="example3" class="display" style="width: 100%; border-collapse: collapse;">
										<tr>
											<th>Full Name</th>
											<th>Email</th>
										</tr>
									<c:forEach var="student" items="${student }" varStatus="loop">
										<tr>
											<td>${student.firstName } ${student.lastName }</td>
											<td>${student.email }</td>
											<td>
												<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#exampleModalCenter${loop.count}">
  													Detail
												</button>
												<br>
												<!-- Modal -->
												<div class="modal fade" id="exampleModalCenter${loop.count}" tabindex="-2" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												  <div class="modal-dialog modal-dialog-centered" role="document">
												    <div class="modal-content">
												      <div class="modal-header">
												        <br><h1 class="modal-title" id="exampleModalLongTitle">Student information</h1>
												      </div>
			
												      <div class="modal-body">
												        <div class="well" style="text-align:left;color:black;">
															<h4>Full name: &nbsp;&nbsp;&nbsp;<b> ${student.firstName } ${student.lastName }</b></h4> 
															<h4>Email: &nbsp;&nbsp;&nbsp;<b> ${student.email }</b></h4>
															<h4>Phone number: &nbsp;&nbsp;&nbsp;<b> ${student.phoneNumber }</b></h4> 
															<img  src="${pageContext.request.contextPath }/resources/upload/images/students/${student.image}" style="width:150px;height:180px;" class="img-responsive"/>
												         </div>	
												      </div>
												      <div class="modal-footer">
												        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
												      </div>
												    </div>
												  </div>
			                					</div>
											</td>
										</tr>
									</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFive">
										<h3>Notice <i class="indicator fa fa-plus"></i></h3>
									</a>
								</div>
							</div>
							<div id="collapseFive" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="media">
										<div class="couponform">
											<a class="btn btn-default" role="button" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
												New Notice
											</a>
										</div>
										<div class="collapse" id="collapseExample1">
											<form method="post" action="${pageContext.request.contextPath }/teacher-area/mycourse/savenotice">
												<input type="text" class="form-control" name="title" placeholder="Title"><br>
												<input type="text" class="form-control" name="content" placeholder="Content"><br>
												<input type="hidden" class="form-control" name="courseId" value="${id}">
												<button class="btn btn-primary pull-right">Post</button>
											</form><br>
										</div>
										<br>
										<table style="width: 100%; border-collapse: collapse;">
											<c:forEach var="notice" items="${course.notice }">
												<tr>
													<td colspan="2" style="text-align:right"><small><span>${notice.createDate }</span></small></td>
												</tr>
												<tr>
													<th style="border-bottom: 1px solid #ddd;">${notice.title }</th>
													<td style="border-bottom: 1px solid #ddd;">${notice.content }</td>
												</tr>
											</c:forEach>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseSix">
										<h3>Reference <i class="indicator fa fa-plus"></i></h3>
									</a>
								</div>
							</div>
							<div id="collapseSix" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="media">
										<div class="couponform">
											<a class="btn btn-default" role="button" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
												New Reference
											</a>
										</div>
										<div class="collapse" id="collapseExample2">
											<form method="post" action="${pageContext.request.contextPath }/teacher-area/mycourse/saveref" enctype="multipart/form-data">
												<input type="text" class="form-control" name="title" placeholder="Title"><br>
												<label>Upload Reference</label> 
												<input type="hidden" name="file" value="${ref.file}">
												<input style="width:50%;" type="file" class="btn btn-primary" name="uploadfile">
												<input type="hidden" class="form-control" name="courseId" value="<%=Integer.parseInt(request.getParameter("id").toString()) %>">
												<button class="btn btn-primary pull-right">Post</button>
											</form><br>
										</div>
										<br>
										<table style="width: 100%; border-collapse: collapse;">
											<c:forEach var="ref" items="${course.reference }">
												<tr>
													<td colspan="2" style="text-align:right"><small><span>${ref.createDate }</span></small></td>
												</tr>
												<tr>
													<th style="border-bottom: 1px solid #ddd;">${ref.title }</th>
													<td style="border-bottom: 1px solid #ddd;"><a href="${pageContext.request.contextPath }/resources/upload/images/courses/${ref.file}" target="_blank">${ref.file }</a></td>
												</tr>
											</c:forEach>
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
	<div class="coupon-code-wrapper">
		<p>
			<button class="btn btn-default btn-block" data-toggle="modal" data-target="#exampleModalCenterA">
				Update course
			</button>
		</p>
		<div class="modal fade" id="exampleModalCenterA" tabindex="-2" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <br><h1 class="modal-title" id="exampleModalLongTitle">Update Course</h1>
		      </div>
	
		      <div class="modal-body">
		        <div class="well" style="text-align:left;color:black;">
					<form role="form" action="${pageContext.request.contextPath }/teacher-area/savecourse" method="post" enctype="multipart/form-data">
						<input type="hidden" name="id" value="${course.id}">
						<div class="form-group">
							<label>Title</label> <input type="text" name="title" value="${course.title}"
								class="form-control" placeholder="Title" required>
						</div>
						<div class="form-group">
							<label>Price</label> <input type="number" name="price" value="${course.price}"
								class="form-control" placeholder="Price" required>
						</div>
						<div class="form-group">
							<label>Create date</label> <input type="text" name="createDate" value="${course.createDate}"
								class="form-control" disabled>
						</div>
						<div class="form-group">
							<label>About Your Self</label>
							<textarea type="text" class="form-control"
								placeholder="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.."></textarea>
						</div>
						<div class="form-group">
							<label>Upload Avatar</label> 
							<input type="file" name="uploadfile" id="file_upload" accept="image/*" onchange="previewImage();" class="btn btn-primary">
							<input type="hidden" name="image" value="${course.image}">
		                            		<img src="${pageContext.request.contextPath }/resources/upload/${course.image}" id="preview" style="width:400px;height:280px;">
						</div>
		      			<div class="modal-footer">
					        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					        <input type="submit" class="btn btn-default" value="Submit Changes" />
					      </div>
					</form>
		         </div>	
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	</c:if>
	
	<%-- <% }else if(request.getAttribute("javax.servlet.forward.request_uri").toString().contains("mybook")==true){ %> --%>
	<c:if test="${not empty book}">
		<hr class="invis">
	<div class="coupon-code-wrapper">
		<p>
			<a class="btn btn-default btn-block" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
				Have a new book? Click to enter here
			</a>
		</p>
		<div class="collapse" id="collapseExample">
			<div class="well">
				<div class="media">
					<div class="couponform">
						<form method="post" action="${pageContext.request.contextPath }/teacher-area/mybook/addbook" enctype="multipart/form-data">
							<input type="text" class="form-control" name="title" placeholder="Title" required>
							<input type="text" class="form-control" name="des" placeholder="Description" required>
							<input type="number" class="form-control" min="0" name="price" placeholder="Price" required>
							<label>Course</label><br>
							<c:forEach var="course" items="${course_select }">
								<input type="radio" name="courseId" value="${course.id }">${course.title }
							</c:forEach>
							<br><label>Upload Image of Book</label> 
							<input type="file" name="uploadfile" id="file_upload" accept="image/*" onchange="previewImage();" class="btn btn-primary">
							<img id="preview" style="width:400px;height:280px;">											
							<button class="btn btn-primary">Request a new book</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:if>

</div>


	<!-- Datatable -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/plugins-init/datatables.init.js"></script>



	



