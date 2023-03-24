<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Main.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FleaMarket</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
	<div class="container">
		<article>
			<div class="side">
				<div class="sidetap">
					<a href="InfoPointplace">포인트환전</a>
				</div>
				<div class="sidetap">
					<a href="MarketShipping">배송지주소</a>
				</div>
				<div class="sidetap">
					<a href="MarketUpload"><div>판매하기</div></a>
				</div>
				<div class="sidetap">
					<button class="topbutton" value="맨위로"
						onClick="javascript:window.scrollTo(0,0)">맨위로</button>
				</div>
			</div>
		</article>
		<br>
		<h2>플리:마켓</h2>
		<br> <br>
		<div class="slide slide_wrap">
			<div class="slide_item item1">
				<img src="<c:url value="/resources/images/Market/jang1.PNG"/>" />
				<div class="map">
					<div class="map1">
						<a
							href="https://map.naver.com/v5/search/%EC%83%81%EB%82%A8%EC%8B%9C%EC%9E%A5?c=15,0,0,0,dh"
							target="_blank"> <img
							src="<c:url value="/resources/images/Market/13.PNG"/>" /></a>
					</div>
					<div class="map1">
						<div>
							<p>
								<i class="fas fa-star"></i> 상남시장
							<p>
								<i class="fas fa-map-marker-alt"></i> 창원시 성산구 마디미로 28
							<p>
								<i class="fas fa-phone-alt"></i> 055-262-1494
							<p>
								<i class="fas fa-funnel-dollar"></i> 2층 환전소
							<p>
								<i class="far fa-calendar-check"></i> 평일: 09:00 ~ 18:00
							<p>매월 4일,9일,5일 장이열림
							<p>평일: 09:00 ~ 18:00 상설시장
						</div>
					</div>
				</div>
			</div>
			<div class="slide_item item2">
				<img src="<c:url value="/resources/images/Market/jang2.PNG"/>" />
				<div class="map">
					<div class="map1">
						<a
							href="https://map.naver.com/v5/search/%EB%A7%88%EC%82%B0%20%EC%96%B4%EC%8B%9C%EC%9E%A5/place/15834779?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"
							target="_blank"> <img
							src="<c:url value="/resources/images/Market/14.PNG"/>" /></a>
					</div>
					<div class="map1">
						<div>
							<p>
								<i class="fas fa-star"></i> 어시장
							<p>
								<i class="fas fa-map-marker-alt"></i> 창원시 마산합포구 복요리로 7
							<p>
								<i class="fas fa-phone-alt"></i> 055-224-0009
							<p>
								<i class="fas fa-funnel-dollar"></i> 시장입구
							<p>
								<i class="far fa-calendar-check"></i> 평일: 09:00 ~ 17:00
							<p>마산어시장 상인회
							<p>매일: 10:00 ~ 22:00
						</div>
					</div>
				</div>
			</div>
			<div class="slide_item item3">
				<img src="<c:url value="/resources/images/Market/jang3.PNG"/>" />
				<div class="map">
					<div class="map1">
						<a
							href="https://map.naver.com/v5/search/%EB%B0%98%EC%86%A1%EC%8B%9C%EC%9E%A5/place/35150213?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"
							target="_blank"> <img
							src="<c:url value="/resources/images/Market/15.PNG"/>" /></a>
					</div>
					<div class="map1">
						<div>
							<p>
								<i class="fas fa-star"></i> 반송시장
							<p>
								<i class="fas fa-map-marker-alt"></i> 창원시 성산구 반림동 17-18
							<p>
								<i class="fas fa-phone-alt"></i> 055-275-0449
							<p>
								<i class="fas fa-funnel-dollar"></i> 시장입구
							<p>
								<i class="far fa-calendar-check"></i> 평일: 09:00 ~ 18:00
							<p>반송시장 상인회
							<p>매일: 10:00 ~ 18:00
						</div>
					</div>
				</div>
			</div>
			<div class="slide_prev_button slide_button">◀</div>
			<div class="slide_next_button slide_button">▶</div>
			<ul class="slide_pagination"></ul>
		</div>
		<br> <br>
		<section>
			<h2>
				<a href="#">최근상품</a>
			</h2>
			<br> <br>
			<div class="event">
				<div class="event1">
					<a href="MarketProduct" class="link"> <img
						src="./resources/images/Market/kimchi.PNG">
						<p class="p_title">[다경농원]단감김치 5kg</p>
						<p class="p_date">25,000원</p>
					</a>
				</div>
				<div class="event1">
					<a href="#" class="link"> <img
						src="./resources/images/Market/jmt.PNG">
						<p class="p_title">[산에들우리축산] 1+등급 한우 모듬 300g</p>
						<p class="p_date">31,500원</p>
					</a>
				</div>
				<div class="event1">
					<a href="#" class="link"> <img
						src="./resources/images/Market/rice.PNG">
						<p class="p_title">(2023년쌀) 영농조합법인 창원청결미 10kg</p>
						<p class="p_date">30,000원</p>
					</a>
				</div>
			</div>
			<div class="event">
				<div class="event1">
					<a href="#" class="link"> <img
						src="./resources/images/Market/yogart.PNG">
						<p class="p_title">두빈목장 프리미엄 수제 요거트 150ml</p>
						<p class="p_date">1,500원</p>
					</a>
				</div>
				<div class="event1">
					<a href="#" class="link"> <img
						src="./resources/images/Market/homespray.PNG">
						<p class="p_title">[웰본]가고파국화방향제 300ml</p>
						<p class="p_date">15,000원</p>
					</a>
				</div>
				<div class="event1">
					<a href="#" class="link"> <img
						src="./resources/images/Market/turtle.PNG">
						<p class="p_title">[코스모스] 거북이빵 (8개입)</p>
						<p class="p_date">12,000원</p>
					</a>
				</div>
			</div>
		</section>
		<br>
	</div>
	<jsp:include page="Main_Footer.jsp" />
</body>
</html>