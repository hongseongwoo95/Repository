<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="./resources/css/Board_Employ_Detail.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board_Employ_Detail</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <article class="board">
            <div class="board_title">
                <p>창원시청 계약직 공무원 하반기 모집공고</p>
            </div>
            <div class="board_info">
                <h3>작성자</h3>&nbsp;&nbsp;
                <p>관리자</p>&nbsp;
                <h3>작성일</h3>&nbsp;&nbsp;
                <p>2023-02-13</p>&nbsp;
                <h3>조회</h3>&nbsp;&nbsp;
                <p>52회</p>&nbsp;
                <h3>댓글</h3>&nbsp;&nbsp;
                <p>0건</p>
            </div>
            <hr>
            <div class="board_button">
                <ul>
                    <li><a href="#">이전글</a></li>
                    <li><a href="#">다음글</a></li>
                    <li><a href="#">글목록</a></li>
                </ul>
            </div>
            <div class="board_text">내용</div>
        </article>
        <div class="comment">
            <p class="comment_title">댓글목록</p>
            <p class="comment_null">등록된 댓글이 없습니다.</p>
        </div>
    </div>
</body>
</html>