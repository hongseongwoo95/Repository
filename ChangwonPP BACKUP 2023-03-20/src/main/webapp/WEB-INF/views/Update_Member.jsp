<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Update_Member.css">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update_Member</title>
</head>

<body>
    <div class="container">
        <div class="logo_box">
            <a href="main.html">
            <img src="./resources/images/nav/Changwon PP logo1.png" class="mainlogo"></a>
        </div>
        <h2>정보수정</h2>
        <br>
        <hr><br>
        <form action="#" method="post">
            <h4>아이디</h4>
            <input type="text" size="30" name="id" placeholder="아이디를 입력해주세요" class="input" value="changwonpp" readonly>
            <h4>비밀번호</h4>
            <input type="password" size="30" name="pw" placeholder="비밀번호를 입력해주세요" minlength="4" maxlength="20"
                class="input" value="pp1234">
            <h4>비밀번호 재확인</h4>
            <input type="password" size="30" name="checkpw" placeholder="비밀번호를 다시 입력해주세요" class="input" value="pp1234">
            <h4>이름</h4>
            <input type="text" size="30" name="name" placeholder="이름을 입력해주세요" class="input" value="김창원">
            <h4>생년월일</h4>
            <input type="text" size="10" name="birthday" placeholder="년(4자)" maxlength="4" class="input2" value="1995"
                readonly>
            <input type="text" size="10" name="birthday" placeholder="월" maxlength="2" class="input2" value="01"
                readonly>
            <input type="text" size="10" name="birthday" placeholder="일" maxlength="2" class="input2" value="01"
                readonly>
            <h4>본인확인 이메일</h4>
            <input type="email" size="30" name="email" placeholder="이메일을 입력해주세요" class="input" value="changwonpp.gmail.com">
            <h4>휴대전화</h4>
            <select class="input3" name="phonenumber">
                <option>010</option>
                <option>011</option>
                <option>017</option>
                <option>019</option>
            </select>
            - <input type="text" size="10" name="phonenumber" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="2222">
            - <input type="text" size="10" name="phonenumber" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="3333">
            <h4>성별</h4>
            <input type="radio" name="gender" id="male" class="radio" checked onclick="return false">남성
            <input type="radio" name="gender" id="female" class="radio" onclick="return false">여성
            <input type="submit" value="정보수정" class="submit">
        </form>
    </div>
</body>

</html>