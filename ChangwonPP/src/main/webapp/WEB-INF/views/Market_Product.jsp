<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Market_Product.css"/>" />
<script src="https://kit.fontawesome.com/380c1469b3.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Market_Product</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
	<div class="container">
		<div class="header2">
			<article>
				<div class="side">
					<div class="sidetap">
						<a href="#"><img src="">포인트환전</a>
					</div>
					<div class="sidetap">
						<a href="#"><img src="">배송지주소</a>
					</div>
					<div class="sidetap">
						<a href="#"><div>판매하기</div></a>
					</div>
					<div class="sidetap">
						<button class="topbutton" value="맨위로" onClick="javascript:window.scrollTo(0,0)">맨위로</button>
					</div>
				</div>
			</article>
		</div>
		<br> <br>
		<h2 id="p_info">상품정보</h2>
		<br> <br>
		<section class="salemiddle">
			<div class="product">
				<div class="product_img">
					<img src="<c:url value="/resources/savemarket/${product.p_img}"/>" class="imgs">
				</div>
			</div>
			<div class="imformation">
				<h1>상품명</h1>
				<p class="info_f">
					${product.p_name} <br>
				<h1>소비자가격</h1>
				<p class="info_f">
					${product.p_price}원 <br>
				<h3>상품상태</h3>
					<p class="info_f"> ${product.p_condition} <br>
					<h3>참고사항</h3>
					<p class="info_f"> ${product.p_notice} <br>
					<h3>브랜드</h3>
					<p class="info_f"> ${product.p_brand} <br> <br>
					<div class="wrap">
						<div>
							<a href="MarketShipping/${number}" class="buy">바로구매</a>
						</div>
					</div>
			</div>
		</section>
		<br> <br> <br> <br> <br> <br>
		<section class="product_info">
			<h3>Product info</h3>
			<hr>
			<div>${product.p_content}</div>
		</section>
	</div>
	<jsp:include page="Main_Footer.jsp" />
</body>
</html>