<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cardnews_Detail</title>
</head>
<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <article class="news_body">
            <div class="news_title">
                <p>${card.c_title }</p>
            </div>
            <div class="news_info">
                <h3>작성자</h3>&nbsp;
                <p>${card.c_writer }</p>&nbsp;<span>|</span>&nbsp;
                <h3>작성일</h3>&nbsp;
                <p>${card.c_date }</p>&nbsp;<span>|</span>&nbsp;
                <h3>조회수</h3>&nbsp;
                <p>${card.c_views }</p>              
            </div>
            <hr>
            <div class="news_button">
                <ul>              				
                    <li><a href="/ChangwonPP/Cardnews">글목록</a></li>
                </ul>
            </div>
            <div class="news_img">${card.c_img}</div>
            <div class="news_text">${card.c_content }</div>
        </article>
    </div>
    <br>
    <jsp:include page="Main_Footer.jsp" />
</body>
</html>