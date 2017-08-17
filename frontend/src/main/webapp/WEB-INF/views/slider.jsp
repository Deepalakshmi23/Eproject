<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
</head>

<style type="text/css">
.container1 {
	background: transparent;
	border: 1px solid #b4f7b5;
	border-radius: 10px;
	margin: 10px 10px;
}
#f1_container1 {
	position: relative;
	width: 100px;
	margin-bottom: 10px;
	margin-left: 10px;
	height: 300px;
	z-index: 1;
	
}
#f1_container1 {
	perspective: 1000;
}
.face {
	position: absolute;
	width: 100%;
	height: 100%;
	backface-visibility: hidden;
}
.proname{
	font-size: 15px;
	color: blue;
	text-align: center;
    margin-top: 10px; 
}
 .proprice{
	font-size: 18px;
	color: black;
	text-align: center;
}
.img{
	text-align: center; 
}
 
</style> 
<body>

<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="resources/data1/images/image1.jpg" alt="image1" title="image1" id="wows1_0"/></li>
		<li><img src="resources/data1/images/image2.jpg" alt="image2" title="image2" id="wows1_1"/></li>
		<li><img src="resources/data1/images/image3.jpg" alt="image3" title="image3" id="wows1_2"/></li>
		<li><img src="resources/data1/images/image4.jpg" alt="jquery carousel slider" title="image4"/></a></li>
		<li><img src="resources/data1/images/image5.jpg" alt="image5" title="image5" id="wows1_4"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="image1"><span><img src="resources/data1/tooltips/image1.jpg" alt="image1"/>1</span></a>
		<a href="#" title="image2"><span><img src="resources/data1/tooltips/image2.jpg" alt="image2"/>2</span></a>
		<a href="#" title="image3"><span><img src="resources/data1/tooltips/image3.jpg" alt="image3"/>3</span></a>
		<a href="#" title="image4"><span><img src="resources/data1/tooltips/image4.jpg" alt="image4"/>4</span></a>
		<a href="#" title="image5"><span><img src="resources/data1/tooltips/image5.jpg" alt="image5"/>5</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">image carousel</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="resources/engine1/wowslider.js"></script>
<script type="text/javascript" src="resources/engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
<div class="container1">
		<div class="row">
			<c:forEach items="${product}" var="product">
				<div class="col-md-2">
					<div id="f1_container1">
						<div id="f1_card1" class="shadow">
							<div class="front face">
								<c:url value="/resources/${product.id}.png" var="url1"></c:url>
								<c:url value="/all/product/viewproduct/${product.id}" var="url2"></c:url>
								<a href="${url2}"><img src="${url1}" height="150" width="150"/></a>
								<b><p class="proname">${product.productName}</p></b>
								<p class="proprice">&#8377; ${product.price}</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>