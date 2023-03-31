<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Board_Detail.css"/>" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board_Detail</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <article class="board">
            <div class="board_title">
                <p>${board.b_title }</p>
            </div>
            <div class="board_info">
                <h3>작성자</h3>&nbsp;
                <p>${board.b_writer }</p>&nbsp;<span>|</span>&nbsp;
                <h3>작성일</h3>&nbsp;
                <p>${board.b_date }</p>&nbsp;<span>|</span>&nbsp;
                <h3>조회수</h3>&nbsp;
                <p>${board.b_views }</p>

            </div>
            <hr>
            <div class="board_button">
				<ul>
					<c:if test="${prevNum > 0}">
						<li><a href="<c:url value='/BoardDetail/${prevNum}'/>">이전글</a></li>
					</c:if>
					<c:if test="${nextNum <= boardlist.size()}">
						<li><a href="<c:url value='/BoardDetail/${nextNum}'/>">다음글</a></li>
					</c:if>
					<li><a href="/ChangwonPP/Board">글목록</a></li>
				</ul>
            </div>
            <div class="board_text">${board.b_content }</div>
        </article>
    </div>
    <br>
    <jsp:include page="Main_Footer.jsp" />
</body>
</html>