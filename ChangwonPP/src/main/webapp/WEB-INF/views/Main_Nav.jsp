<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Main_Nav.css"/>"/>
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Main_Nav</title>
</head>

<body>
    <div class="container">
        <nav class="header">
            <div class="navbar">
                <h1>
                    <span class="home_icon">
                        <a href="/ChangwonPP/"><img src="<c:url value="/resources/images/Nav/Changwon PP logo1.png"/>" class="mainlogo"></a>
                    </span>
                </h1>
				<div class="searchbar">
                    <input type="text" placeholder="검색어를 입력해주세요" class="search" size="50">
                    <a href="#">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
            </div>
            <div>
            <c:choose>
				<c:when test="${m_id != null }">
					<div class="memberinfo">
						<p>${m_name }님 반갑습니다.
						<a href="#">내 정보</a>
						<a href="Logout" onclick="alert('로그아웃되었습니다.')">로그아웃</a>
					</div>
				</c:when>
           		<c:otherwise>
	                <a href="Login" class="navbar_menu"><i class="fas fa-sign-in-alt"></i>로그인</a> |
	                <a href="AddMember" class="navbar_menu"><i class="fas fa-user"></i></i>회원가입</a>           		
           		</c:otherwise>
            </c:choose>
             </div>
        </nav>
        <hr>
        <br>
        <div class="header2">
            <ul class="menu">
                <li class="menu1">
                    <a href="<c:url value="/Board"/>">공지사항</a>
                </li>
                <li class="menu1">
                    <a href="<c:url value="/Cardnews"/>">카드뉴스</a>
                </li>
                <li class="menu1">
                    <a href="<c:url value="/EventPage"/>">행사</a>
                </li>
                <li class="menu1">
                    <a href="<c:url value="/Bus"/>">버스정보</a>
                </li>
                <li class="menu1">
                    <a href="<c:url value="/MarketMain"/>">플리:마켓</a>
                </li>
            </ul>
        </div>
        <br>
        <hr>
        <br>
    </div>
</body>

</html>