<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from edumin.dexignlab.com/xhtml/about-student.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Jul 2021 06:49:41 GMT -->
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Edumin - Bootstrap Admin Dashboard </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/resources/admin/images/favicon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/css/style.css">
	

</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">
		<jsp:include page="../adminhai/commons/header.jsp" />
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <!-- row -->
            <div class="container-fluid">
				    
                <div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                        <div class="welcome-text">
                            <h4>About Business</h4>
                        </div>
                    </div>
                </div>
				
				<div class="row">
					<div class="col-xl-3 col-xxl-4 col-lg-4">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="text-center p-3 overlay-box" style="background-image: url(${pageContext.request.contextPath }/resources/admin/images/big/img1.jpg);">
										<div class="profile-photo">
											<img src="${pageContext.request.contextPath }/resources/upload/logocompany/${business.image}" width="100" class="img-fluid rounded-circle" alt="">
										</div>
										<h3 class="mt-3 mb-1 text-white">${business.name}</h3>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item d-flex justify-content-between"><span class="mb-0">ID</span> <strong class="text-muted">${business.id}</strong></li>
										<li class="list-group-item d-flex justify-content-between"><span class="mb-0">Country</span> <strong class="text-muted">${business.country }</strong></li>
										<li class="list-group-item d-flex justify-content-between"><span class="mb-0">Date Create</span> <strong class="text-muted">${business.createDate }</strong></li>
									</ul>
			
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title">Info</h2>
									</div>
									<div class="card-body pb-0">
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
										<ul class="list-group list-group-flush">
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Email</strong>
												<span class="mb-0">${business.email }</span>
											</li>
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Phone</strong>
												<span class="mb-0">${business.phoneNumber }</span>
											</li>
										</ul>
									</div>
									<div class="card-footer pt-0 pb-0 text-center">
										<div class="row">
											<div class="col-4 pt-3 pb-3 border-right">
												<h3 class="mb-1 text-primary">${countJob }</h3>
												<span>Jobs</span>
											</div>
											<div class="col-4 pt-3 pb-3 border-right">
												<h3 class="mb-1 text-primary">${validation }</h3>
												<span>On-going</span>
											</div>
											<div class="col-4 pt-3 pb-3">
												<h3 class="mb-1 text-primary">${expiration }</h3>
												<span>Expiration</span>
											</div>
										</div>
									</div>
								</div>
							</div>                   
						</div>
					</div>


					<div class="col-xl-9 col-xxl-8 col-lg-8">
						<div class="card">
                            <div class="card-body">
                                <div class="profile-tab">
                                    <div class="custom-tab-1">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item"><h3 class="text-primary mb-4">Details Information</h3></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div id="about-me" class="tab-pane fade active show">
                                                <div class="profile-personal-info pt-4">
                                                    <h4 class="text-primary mb-4">Personal Information</h4>
                                                    <div class="row mb-4">
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                                            <h5 class="f-w-500">Name <span class="pull-right">:</span>
                                                            </h5>
                                                        </div>
                                                        <div class="col-lg-9 col-md-8 col-sm-6 col-6"><span>${business.name}</span>
                                                        </div>
                                                    </div>
                                                    
													
                                                    <div class="row mb-4">
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                                            <h5 class="f-w-500">Location <span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-lg-9 col-md-8 col-sm-6 col-6"><span>${business.address }</span>
                                                        </div>
                                                    </div>
                                                </div>									   
												<div class="profile-about-me">
                                                    <h4 class="text-primary mb-4">Description</h4>
                                                    <div class="border-bottom-1 pb-4">
                                                        <p>${business.des }</p>                                                      
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
				
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">              
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->

		<!--**********************************
           Support ticket button start
        ***********************************-->

        <!--**********************************
           Support ticket button end
        ***********************************-->


    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
	<jsp:include page="../adminhai/commons/linkfooter.jsp" />
	<script>
		const swiper = new Swiper('.swiper-container', {
			// Optional parameters

			loop : true,

			// If we need pagination
			pagination : {
				el : '.swiper-pagination',
			},

			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// And if we need scrollbar
			scrollbar : {
				el : '.swiper-scrollbar',
			},
		});
	</script>
    
	
</body>

<!-- Mirrored from edumin.dexignlab.com/xhtml/about-student.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Jul 2021 06:49:41 GMT -->
</html>