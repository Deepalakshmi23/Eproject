<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("resources/Loginew.jpg");
	background-size: 1400px 1800px;
}

.panel-title {
	 color: #4B0082; 
	/* background-color: #FFFACD; */
 	border-color: #5F9EA0;
}
</style>
<script>
	function validate(e) {
		var userName = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		if (userName.length === 0) {
			alert("You must enter a username.");
			e.preventDefault();
			return;
		}
		if (password.length === 0) {
			alert("You must enter a password.");
			e.preventDefault();
			return;
		}
	}
	window.onload = function() {
		document.getElementById("logInForm").addEventListener("submit",
				function(e) {
					validate(e);
				});
	}
</script>
</head>
<body>
<c:url value="/j_spring_security_check" var="action"></c:url>
		<%-- <form:form action="${action}" class="log" method="post" > --%>
	<form action="${action}" class="form-horizontal" method="post">
		<div class="form-group">
			<div class="container">
				<div id="loginbox" style="margin-top: 50px;"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">Sign In</div>
							<div
								style="float: right; font-size: 80%; position: relative; top: -10px">
								<!-- <a href="#">Forgot password?</a></div> -->
							</div>

							<div style="padding-top: 30px" class="panel-body">

								<div style="display: none" id="login-alert"
									class="alert alert-danger col-sm-12"></div>


								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-book"></i></span> <input id="username"
										type="text" class="form-control" name="j_username" value=""
										>
								</div>

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input id="password"
										type="password" class="form-control"  name="j_password"
										>
								</div>

								<c:if test="${not empty error}">
									<div class="error">
										<b>${error}</b>
									</div>
								</c:if>
								<c:if test="${not empty logout}">
									<div class="msg">
										<b>${logout}</b>
									</div>
								</c:if>
								<b>${message}</b>



								<!-- <div class="input-group">
									<div class="checkbox">
										<label> <input id="login-remember" type="checkbox"
											name="remember" value="1"> Remember me
										</label>
									</div>
								</div>
 -->

								<div style="margin-top: 10px" class="form-group">
									<!-- Button -->

									<div class="col-sm-12 controls">
										<button class="btn btn-success">Submit</button>
										<!-- <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a> -->

									</div>
								</div>



								<div class="form-group">
									<div class="col-md-12 control">
										<div
											style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
											Don't have an account! <a href="SignUp"
												onClick="$('#loginbox').hide(); $('#signupbox').show()">
												Sign Up Here </a>
										</div>


									</div>

								</div>
							</div>
						</div>




					</div>
				</div>
			</div>
	</form>

</body>
</html>