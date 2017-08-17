<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<center><h3>view product</h3></center>
	<div class="Container">
	<table class="table table-striped">
	<tr><td><c:url value="/resources/${pro1.id}.png" var="imageUrl"></c:url></td>
	<td><img src="${imageUrl }"  height="100" width="150"></td>
	</tr>
		<tr>
		
		
			<td>ProductName:</td>
			<td>${pro1.productName}</td>
		</tr>
		<tr>
			<td>Productquantity:</td>
			<td>${pro1.quantity}</td>
		</tr>
		<tr>
			<td>ProductPrice:</td>
			<td>${pro1.price}</td>
		</tr>
		<tr>
			<td>ProductDescription:</td>
			<td>${pro1.description}</td>
		</tr>
	</table>
	<security:authorize access="hasRole('ROLE_USER')">
	<c:if test="${product.quantity!=0 }">
	<c:url value="/cart/addtocart/${pro1.id}" var="shop"></c:url>
		<form action="${shop}">
			<!-- Enter Units<input type="text" name="units"><br> -->
			<center><label>Enter Quantity</label>
			<input type="text" name="units"   />
			
			<button type="submit" style="background:none;border:none;padding:0" class="btn btn-default" >
			<span class="glyphicon glyphicon-shopping-cart"></span>AddToCart</button></center>
			</form>
	</c:if>
	</security:authorize>
	<c:url value="/all/product/productlist" var="action"></c:url>
		<form action="${action}">
			<button type="submit"  class="btn btn-success center-block" >
			<span class="glyphicon glyphicon-eye-open"></span>Back</button>
			</form>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>