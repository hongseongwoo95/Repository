<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/Find_ID.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find_ID</title>
</head>

<body>
    <form action="#" class="container">
        <div class="homebutton">
            <a href="/ChangwonPP/"> <!--홈페이지넣기-->
                <img src="<c:url value="/resources/images/Nav/Changwon PP logo1.png"/>"/>
            </a>
        </div>

        <h1 class="idsearch">아이디찾기</h1><br><hr><br>


        <div class="tabmenu">
            <ul>
                <li id="tab1" class="btnCon">
                    <input type="radio" name="tabmenu" id="phonecheck" class="tabtab">
                    <label for="phonecheck" class="tab">휴대폰 번호로 찾기</label>
                    <div class="check">
                        <p>
                            <strong>휴대전화인증</strong> <br>
                            <input type="text" name="name" placeholder="이름" class="name"> <br>
                            <select class="phonenum">
                                <option>010</option>
                                <option>011</option>
                                <option>017</option>
                                <option>019</option>
                            </select>
                            - <input type="text" class="phonenum"
                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                            - <input type="text" class="phonenum"
                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                            <br><input type="submit" value="확인" class="submitbutton">
                    </div>
                </li>

                <li id="tab1" class="btnCon">
                    <input type="radio" name="tabmenu" id="emailcheck" class="tabtab">
                    <label for="emailcheck" class="tab">이메일로 찾기</label>
                    <div class="check">
                        <p>
                            <strong>이메일인증</strong> <br>
                            <input type="text" placeholder="이름" class="name"> <br>
                            <input type="email" placeholder="이메일을 입력해주세요" class="name">
                            <input type="submit" value="확인" class="submitbutton">
                    </div>
                </li>
            </ul>
        </div>
    </form>
</body>

</html>