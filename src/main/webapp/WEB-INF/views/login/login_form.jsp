<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>

	
<html lang="en">
<head>
    <meta name="description" content="Login Page">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">

    <title>Login | LearnPLUS</title>
    
    <%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>

<body class="login">
    
    <!-- Login Page -->
    <div id="wrapper">
        <div class="container">
            <div class="row login-wrapper">
                <div class="col-md-6 col-md-offset-3">
                    <div class="logo logo-center">
                        <a href="${pageContext.request.contextPath }"><img src="${pageContext.request.contextPath }/resources/main/images/xlogin-logo.png.pagespeed.ic.rk5LaeLYSz.png" alt=""></a>
                    </div>
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-6">
                                    <a href="${pageContext.request.contextPath }/login" class="active"id="login-form-link">Login</a>
                                </div>
                                <div class="col-xs-6">
                                    <a href="${pageContext.request.contextPath }/login/regist"  id="register-form-link">Register</a>
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                
                                    <form id="login-form" action="${pageContext.request.contextPath }/login/checklogin" method="post" role="form" style="display: block;">
                                        <div class="form-group">
                                            <input type="text" name="userName" id="username" tabindex="1"
                                                class="form-control" placeholder="Username" 
                                                		value="${user_old }" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" tabindex="2"
                                                class="form-control" placeholder="Password" required>
                                        </div>
                                       <!--  <div class="form-group text-center">
                                            <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                            <label for="remember"> &nbsp; Remember Me</label>
                                        </div> -->
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <button type="submit" class="form-control btn btn-default">Login
                                                        Account</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="text-center">
                                                        <a href="#" tabindex="5" class="forgot-password">Forgot
                                                            Password?</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form id="register-form" action="${pageContext.request.contextPath }/login/signup" method="post"
                                        role="form" style="display: none;">
                                        <div class="form-group">
                                            <input type="text" name="userName" id="username" tabindex="1"
                                                class="form-control" placeholder="Username" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" name="email" id="email" tabindex="1"
                                                class="form-control" placeholder="Email Address" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" tabindex="2"
                                                class="form-control" placeholder="Password" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="confirm-password" id="confirm-password"
                                                tabindex="2" class="form-control" placeholder="Confirm Password" required>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <button type="submit"
                                                        class="form-control btn btn-default btn-block">Register an
                                                        Account</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Login Page  -->

    
 
</body>
</html>