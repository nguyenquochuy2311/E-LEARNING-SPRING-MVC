<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>

<style type="text/css">
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
                                <li class="active">Payment List</li>
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
					<c:set var="btmycert" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/mypage/sidebar.jsp" %>
					<!-- End Sidebar -->
					
                    <div id="course-content" class="col-md-8">
                        <div class="content-widget">
                            <div class="tabbed-widget">
                                <div class="tab-content">
                                    <div id="home" class="tab-pane fade in active">
                                        <div class="row course-list shop-listing">

                                            <div class="blog-desc">
                                                <div class="shop-cart">
                                                    <table class="table table-bordered">
														<thead>
															<tr>
																<th>No</th>
																<th>Title</th>
																<th>Teacher</th>
																<th>Finish Date</th>
															</tr>
														</thead>
														<tbody>									
															<c:forEach var="cert" items="${list}" varStatus="loop">
																<tr>
																	<td>${loop.count}</td>
																	<td><h5 id="popup" style="cursor: pointer;">${cert.course.title}</h5></td>
																	<td>${cert.teacher.lastName} ${cert.teacher.firstName}</td>
																	<td>${cert.finishDate}</td>
																</tr>															
															</c:forEach>
														</tbody>
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
            </div>
            
            <c:forEach var="cert" items="${list}" varStatus="loop">
	            <div id="myModal" class="modal">
				  <span class="close">&times;</span>
				  <img class="modal-content" id="imageCert" src="<c:url value='/resources/upload/images/certificates/${cert.title }'/>">
		  			<div id="caption">CERTIFICATE</div>
				</div>
            </c:forEach>
        </section>
        <!-- End Sidebar + Content -->
		
		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->

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