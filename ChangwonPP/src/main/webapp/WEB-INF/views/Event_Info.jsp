<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Event_Info.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js"
	crossorigin="anonymous"></script>
<script src="./resources/js/Event_Info.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=10ae40fd28ac17676cbbeffd8634a635"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event_Info</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
	<div class="container">
		<div class="event_title">
			<p class="event_title_item">제 61회 진해 군항제(3.25 ~ 4.3)</p>
		</div>
		<div class="slider-container">
			<div class="slider-wrapper">
				<img src="<c:url value="/resources/images/Eventinfo/gunhangje01.jpg"/>" />
				<img src="<c:url value="/resources/images/Eventinfo/gunhangje02.jpg"/>" />
				<img src="<c:url value="/resources/images/Eventinfo/gunhangje03.jpg"/>" />
				<img src="<c:url value="/resources/images/Eventinfo/gunhangje04.jpg"/>" />
				<img src="<c:url value="/resources/images/Eventinfo/gunhangje05.jpg"/>" />
			</div>
			<div class="slider-controls">
				<button class="slider-button left"></button>
				<button class="slider-button right"></button>
			</div>
		</div>
		<div class="event_info">
			<ul>
				<li><i class="far fa-star"></i>명칭 : 진해 군항제</li>
				<li><i class="far fa-clock"></i>축제기간 : 3.25(토) ~ 4.3(월)</li>
				<li><i class="fas fa-map-marker-alt"></i>주소 : 경화동</li>
			</ul>
			<ul>
				<li><i class="fas fa-cog"></i>담당기관 : 문화체육관광국 문화예술과</li>
				<li><i class="fas fa-phone-alt"></i>전화번호 : 055-225-2341</li>
				<li><i class="fas fa-won-sign"></i>이용료 : 무료</li>
			</ul>
		</div>

		<div class="event_map">
			<div id="staticMap" style="width: 600px; height: 350px;"></div>
		</div>
		<br>
	</div>
	<jsp:include page="Main_Footer.jsp" />
	<script type="text/javascript">
		// 이미지 지도에 표시할 마커입니다
		// 이미지 지도에 표시할 마커를 아래와 같이 배열로 넣어주면 여러개의 마커를 표시할 수 있습니다 
		var markers = [ {

			position : new kakao.maps.LatLng(35.15905950440791,
					128.6866172173842),
			text : '경화역 벚꽃길' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다     
		} ];

		var staticMapContainer = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
		staticMapOption = {
			center : new kakao.maps.LatLng(35.15905950440791, 128.6866172173842), // 이미지 지도의 중심좌표
			level : 3, // 이미지 지도의 확대 레벨
			marker : markers
		// 이미지 지도에 표시할 마커 
		};

		// 이미지 지도를 생성합니다
		var staticMap = new kakao.maps.StaticMap(staticMapContainer,
				staticMapOption);
	</script>
</body>

</html>