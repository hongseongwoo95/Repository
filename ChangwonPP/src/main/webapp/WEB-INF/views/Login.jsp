<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Login.css" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인페이지</title>
</head>

<body>
    <div class="container">
            <div class="home_icon">
                <a href="/ChangwonPP/"><img class="mainlogo" src="<c:url value="/resources/images/Nav/Changwon PP logo1.png"/>"/></a>
            </div>
            <hr><br>
        <form:form action="LoginSubmit" modelAttribute="Login" class="form" method="post">
            <form:input path="m_id" placeholder="아이디" class="login_input"/>
            <form:password path="m_pw" minlength="8" maxlength="20" placeholder="비밀번호 8자~20자" class="login_input"/>
            <input type="submit" value="로그인" class="login_input">
        </form:form>

        <p class="ID_PW">
            <a href="FindID" class=>ID찾기</a> |
            <a href="FindPW">비밀번호찾기</a>
        </p> <br>
          
        <div class="loginicon">
            <a href="#">
            	<img src="<c:url value="/resources/images/Login/btnG_완성형.png"/>"/>
            </a>
            <a href="#">
         		<img src="<c:url value="/resources/images/Login/kakao_login_large_narrow.png"/>"/>
            </a>
        </div> <br>
        <div class="join_box">
            <div class="join">
                <a href="AddMember">회원가입</a>
            </div>
        </div>


    </div>
</body>

</html>