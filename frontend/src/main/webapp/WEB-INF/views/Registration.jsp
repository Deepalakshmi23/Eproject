<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
/* body {
	padding-top: 90px;
} */

.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login>.panel-heading hr {
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}

.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}

.btn-register:hover, .btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}

function Validate () {var str1=document.getElementById("name1").value;var
	str2=document.getElementById(""name2").value;if (str1!=str2){ alert
	("Passwords donot match");return false;
	
}
retur true
;


}
</style>
</head>
<body>
	<div class="container">

		 <div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div> 
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">

								<c:url value="/all/saveCustomer" var="action"></c:url>
								<form:form  action="${action}" method="post"
									role="form" style="display: none;" modelAttribute="customer">
									<center><h1>Register</h1></center>
									<div class="form-group">
										<input type="text" name="fname" id="fname" 
											class="form-control" placeholder="fname" >
										<form:errors path="fname" cssStyle="color:red"></form:errors>
									</div>

									<div class="form-group">
										<input type="text" name="lname" id="lname" 
											class="form-control" placeholder="Lname" >
										<form:errors path="lname" cssStyle="color:red"></form:errors>
									</div>


									<div class="form-group">
										<input type="email" name="email" id="email"
											class="form-control" placeholder="Email Address" >
										<form:errors path="email" cssStyle="color:red"></form:errors>
									</div>

									<div class="form-group">
										<input type="text" name="phone" id="phone" 
											class="form-control" placeholder="PHONE">
										<form:errors path="phone" cssStyle="color:red"></form:errors>
									</div>

									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username" >
									</div>

									<div class="form-group">
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password">
									</div>

									<div class="form-group">
										<input type="password" name="confirm-password"
											id="confirm-password"  class="form-control"
											placeholder="Confirm Password">
									</div>



									<div class="form-group">
										<input type="text" name="Billingaddess.doorno"
											id="Billingadress.doorno"  class="form-control"
											placeholder="Billingdoorno">
									</div>
									<div class="form-group">
										<input type="text" name="Billingaddress.streetname"
											id="Billingaddress.streetname" 
											class="form-control" placeholder="Billingaddress.streetname"
											value="">
									</div>
									<div class="form-group">
										<input type="text" name="Billingaddress.city"
											id="Billingaddress.city" tabindex="9" class="form-control"
											placeholder="Billingaddress.city">
									</div>
									<div class="form-group">
										<input type="text" name="Billingaddress.state"
											id="Billingaddress.state" tabindex="10" class="form-control"
											placeholder="Billingaddress.state">
									</div>
									<div class="form-group">
										<input type="text" name="Billingaddress.country"
											id="Billingaddress.country" tabindex="11"
											class="form-control" placeholder="Billingaddress.country"
											value="">
									</div>
									<div class="form-group">
										<input type="text" name="Billingaddress.zipcode"
											id="Billingaddress.zipcode" tabindex="12"
											class="form-control" placeholder="Billingaddress.zipcode"
											value="">
									</div>
									<div class="form-group">
										<input type="text" name="shippingaddress.doorno"
											id="shippingaddress.doorno"
											class="form-control" placeholder="shippingaddress.doorno"
											value="">
									</div>
									<div class="form-group">
										<input type="text" name="shippingaddress.streetname"
											id="shippingaddress.streetname" 
											class="form-control" placeholder="shippingstreetname"
											value="">
									</div>
									<div class="form-group">
										<input type="text" name="shippingaddress.city"
											id="shippingaddress.city"  class="form-control"
											placeholder="shippingaddress.city" >
									</div>
									<div class="form-group">
										<input type="text" name="shippingaddress.state"
											id="shippingaddress.state"  class="form-control"
											placeholder="shippingaddress.state" >
									</div>
									<div class="form-group">
										<input type="text" name="shippingaddress.country"
											id="shippingaddress.country"
											class="form-control" placeholder="shippingaddress.country"
											>
									</div>
									<div class="form-group">
										<input type="text" name="shippingaddress.zipcode"
											id="shippingaddress.zipcode" 
											class="form-control" placeholder="shippingaddress.zipcode">
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit"
													class="form-control btn btn-register"
													value="Register Now" onclick="return Validate()">
											</div>
										</div>
									</div>
								</form:form>
								<%-- <form:form action="" method="post" modelAttribute="customer"
									id="login-form">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password">
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Log In">
											</div>
										</div>
									</div>
								</form:form>  --%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 
 </body>
<!-- <script type="text/javascript">
	$(function() {

		$('#register-form-link').click(function(e) {
			$("#register-form").delay(100).fadeIn(100);
			$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
			$("#register-form").fadeOut(100);
			$('#register-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});
</script> -->
</html>