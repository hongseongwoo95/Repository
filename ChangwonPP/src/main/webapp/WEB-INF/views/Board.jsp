<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Board.css"/>"/>
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
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
					<c:forEach var="bd" items="${boardList}">
						<tr class="tr2">
							<td class="b_num">${bd.b_num}</td>
							<td class="tb_title b_title"><a href="<c:url value="/BoardDetail/${bd.b_num}"/>">${bd.b_title}</a></td>
							<td class="b_writer">${bd.b_writer}</td>
							<td class="b_date">${bd.cal_date}</td>
							<td class="b_views">${bd.b_views}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="tbot">
				<div class="page"> <!-- 게시판 페이지 넘버가 생성되는 부분 -->
					<ul class="page_select">
						<c:if test="${paging.prev eq true}">
					        <li><a href='<c:url value="/Board/${paging.startPage - 1}"/>'>&lt;</a></li>
					    </c:if>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
							<li>
								<a href='<c:url value="/Board/${num }"/>'>
									<c:choose>
										<c:when test="${page==num }">
											<font class="activepage">${num }</font>
										</c:when>
										<c:otherwise>
											<font>${num }</font>
										</c:otherwise>
									</c:choose>					
								</a>
							</li>
						</c:forEach>
						<c:if test="${paging.next eq true }">
					        <li><a href='<c:url value="/Board/${paging.endPage + 1}"/>'>&gt;</a></li>
					    </c:if>
					</ul>
				</div><br>
				<c:if test="${m_id != null && m_type == 2 }">
					<div class="post">
						<a href="<c:url value="/Post"/>">글쓰기</a>
					</div>
				</c:if>
			</div>
		</div>
	</section>
	<jsp:include page="Main_Footer.jsp" />
</body>

</html>