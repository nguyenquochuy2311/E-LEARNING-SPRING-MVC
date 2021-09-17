<header class="header">
	<div class="container">
		<div class="hovermenu ttmenu">
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="fa fa-bars"></span>
					</button>
					<div class="logo">
						<a class="navbar-brand" href="<c:url value='/'/> "><img							
							src="<c:url value='/resources/main/images/xlogo.png.pagespeed.ic.vap6Ukaf0i.png'/>"
													alt="">
						</a>
					</div>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown ttmenu-half"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle">Course <b
								class="fa fa-angle-down"></b></a>
							<ul class="dropdown-menu menu-bg wbg">
								<li>
									<div class="ttmenu-content">
										<div class="row">
											<div class="col-md-6">
												<div class="box">
													<ul>
														<li><a href="${pageContext.request.contextPath }/course">Category Course 1</a></li>
						                                <li><a href="${pageContext.request.contextPath }/course">Category Course 2</a></li>
						                                <li><a href="${pageContext.request.contextPath }/course">Category Course 3</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul></li>

						<li><a href="${pageContext.request.contextPath}/book">Book</a></li>
						<li><a href="${pageContext.request.contextPath}/instructor">Instructor</a></li>
						<li><a href="${pageContext.request.contextPath}/job/pageid/1">Job</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>

						<li class="dropdown ttmenu-half"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle">My Account <b
								class="fa fa-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li>
									<div class="ttmenu-content">
										<div class="row">
											<div class="col-md-6">
												<div class="box">
													<ul>
														<li><a href="${pageContext.request.contextPath}/mypage">My Info</a></li>
														<li><a href="${pageContext.request.contextPath}/mypage/mycourse">My Course</a></li>
														<li><a href="${pageContext.request.contextPath}/mypage/myinterest">Interest Information</a></li>
													</ul>
												</div>
											</div>
											<div class="col-md-6">
												<div class="box">
													<ul>
														<li><a href="${pageContext.request.contextPath}/mypage/mycert">Certificate</a></li>
														<li><a href="${pageContext.request.contextPath}/mypage/mypayment">Payment List</a></li>
														<li><a href="${pageContext.request.contextPath}/mypage/editinfo">Edit Personal Information</a></li>
													</ul>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-md-3 nopadding">
												<img class="img-thumbnail"
													src="<c:url value='/resources/upload/xservice_01.png.pagespeed.ic.2iuJZT3CaV.png'/>"
													alt="">
											</div>
											<div class="col-md-3 nopadding">
												<img class="img-thumbnail"
													src="<c:url value='/resources/upload/xservice_02.png.pagespeed.ic.c6RThoxSWC.png'/>"
													alt="">
											</div>
											<div class="col-md-3 nopadding">
												<img class="img-thumbnail"
													src="<c:url value='/resources/upload/xservice_01.png.pagespeed.ic.2iuJZT3CaV.png'/>"
													alt="">
											</div>
											<div class="col-md-3 nopadding">
												<img class="img-thumbnail"
													src="<c:url value='/resources/upload/xservice_02.png.pagespeed.ic.c6RThoxSWC.png'/>"
													alt="">
											</div>
										</div>
									</div>
								</li>
							</ul></li>
					</ul>

					<!-- Search -->
					<ul class="nav navbar-nav navbar-right">
						<div class="navbar-collapse collapse right">
							<button class="btn btn-primary navbar-btn" type="button"
								data-toggle="collapse" data-target="#search">
								<span class="sr-only">Toggle Search</span> <i
									class="fa fa-search"></i>Search
							</button>
						</div>
						<div class="collapse clearfix" id="search">
							<form method="get" action="search" class="navbar-form">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Enter search here" name="searchtext" required>
									<span class="input-group-btn">
										<button type="submit" class="btn btn-primary">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div>
							</form>
						</div>
					</ul>
					<!-- End Search -->

				</div>
			</div>
		</div>
	</div>
</header>