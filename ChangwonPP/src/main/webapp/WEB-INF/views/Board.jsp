<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Board.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
	<section class="container">
		<div class="board">
			<p class="employ_title">공지사항
			<table class="table">
				<thead class="thead">
					<tr class="tr1">
						<th class="th_number">번호</th>
						<th class="th_title">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody class="tbody">
					<c:forEach var="board" items="${boardList}">
						<tr>
							<td class="b_num">${board.b_num}</td>
							<td class="tb_title b_title"><a href="">${board.b_title}</a></td>
							<td class="b_writer">${board.b_writer}</td>
							<td class="b_date">${board.b_date}</td>
							<td class="b_views">${board.b_views}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="tbot">
				<div class="page">
					<ul class="page_select">
						<li><a href="#">이전</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">다음</a></li>
					</ul>
				</div>
				<c:if test="${m_id != null }">
					<div class="write">
						<a href="Post" class="btn_write">글쓰기</a>
					</div>
				</c:if>
			</div>
		</div>
	</section>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>

</html>