<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Event_Page.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event_Page</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <section>
            <div class="alarm">
            	<img src="<c:url value="/resources/images/Event/alarm.PNG"/>"/>
                <div>
                    <p class="alarm_title">D-15</p>
                    <p class="alarm_content">진해 군항제 2월 15일 ~ 27일</p>
                    <p class="alarm_content">장소 : 진해 로타리</p>
                </div>
            </div>
            <br>
            <h2><a href="#">최근 행사</a></h2><br><br>
			<ul class="event">
				<li class="event1">
					<a href="EventInfo" class="link"> 
					<img src="<c:url value="/resources/images/Event/event1.jpg"/>"/>
						<p class="p_title">진해 군항제</p>
						<p class="p_date">군항 도시에서 함께 즐기는 세계 최대 벚꽃 축제</p>
					</a>
				</li>
				<li class="event1">
					<a href="EventInfo" class="link"> 
					<img src="<c:url value="/resources/images/Event/event2.jpg"/>" />
						<p class="p_title">군악 의장 페스티벌</p>
						<p class="p_date">대한민국 해군의 모항 진해에서 울리는 미래의 선율!</p>
					</a>
				</li>
				<li class="event1">
					<a href="EventInfo" class="link"> 
					<img src="<c:url value="/resources/images/Event/event3.jpg"/>" />
						<p class="p_title">마산 국화축제</p>
						<p class="p_date">국화 한 줄기에 천 오백여송이 꽃을 피운 천향여심</p>
					</a>
				</li>
			</ul>
        </section>
    </div>
    <jsp:include page="Main_Footer.jsp" />
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>