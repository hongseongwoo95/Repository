<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Board_Employ.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board_Employ</title>
<link rel="stylesheet" type="text/css" href="test.css">
</head>

<body>
    <jsp:include page="Main_Nav.jsp" />
    <section class="container">
        <div class="board">
            <p class="employ_title">채용정보
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
                    <tr>
                        <td class="td_number">1</td>
                        <td class="td_title"><a href="">아이티에듀넷 강사 구인공고</a></td>
                        <td>관리자</td>
                        <td>2023-02-09</td>
                        <td>1</td>
                    </tr>
                </tbody>
                <tbody class="tbody">
                    <tr>
                        <td class="td_number">2</td>
                        <td class="td_title"><a href="">창원시청 계약직 공무원 하반기 모집공고</a></td>
                        <td>관리자</td>
                        <td>2023-02-10</td>
                        <td>23</td>
                    </tr>
                </tbody>
            </table>
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
            <div>글쓰기</div>
        </div>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>