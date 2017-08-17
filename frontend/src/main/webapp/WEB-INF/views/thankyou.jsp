<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h6>Thank you for purchasing</h6>
<c:url value="/resources/thank.png" var="action"></c:url>
<img  src="${action }" height:"500",width:"500">
<br>
<c:url value="/" var="act"></c:url>

 <a href="${act}"" class="btn btn-success">VisitAgain</a>
</center>
</body>
</html>
<%@ include file="footer.jsp"%>