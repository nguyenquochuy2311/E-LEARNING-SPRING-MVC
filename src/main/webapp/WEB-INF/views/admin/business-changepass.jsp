<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from edumin.dexignlab.com/xhtml/add-student.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Jul 2021 06:49:41 GMT -->
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Edumin - Bootstrap Admin Dashboard</title>

<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath }/resources/admin/images/favicon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/style.css">

<!-- Pick date -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/vendor/pickadate/themes/default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/vendor/pickadate/themes/default.date.css">

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
							<h4>Business Information Modification</h4>
						</div>
					</div>
				</div>

				<div class="row"
					style="width: 100%; padding-left: 20%; padding-right: 7%;">
					<div class="">
						<div class="card">
							<div class="card-header">
								<h2>Change password</h2>
							</div>
							<div class="card-body">

								<form action="changed" method="post" onsubmit="return validated();">
									<div class="row">

										<input type="hidden" name="id" value="${businessEdit.id }">

										<div class="col-lg-12">
											<div class="form-group">
												<label class="form-label">Current Password</label> <input
													id="curpass" type="password" name="curpass" oninput="checkcurPass()"
													class="form-control" required>
											</div>

											<p id="message1"></p>
											<!--  
											<c:if test="${!(param.curpass == businessEdit.password)} ">
												<p style="color: red">Wrong password</p>
											</c:if>
											-->
										</div>


										<div class="col-lg-12">
											<div class="form-group">
												<label class="form-label">New Password</label> <input
													type="password" name="newpass" class="form-control"
													id="npass" required>
											</div>
										</div>

										<div class="col-lg-12">
											<div class="form-group">
												<label class="form-label">Confirm New Password</label> <input
													id="cpass" type="password" name="confirmpass"
													oninput="checkPassword()" class="form-control" required>
											</div>

											<p id="message2"></p>
											<!--
											<c:if test="${!(param.newpass == param.confirmpass)}">
												<p style="color: red">Wrong password</p>
											</c:if>
											-->
										</div>

										<div class="col-lg-12 col-md-12 col-sm-12">
											<button type="submit" class="btn btn-primary">SAVE</button>
										</div>


									</div>
								</form>



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
		<div class="footer"></div>
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

	<script type="text/javascript">
		
		function checkPassword() {			
			let npassword = document.getElementById("npass").value;
			let cpassword = document.getElementById("cpass").value;			
			let message2 = document.getElementById("message2");
			
			if (npassword == cpassword) {
				message2.textContent = "Password match";
				message2.style.color="green";
			} else {
				message2.textContent = "Password do not match";
				message2.style.color="red";
			}		
		}
		
		function checkcurPass() {
			var curpass = ${businessEdit.password};
			let password = document.getElementById("curpass").value;
			let message1 = document.getElementById("message1");
			
			if (password == curpass){
				message1.textContent = "Password match";
				message1.style.color="green";
			} else {
				message1.textContent = "Password do not match";
				message1.style.color="red";
			}			
		}
		
		function validated() {
			var curpass = ${businessEdit.password};
			let password = document.getElementById("curpass").value;
			let npassword = document.getElementById("npass").value;
			let cpassword = document.getElementById("cpass").value;	
			
			if (password != curpass || npassword != cpassword ){
				alert("Please check information")
				return false;		
			}else {
				return true;
			}
		}
	</script>

</body>

<!-- Mirrored from edumin.dexignlab.com/xhtml/add-student.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Jul 2021 06:49:41 GMT -->
</html>