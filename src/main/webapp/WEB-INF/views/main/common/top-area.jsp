<div class="topbar">
	<div class="container">
		<div class="row">
			<div class="col-md-6 text-left">
				<p>
					<i class="fa fa-graduation-cap"></i> Best learning management
					template for ever.
				</p>
			</div>
			<div class="col-md-6 text-right">
				<ul class="list-inline">
					<li><a class="social" href="#"><i class="fa fa-facebook"></i></a>
						<a class="social" href="#"><i class="fa fa-twitter"></i></a> <a
						class="social" href="#"><i class="fa fa-google-plus"></i></a> <a
						class="social" href="#"><i class="fa fa-linkedin"></i></a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" href="#"
						data-toggle="dropdown">${student.firstName }</a>
						<div class="dropdown-menu">
							<button onclick="location.href='<c:url value="/mypage/info"/>'"
								class="btn btn-block btn-second">My Info</button>
							<hr>
							<button onclick="location.href='<c:url value="/mypage/mycourse"/>'"
								class="btn btn-block btn-second">My Course</button>
							<hr>
							<button onclick="location.href='<c:url value="/mypage/myinterest"/>'"
								class="btn btn-block btn-second">Interest Information</button>
							<hr>
							<button onclick="location.href='<c:url value="/mypage/mycert"/>'"
								class="btn btn-block btn-second">Alarm</button>
							<hr>
							<button onclick="location.href='<c:url value="/mypage/mypayment"/>'"
								class="btn btn-block btn-second">Payment list</button>
							<hr>
							<button onclick="location.href='<c:url value="/mypage/editinfo"/>'"
								class="btn btn-block btn-second">Edit Personal Info</button>
							<hr>
							<button onclick="location.href='<c:url value="/login/logout"/>'"
								class="btn btn-block btn-second">Logout</button>
							<hr>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>