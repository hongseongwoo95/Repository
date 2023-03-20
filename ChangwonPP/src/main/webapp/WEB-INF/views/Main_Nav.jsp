<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Main_Nav.css" />
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
                        <a href="/ChangwonPP/"><img src="./resources/images/Nav/Changwon PP logo1.png" class="mainlogo"></a>
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
                <a href="Login" class="navbar_menu"><i class="fas fa-sign-in-alt"></i>로그인</a> |
                <a href="Add_Member" class="navbar_menu"><i class="fas fa-user"></i></i>회원가입</a>
            </div>
        </nav>
        <hr>
        <br>
        <div class="header2">
            <ul class="menu">
                <li class="menu1">
                    <a href="Board_Info">공지사항</a>
                </li>
                <li class="menu1">
                    <a href="Cardnews">카드뉴스</a>
                </li>
                <li class="menu1">
                    <a href="Event_Page">행사</a>
                </li>
                <li class="menu1">
                    <a href="Board_Employ">채용정보</a>
                </li>
                <li class="menu1">
                    <a href="Bus">버스정보</a>
                </li>
                <li class="menu1">
                    <a href="Market_Main">플리:마켓</a>
                </li>
            </ul>
        </div>
        <br>
        <hr>
        <br>
    </div>
</body>

</html>