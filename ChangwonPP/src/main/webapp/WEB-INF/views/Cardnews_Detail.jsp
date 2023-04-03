<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Cardnews_Detail.css"/>" />
<meta charset="UTF-8">
<title>Cardnews_Detail</title>
</head>
<body>
   <jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <article class="news_body">
            <div class="news_title">
                <p>${news.news_name}</p>
            </div>
            <hr>
            <div class="news_button">
                <ul>                          
                    <li><a href="/ChangwonPP/Cardnews">글목록</a></li>
                </ul>
            </div>
            <div class="news_img">${news.news_img}</div>
            <div class="news_text">${news.news_content}</div>
        </article>
    </div>
    <br>
    <jsp:include page="Main_Footer.jsp" />
</body>
</html>