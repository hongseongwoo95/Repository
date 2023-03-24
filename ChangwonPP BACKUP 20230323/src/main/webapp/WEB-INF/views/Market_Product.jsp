<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Product.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>flea_product</title>
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
						<button class="topbutton" value="맨위로"
							onClick="javascript:window.scrollTo(0,0)">맨위로</button>
					</div>
				</div>
			</article>
		</div>
		<br> <br>
		<h2 id="p_info">상품정보</h2>
		<c:forEach var="prod" items="${product}">
			<section class="salemiddle">
				<div class="product">
					<div class="slider">
						<img src="./resources/images/Market_pro/${prod.p_img}" class="imgs">
					</div>
				</div>
				<div class="imformation">
					<h1>상품명</h1>
					<p class="info_f"> ${prod.p_name} <br>
					<h1>소비자가격</h1>
					<p class="info_f"> ${prod.p_price} <br>
					<h3>상품상태</h3>
					<p class="info_f"> ${prod.p_condition} <br>
					<h3>참고사항</h3>
					<p class="info_f"> ${prod.p_notice} <br>
					<h3>브랜드</h3>
					<p class="info_f"> ${prod.p_brand} <br> <br>
					<div class="wrap">
						<div>
							<button class="middlebutton">장바구니</button>
							<button class="middlebutton">바로구매</button>
						</div>
					</div>
				</div>
			</section>
			<section class="product_info">
				<h3>Product info</h3>
				<hr>
				<div>
					<img src="./resources/images/Market_pro/product_info.jpg">
					${prod.p_content}
				</div>
			</section>
		</c:forEach>
	</div>
	<jsp:include page="Main_Footer.jsp" />
</body>
</html>