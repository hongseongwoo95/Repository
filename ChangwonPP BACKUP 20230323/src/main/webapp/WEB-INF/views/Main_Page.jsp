<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="./resources/css/Main_Page.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ChangwonPP</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
	<div class="container">
		<section>
			<h2>
				<a href="Event_Page">최근행사</a>
			</h2>
			<br>
			<br>
			<ul class="event">
				<li class="event1">
					<a href="Event_Info" class="link"> 
					<img src="<c:url value="/resources/images/Event/event1.jpg"/>"/>
						<p class="p_title">진해 군항제</p>
						<p class="p_date">군항 도시에서 함께 즐기는 세계 최대 벚꽃 축제</p>
					</a>
				</li>
				<li class="event1">
					<a href="Event_Info" class="link"> 
					<img src="<c:url value="/resources/images/Event/event2.jpg"/>" />
						<p class="p_title">군악 의장 페스티벌</p>
						<p class="p_date">대한민국 해군의 모항 진해에서 울리는 미래의 선율!</p>
					</a>
				</li>
				<li class="event1">
					<a href="Event_Info" class="link"> 
					<img src="<c:url value="/resources/images/Event/event3.jpg"/>" />
						<p class="p_title">마산 국화축제</p>
						<p class="p_date">국화 한 줄기에 천 오백여송이 꽃을 피운 천향여심</p>
					</a>
				</li>
			</ul>
		</section>
		<hr>
		<br>
		<section>
			<h2>
				<a href="Cardnews">카드뉴스</a>
			</h2>
			<br>
			<br>
			<div class="event">
				<div class="event1">
					<a href="Cardnews" class="link"> 
						<img src="<c:url value="/resources/images/Cardnews/1.jpg"/>" />
						<p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
						<p class="p_date">2023.02.09</p>
					</a>
				</div>
				<div class="event1">
					<a href="Cardnews" class="link"> <img src="<c:url value="/resources/images/Cardnews/2.jpg"/>" />
						<p class="p_title">창원특례시, 청년구직자 면접정장 무료 대여 확대 실시</p>
						<p class="p_date">2023.02.08</p>
					</a>
				</div>
				<div class="event1">
					<a href="Cardnews" class="link"> <img src="<c:url value="/resources/images/Cardnews/3.jpg"/>" />
						<p class="p_title">창원특례시, 이동노동자 쉼터 마산합포구 오동동에 추가 개소</p>
						<p class="p_date">2023.02.07</p>
					</a>
				</div>
			</div>
			<div class="event">
				<div class="event1">
					<a href="Cardnews" class="link"> <img src="<c:url value="/resources/images/Cardnews/4.jpg"/>" />
						<p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
						<p class="p_date">2023.02.06</p>
					</a>
				</div>
				<div class="event1">
					<a href="Cardnews" class="link"> <img src="<c:url value="/resources/images/Cardnews/5.jpg"/>" />
						<p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
						<p class="p_date">2023.02.05</p>
					</a>
				</div>
				<div class="event1">
					<a href="Cardnews" class="link"> <img src="<c:url value="/resources/images/Cardnews/6.jpg"/>" />
						<p class="p_title">창원시보건소 제증명 및 유료검사 수수료 변경 안내</p>
						<p class="p_date">2023.02.04</p>
					</a>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="Main_Footer.jsp" />
</body>

</html>