<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<!-- <style>
background-color: lightblue;
 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <script>
function validateForm() {
    var x = document.forms["myForm"]["productname"]["price"]["quantity"]["description"].value;
    if (x == "") {
        alert("productname must be filled out");
        alert("productprice must be filled out");
        alert("productquantity must be filled out");
        alert("product description must be filled out");
        return false;
    }
}
</script>  -->

</head>
<body>
	<div class="container">
		<c:url value="/admin/product/saveproduct" var="saveUrl"></c:url>
		<form:form action="${saveUrl}" method="post" name="myForm" modelAttribute="product" onsubmit="return validateForm()"
			enctype="multipart/form-data">
			<form:hidden path="id" />


			<div class="form-group">
				<label for="Product Name">Product Name</label>
				<form:input path="productName" class="form-control"
					placeholder="Enter Product Name" />
				<form:errors path="productName" cssStyle="color:blue" />
			</div>
			<div class="form-group">
				<label for="Product price">Product price</label>
				<form:input path="price" class="form-control"
					placeholder="Enter Product price" />
				<form:errors path="price" cssStyle="color:blue" />
			</div>
			<div class="form-group">
				<label for="Product quantity">Product quantity</label>
				<form:input path="quantity" class="form-control"
					placeholder="Enter Product quantity" />
			</div>
			<div class="form-group">
				<label for="Product Description">Product Description</label>
				<form:input path="description" class="form-control" placeholder="Enter Product Description" />
				<form:errors path="description" cssStyle="color:blue" />
			</div>
			<br>
			<div class="form-group">
				Upload an image <input type="file" name="image">
			</div>


			<div class="form-group">
				SELECT CATEGORY<br>
				<c:forEach items="${category}" var="c">


					<form:radiobutton path="category.id" value="${c.id}" />${c.categoryname}<br>


				</c:forEach>
			</div>


			<input type="submit" value="Add Product">
		</form:form>

	</div>





</body>
</html>