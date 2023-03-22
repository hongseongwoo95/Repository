<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Cardnews.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cardnews</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <section>
            <h2><a href="#">카드뉴스</a></h2> <br><br>
            <div class="event">
                <div class="event1">
                    <a href="#" class="link">
                        <img src="./resources/images/Cardnews/1.jpg">
                        <p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
                        <p class="p_date">2023.02.09</p>
                    </a>
                </div>
                <div class="event1">
                    <a href="#" class="link">
                        <img src="./resources/images/Cardnews/2.jpg">
                        <p class="p_title">창원특례시, 청년구직자 면접정장 무료 대여 확대 실시</p>
                        <p class="p_date">2023.02.08</p>
                    </a>
                </div>
                <div class="event1">
                    <a href="#" class="link">
                        <img src="./resources/images/Cardnews/3.jpg">
                        <p class="p_title">창원특례시, 이동노동자 쉼터 마산합포구 오동동에 추가 개소</p>
                        <p class="p_date">2023.02.07</p>
                    </a>
                </div>
            </div>
            <div class="event">
                <div class="event1">
                    <a href="#" class="link">
                        <img src="./resources/images/Cardnews/4.jpg">
                        <p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
                        <p class="p_date">2023.02.06</p>
                    </a>
                </div>
                <div class="event1">
                    <a href="#" class="link">
                        <img src="./resources/images/Cardnews/5.jpg">
                        <p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
                        <p class="p_date">2023.02.05</p>
                    </a>
                </div>
                <div class="event1">
                    <a href="#" class="link">
                        <img src="./resources/images/Cardnews/6.jpg">
                        <p class="p_title">현대비앤지스틸(주), 창원특례시에 주거환경개선 지원</p>
                        <p class="p_date">2023.02.04</p>
                    </a>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="Main_Footer.jsp" />
</body>

</html>