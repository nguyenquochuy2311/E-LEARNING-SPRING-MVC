<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="nav-header">
	<a href="${pageContext.request.contextPath}/admin/index"
		class="brand-logo"> <img class="logo-abbr"
		src="${pageContext.request.contextPath}/resources/admin/images/logo-white-3.png"
		alt=""> <img class="logo-compact"
		src="${pageContext.request.contextPath}/resources/admin/images/logo-text-white.png"
		alt="">

	</a>

	<div class="nav-control">
		<div class="hamburger">
			<span class="line"></span><span class="line"></span><span
				class="line"></span>
		</div>
	</div>
</div>

<!--**********************************
            Nav header end
        ***********************************-->

<!--**********************************
            Header start
        ***********************************-->
<div class="header">
	<div class="header-content">
		<nav class="navbar navbar-expand">
			<div class="collapse navbar-collapse justify-content-between">
				<div class="header-left">
					<div class="search_bar dropdown">
						<span class="search_icon p-3 c-pointer" data-toggle="dropdown">
							<i class="mdi mdi-magnify"></i>
						</span>

						<div class="dropdown-menu p-0 m-0">
							<form role="form" method="get" action="search">
								<input class="form-control" type="search" name="text"
									placeholder="Search" aria-label="Search">
							</form>
						</div>

					</div>
				</div>

				<ul class="navbar-nav header-right">
					<li class="nav-item dropdown notification_dropdown"><a
						class="nav-link bell ai-icon" href="#" role="button"
						data-toggle="dropdown"> <svg id="icon-user"
								xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-bell">
                                        <path
									d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                        <path
									d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                                    </svg>
							<div class="pulse-css"></div>
					</a>
						<div class="dropdown-menu dropdown-menu-right">
							<ul class="list-unstyled">
								<c:forEach items="${coursejoin}" var="item" varStatus="loop">
									<c:if test="${loop.index %2!=0 }">
										<c:set var="c" value="${ item}" />
									</c:if>
									<c:if test="${loop.index %2==0 }">
										<c:set var="t" value="${ item}" />
									</c:if>

									<c:if test="${loop.index %2!=0 }">
										<li class="media dropdown-item"><span class="success"><i
												class="ti-user"></i></span>
											<div class="media-body">
												<a href="#">
													<p>
														<strong> ${t} -</strong> ${c} <strong> </strong>

													</p>
												</a>
											</div> <span class="notify-time"></span></li>
									</c:if>
								</c:forEach>



							</ul>
							<a class="all-notification" href="#">See all notifications <i
								class="ti-arrow-right"></i>
							</a>
						</div></li>
					<li class="nav-item dropdown header-profile"><a
						class="nav-link" href="#" role="button" data-toggle="dropdown">
							<img
							src="${pageContext.request.contextPath}/resources/admin/images/avatar/${admin.image}"
							width="20" alt="" />
					</a>
						<div class="dropdown-menu dropdown-menu-right">
							<a href="${pageContext.request.contextPath}/admin/profile"
								class="dropdown-item ai-icon"> <svg id="icon-user1"
									xmlns="http://www.w3.org/2000/svg" width="18" height="18"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-user">
                                            <path
										d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg> <span class="ml-2">Profile
							</span>
							</a><a href="${pageContext.request.contextPath}/admin/logout"
								class="dropdown-item ai-icon"> <svg id="icon-logout"
									xmlns="http://www.w3.org/2000/svg" width="18" height="18"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-log-out">
                                            <path
										d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                            <polyline
										points="16 17 21 12 16 7"></polyline>
                                            <line x1="21" y1="12" x2="9"
										y2="12"></line>
                                        </svg> <span class="ml-2">
									Logout </span>
							</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>
</div>
<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

<div class="dlabnav">
	<div class="dlabnav-scroll">
		<ul class="metismenu" id="menu">
			<li class="nav-label first">Main Menu</li>
			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"> <i class="fa fa-home" aria-hidden="true"></i> <span
					class="nav-text">Dashboard</span>
			</a>
				<ul aria-expanded="false">
					<li><a href="${pageContext.request.contextPath}/admin/index">Dashboard</a></li>

				</ul></li>

			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"> <i class="fa fa-users" aria-hidden="true"></i> <span
					class="nav-text">Instructor</span>
			</a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/all-instructor">All
							Instructor</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/add-instructor">Add
							Instructor</a></li>

				</ul></li>
			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"><i class="fa fa-users" aria-hidden="true"></i> <span
					class="nav-text">Students</span>
			</a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/all-students">All
							Students</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/add-student">Add
							Students</a></li>

				</ul></li>
			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"> <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span
					class="nav-text">Courses</span>
			</a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/all-courses">All
							Courses</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/add-course">Add
							Courses</a></li>

				</ul></li>
			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"> <i class="fa fa-list" aria-hidden="true"></i><span
					class="nav-text">Status</span>
			</a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/check-lesson">Check
							Lesson</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/check-book">Check
							Book</a></li>

				</ul></li>

			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"><i class="fa fa-book" aria-hidden="true"></i><span
					class="nav-text">Book</span> </a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/list-book">List
							Book</a></li>


				</ul></li>
			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"> <i class="la la-building"></i> <span
					class="nav-text">Business</span>
			</a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/all-business">All
							Business</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/add-business">Add
							Business</a></li>

				</ul></li>
			<li><a class="has-arrow" href="javascript:void()"
				aria-expanded="false"> <i class="fa fa-credit-card-alt" aria-hidden="true"></i><span
					class="nav-text">Payment</span>
			</a>
				<ul aria-expanded="false">
					<li><a
						href="${pageContext.request.contextPath}/admin/list-payment">Payment</a></li>
					
					

				</ul></li>

				<li>
					<a class="has-arrow" href="javascript:void()" aria-expanded="false"> 
						<i class="la la-building"></i> 
						<span class="nav-text">Category</span>
					</a>
					<ul aria-expanded="false">
						<li><a href="${pageContext.request.contextPath}/admin/all-category">All Category</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/add-category">Add Category</a></li>
					</ul>
				</li>
				
			</ul>
	</div>
</div>
