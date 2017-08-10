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


<script>
	$(document).ready(function() {
		var searchCondition='${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}

		})

	});
</script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
	<center><h3>List of Products</h3></center><br>
<table class="table table-striped">
			<thead>
				<tr>
					<th>image</th>
					<th>productName</th>
					<th>price</th>
					<th>category</th>
					<th>Action</th>



				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${pro1}" var="p">
					<tr>
						<c:url value="/resources/${p.id}.png" var="imageUrl"></c:url>
						<c:url value="/all/product/viewproduct/${p.id}" var="viewUrl"></c:url>


						<td><img src="${imageUrl }" height="50" width="50"></td>
						<td><a href="${viewUrl }">${p.productName }</a></td>
						<td>${p.price }</td>
						<td>${p.category.categoryname }</td>
						<td><a href="${viewUrl}"><span
								class="glyphicon glyphicon-info-sign"></span></a> 
						<c:url value="/admin/product/deleteproduct/${p.id}" var="deleteUrl"></c:url>
						     <security:authorize access="hasRole('ROLE_ADMIN')">
							<a href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a>
							 <c:url value="/admin/product/geteditform/${p.id}" var="editUrl"></c:url>
							<a href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a>
							</security:authorize>
						</td>


					</tr>
				</c:forEach>
			</tbody>


		</table>




	</div>






</body>
</html>