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
.modal {
  display: none; /* Hidden by default */
  position: absolute; /* Stay in place */
  z-index: 10; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0);
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: gray;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
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

		<!-- Top Area -->
		<%@ include file="/WEB-INF/views/main/common/top-area.jsp" %>
		<!-- End Top Area -->

		<!-- Header -->
		<%@ include file="/WEB-INF/views/main/common/header.jsp" %>
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
								<li><a href="<c:url value='/mypage/info'/>">Home</a></li>								
								<li><a href="<c:url value='/mypage/mycourse'/>">Course</a></li>
								<li class="active">Lessons</li>
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
					<c:set var="btlessons" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/join/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-9">
                        <div class="course-description">
                            <small>Course Status: <span>In Progress</span> </small>                            
                            <h3 class="course-title">${course.title }</h3>
                            <p>${course.des }</p>                          
                        </div>
                        <div class="course-table">
	                        <div class="row">
	                        	<h4 class="col-md-9">Course Lessons (${list.size()} lessons)</h4>
	                        	<c:if test="${sumProcess == 100 }">
	                        		<c:choose>
	                        			<c:when test="${empty certificate}">
	                        				<h4><a href=" <c:url value='/course/join/complete?id=${join.id}&courseId=${join.courseId }'/> " 
	                        				onclick="return confirm('COMPLETE?');" class="btn btn-default" role="button" class="col-md-3">Complete</a></h4> 
	                        			</c:when>
	                        			<c:otherwise>
	                        				<h4 id="popup" style="cursor: pointer;" class="btn btn-default">Certificate</h4> 
	                        			</c:otherwise>
	                        		</c:choose>	                        	                        		
	                        	</c:if>	
	                        </div>                         
                            <div class="progress">
                                <div class="progress-bar" style="width:${sumProcess }%">${sumProcess }%</div>
                            </div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Type</th>
                                        <th>Lesson Title</th>
                                        <th>Time</th>
                                        <th>Progress</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="lesson" items="${list }">
                                		<c:choose>
                                        	<c:when test="${lesson.progress.progress > 0 }">
                                        		<c:set var="progress" value="${lesson.progress.progress }"/>  
                                        	</c:when>
                                        	<c:otherwise>
                                        		<c:set var="progress" value="${'0' }"/>  
                                        	</c:otherwise>
	                                    </c:choose>                             		
                                		<tr>
	                                        <td><i class="fa fa-play-circle"></i></td>	                                        
	                                        <td> 
	                                        <form action="<c:url value='/course/join/setLesson'/>" method="get"> 								
    											<input type="hidden" name="id" value="${join.id}"/>
    											<input type="hidden" name="courseId" value="${join.courseId}"/>
    											<input type="hidden" name="title" value=${lesson.title } />
    											<input type="text" style="display:none" name="des" value=${lesson.des }>
    											<input type="hidden" name="lessonId" value="${lesson.id}"/>
    											<input type="hidden" name="video" value="${lesson.video }"/>
    											<input type="hidden" name="progress" value="${progress }"/>   																																
    											<input type="submit" value="${lesson.title}" class="link"/>
											</form>
	                                        </td>                                      
	                                        <td>${lesson.lengths }</td>	                                        
	                                        <c:choose>
	                                        	<c:when test="${lesson.progress.progress > 0 }">
	                                        		<td>${lesson.progress.progress }%</td>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<td>0%</td>
	                                        	</c:otherwise>
	                                        </c:choose>
	                                        <td>${lesson.progress.lastDate}</td>
	                                        <c:choose>
	                                        	<c:when test="${lesson.progress.status == 1 }">
	                                        		<td><i class="fa fa-check"></i></td>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<td><i class="fa fa-close"></i></td>
	                                        	</c:otherwise>
	                                        </c:choose>                                       
                                    	</tr>
                                	</c:forEach>                                                                                
                                </tbody>
                            </table>
                        </div>
                        <hr class="invis">                                            
                   </div>
					
				</div>
			</div>
			
			<div id="myModal" class="modal">
			  <span class="close">&times;</span>
			  <img class="modal-content" id="imageCert" src="<c:url value='/resources/upload/images/certificates/${certificate.title }'/>">
	  			<div id="caption">CERTIFICATE</div>
			</div>
		</section>
		<!-- End Sidebar + Content -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<!-- Script -->
	<script type="text/javascript">
		var modal = document.getElementById("myModal");
		var popupCert = document.getElementById("popup");
		var modalImg = document.getElementById("imageCert");
		var captionText = document.getElementById("caption");
		popupCert.onclick = function(){
		  modal.style.display = "block";
		}
		var span = document.getElementsByClassName("close")[0];
		span.onclick = function() { 
		  modal.style.display = "none";
		}
	</script>
	<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
	<!-- End Script -->
</body>
</html>