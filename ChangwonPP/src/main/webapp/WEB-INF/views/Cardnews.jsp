<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Cardnews.css"/>" />
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
           <a href="CardnewsUpload">뉴스등록하기</a>
            <h2>카드뉴스</h2> <br><br>
            <div class="event">
            <c:forEach var="click" items="${NewsList}">
                <div class="event1">
                    <a href="Cardnews_Detail/${click.news_num}" class="link">
                        <img src="./resources/savecardnews/${click.news_img}">
                        <p class="p_title">${click.news_name}</p>
                    </a>
                </div>
              </c:forEach>  
            </div>
        </section>
    </div>
    <jsp:include page="Main_Footer.jsp" />
</body>

</html>