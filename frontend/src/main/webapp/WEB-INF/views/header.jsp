<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%-- <%@ page isELIgnored="False" %> --%>
<!-- Angular JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<style type="text/css">
/* select:active, select:hover {
  outline-color: red
} */
div.container a {
	color: #FFF;
	text-decoration: none;
	font: 20px Raleway;
	margin: 0px 10px;
	padding: 10px 10px;
	position: relative;
	z-index: 0;
	cursor: pointer;
}

/* Top and Bottom borders go out */
div.topBotomBordersOut a:before, div.topBotomBordersOut a:after {
	position: absolute;
	left: 0px;
	width: 100%;
	height: 2px;
	background: #FFF;
	content: "";
	opacity: 0;
	transition: all 0.3s;
}

div.topBotomBordersOut a:before {
	top: 0px;
	transform: translateY(10px);
}

div.topBotomBordersOut a:after {
	bottom: 0px;
	transform: translateY(-10px);
}

div.topBotomBordersOut a:hover:before, div.topBotomBordersOut a:hover:after
	{
	opacity: 1;
	transform: translateY(0px);
}

nav {
	background-color: 00bfff !important;
	border-color: skyblue !important;
	text-align: center;
}

nav a:hover {
	color: skyblue !important;
}
nav a:select :active{
outline-color :red;

}

.nav.navbar-nav.navbar-right li a {
	color: Red;
}

.nav.navbar-nav li a {
	color: Red;
}

.navbar-toggle.collapsed li a {
	background-color: 00bfff !important;
}

.navbar-inverse .navbar-brand {
	color: #ffc107;
}

.dropdown a {
	background-color: 00bfff !important;
}

.dropdown-menu li a {
	background-color: gray !important;
	color: skyblue !important;
	height: 50px;
	text-align: center;
}

</style>
<script type="text/javascript">
$(document).ready(function active() {
   $('#select').css('color','gray');
   $('#select').change(function active() {
      var current = $('#select').val();
      if (current != 'null') {
          $('#select').css('color','black');
      } else {
          $('#select').css('color','gray');
      }
   }); 
});

</script>
<title>Insert title here</title>
</head>


<body>
	<nav class="navbar navbar-default">
	<div class="container  topBotomBordersOut">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#collapse-example"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<div class="navbar-header">

			<c:url value="/resources/apple.1.jpg" var="add1"></c:url>
			<a class="navbar-brand" href="#"><img src="${add1 }"
				height="30px" width="30px"></a>
		</div>
		<div class="collapse navbar-collapse" id="collapse-example",onsubmit="return active()">
			<ul class="nav navbar-nav">
				<c:url value="/home" var="abc"></c:url>

				<li class=""><a href="${abc }">Home<span class="sr-only">You
							are in home page link</span></a></li>
				<c:url value="/aboutus" var="about"></c:url>
				<li><a href="${about }">About Us</a></li>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_ADMIN')">

						<c:url value="/admin/product/getproductform" var="add"></c:url>
						<li><a href="${add}">Add Product</a></li>
					</security:authorize>
				</c:if>
				<c:url value="/all/product/productlist" var="view"></c:url>
				<li><a href="${view}">All product</a></li>


				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Category<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><c:forEach items="${categories}" var="c">
								<c:url
									value="/all/product/searchbycategory?searchCondition=${c.categoryname }"
									var="Url"></c:url>
								<a href="${Url }">${c.categoryname }</a>
							</c:forEach> <c:url value="/all/product/searchbycategory?searchCondition=All"
								var="Url1"></c:url> <a href="${Url1 }">ALL</a>
								<li><security:authorize access="hasRole('ROLE_ADMIN')">

						<c:url value="/admin/product/getcategoryform" var="url4"></c:url>
						<a href="${url4}">Add Category</a>

					</security:authorize></li>
					</ul></li>

				<%-- <li><security:authorize access="hasRole('ROLE_ADMIN')">

						<c:url value="/admin/product/getcategoryform" var="url4"></c:url>
						<a href="${url4}">Add Category</a>

					</security:authorize></li> --%>
				<li><c:if
						test="${pageContext.request.userPrincipal.name!=null }">
						<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
					</c:if></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_USER')">
						<c:url value="/cart/getcart" var="cart"></c:url>
						<li><a href="${cart}"><span
								class="glyphicon glyphicon-shopping-cart"></span> Cart ${i}</a></li>
					</security:authorize>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<c:url value="/all/RegistrationFrom" var="reg"></c:url>
					<li><a href="${reg}"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<c:url value="/login" var="url6"></c:url>


					<li><a href="${url6}"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
				<c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="${logoutUrl }"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>