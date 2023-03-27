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
				<div class="page">
					<ul class="page_select">
						<li><a href="#" class="prev-page">이전</a></li>
						<li><a href="#" class="next-page">다음</a></li>
					</ul>
				</div>
				<c:if test="${m_id != null }">
					<div class="write">
						<a href="<c:url value="/Post"/>" class="btn_write">글쓰기</a>
					</div>
				</c:if>
			</div>
		</div>
	</section>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="Main_Footer.jsp" />
	<script>
		var prevBtn = document.querySelector('.page_select li:first-child a');
		var nextBtn = document.querySelector('.page_select li:last-child a');
	
		function getCurrentPageNum() {
			var uri = window.location.href;
			var pageNum = uri.substr(uri.lastIndexOf('/') + 1);
			return pageNum;
		}
	
		prevBtn.addEventListener('click', function(e) {
			e.preventDefault(); // 기본 동작(링크 이동) 막기
			var pageNum = getCurrentPageNum();
			pageNum = parseInt(pageNum) - 1;
			if (pageNum > 0) {
				window.location.href = "/ChangwonPP/Board/" + pageNum;
			} else {
				window.location.href = "/ChangwonPP/Board/1";
			}
		});
	
		nextBtn.addEventListener('click', function(e) {
			e.preventDefault(); // 기본 동작(링크 이동) 막기
			var pageNum = getCurrentPageNum();
			pageNum = parseInt(pageNum) + 1;
			window.location.href = "/ChangwonPP/Board/" + pageNum;
		});
	</script>
</body>

</html>