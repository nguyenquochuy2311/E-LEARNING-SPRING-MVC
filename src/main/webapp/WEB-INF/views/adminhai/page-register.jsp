<!DOCTYPE html>
<html lang="en" class="h-100">


<jsp:include page="commons/linkheader.jsp" />

<body class="h-100">
	<div class="authincation h-100">
		<div class="container h-100">
			<div class="row justify-content-center h-100 align-items-center">
				<div class="col-md-6">
					<div class="authincation-content">
						<div class="row no-gutters">
							<div class="col-xl-12">
								<div class="auth-form">
									<h4 class="text-center mb-4">Sign up your account</h4>
									<form action="signup" method="post">
										<div class="form-group">
											<label><strong>Username</strong></label> <input type="text"
												class="form-control" placeholder="username" name="userName">
										</div>
										<div class="form-group">
											<label><strong>Email</strong></label> <input type="email"
												class="form-control" placeholder="hello@example.com" required="required"
												name="email">
										</div>
										<p style="color: red;">${checkemail}</p>
										<div class="form-group">
											<label><strong>Password</strong></label> <input
												type="password" class="form-control" placeholder="Password" required="required"
												name="password">
										</div>
										<div class="form-group">
											<label><strong>address</strong></label> <input type="text"
												class="form-control" placeholder="username" name="address">
										</div>

										<div class="form-group">
											<label><strong>phonenumber</strong></label> <input
												type="text" class="form-control" placeholder="username"
												name="phoneNumber">
										</div>
										<div class="form-group">
											<label><strong>first name</strong></label> <input type="text"
												class="form-control" placeholder="username" name="firstName">
										</div>
										<div class="form-group">
											<label><strong>last name</strong></label> <input type="text"
												class="form-control" placeholder="username" name="lastName">
										</div>
										
											<div class="text-center mt-4">
											<select name="role" id="role">
												<option value="0">Student</option>
												<option value="1">Teacher</option>
											
											</select>
										</div>
										
										<div class="text-center mt-4">
											<button type="submit" class="btn btn-primary btn-block">Sign
												me up</button>
										</div>
									



									</form>
									<div class="new-account mt-3">
										<p>
											Already have an account? <a class="text-primary"
												href="${pageContext.request.contextPath}/login">Sign in</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="commons/linkfooter.jsp" />
</body>


<!-- Mirrored from edumin.dexignlab.com/xhtml/page-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jun 2021 02:23:24 GMT -->
</html>