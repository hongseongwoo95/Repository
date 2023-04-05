<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Main.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Market_Main</title>
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
				<c:if test="${m_id != null && m_type != 0 }">
					<div class="sidetap">		
						<a href="MarketUpload"><div>판매하기</div></a>
					</div>
				</c:if>
				<div class="sidetap">
					<button class="topbutton" value="맨위로"
						onClick="javascript:window.scrollTo(0,0)">맨위로</button>
				</div>
			</div>
		</article>
		<br>
		<h2>플리마켓</h2>
		<br> <br>
		<div class="slide slide_wrap">
			<div class="slide_item item1">
				<div class="item_left"><img src="<c:url value="/resources/images/Market/jang1.PNG"/>" /></div>
				<div class="map item_right">
					<div class="map1 item_top">
						<a href="https://map.naver.com/v5/search/%EC%83%81%EB%82%A8%EC%8B%9C%EC%9E%A5?c=15,0,0,0,dh"
							target="_blank"> <img src="<c:url value="/resources/images/Market/13.PNG"/>" /></a>
					</div>
					<div class="map1 item_bot">
						<div>
							<p><i class="fas fa-star"></i> 상남시장
							<p><i class="fas fa-map-marker-alt"></i> 창원시 성산구 마디미로 28
							<p><i class="fas fa-phone-alt"></i> 055-262-1494
							<p><i class="fas fa-funnel-dollar"></i> 2층 환전소
							<p><i class="far fa-calendar-check"></i> 평일: 09:00 ~ 18:00
							<p>매월 4일,9일,5일 장이열림
							<p>평일: 09:00 ~ 18:00 상설시장
						</div>
					</div>
				</div>
			</div>
			<div class="slide_item item2">
				<div class="item_left"><img src="<c:url value="/resources/images/Market/jang2.PNG"/>" /></div>
				<div class="map item_right">
					<div class="map1 item_top">
						<a href="https://map.naver.com/v5/search/%EB%A7%88%EC%82%B0%20%EC%96%B4%EC%8B%9C%EC%9E%A5/place/15834779?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"
							target="_blank"> <img src="<c:url value="/resources/images/Market/14.PNG"/>" /></a>
					</div>
					<div class="map1 item_bot">
						<div>
							<p><i class="fas fa-star"></i> 어시장
							<p><i class="fas fa-map-marker-alt"></i> 창원시 마산합포구 복요리로 7
							<p><i class="fas fa-phone-alt"></i> 055-224-0009
							<p><i class="fas fa-funnel-dollar"></i> 시장입구
							<p><i class="far fa-calendar-check"></i> 평일: 09:00 ~ 17:00
							<p>마산어시장 상인회
							<p>매일: 10:00 ~ 22:00
						</div>
					</div>
				</div>
			</div>
			<div class="slide_item item3">
				<div class="item_left"><img src="<c:url value="/resources/images/Market/jang3.PNG"/>" /></div>
				<div class="map item_right">
					<div class="map1 item_top">
						<a href="https://map.naver.com/v5/search/%EB%B0%98%EC%86%A1%EC%8B%9C%EC%9E%A5/place/35150213?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"
							target="_blank"> <img src="<c:url value="/resources/images/Market/15.PNG"/>" /></a>
					</div>
					<div class="map1 item_bot">
						<div>
							<p><i class="fas fa-star"></i> 반송시장
							<p><i class="fas fa-map-marker-alt"></i> 창원시 성산구 반림동 17-18
							<p><i class="fas fa-phone-alt"></i> 055-275-0449
							<p><i class="fas fa-funnel-dollar"></i> 시장입구
							<p><i class="far fa-calendar-check"></i> 평일: 09:00 ~ 18:00
							<p>반송시장 상인회
							<p>매일: 10:00 ~ 18:00
						</div>
					</div>
				</div>
			</div>
            <div class="button_wrap">
                <button class="prev_btn"><i class="fas fa-chevron-left"></i></button>
                <button class="next_btn"><i class="fas fa-chevron-right"></i></button>
            </div>
		</div>
		<br> <br>
		<section class="recent">
         <h2>
            최근상품
         </h2>
         <br> <br>
            <div class="test">
               <c:forEach var="clickpd" items="${ProductList}">
               <div class="event1">
                  <a href="Market_Product/${clickpd.p_number}" class="link"> 
                  <img src="./resources/savemarket/${clickpd.p_img}">
                     <p class="p_title">${clickpd.p_name}</p>
                     <p class="p_date">${clickpd.p_price}원</p>
                  </a>
               </div>
            </c:forEach>
         </div>
      </section>
		<br>
	</div>
	<jsp:include page="Main_Footer.jsp" />
	<script src="<c:url value="/resources/js/Market_Main.js"/>"></script>
</body>
</html>