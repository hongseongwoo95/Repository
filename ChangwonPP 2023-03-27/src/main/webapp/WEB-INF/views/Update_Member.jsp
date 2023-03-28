<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <a href="/ChangwonPP/"><img src="<c:url value="/resources/images/Nav/Changwon PP logo1.png"/>" class="mainlogo"></a>
        </div>
        <h2>정보수정</h2>
        <br>
        <hr><br>
        <form:form modelAttribute="Update" action="MainPage" method="post"> <!-- 회원정보 수정 기능. mapping시켜서 처리할 예정 -->
            <h4>아이디</h4>
            <form:input size="30" path="id" placeholder="아이디를 입력해주세요" class="input" value="id" readonly></form:input>
            <h4>비밀번호</h4>
            <form:input type="password" size="30" path="pw" placeholder="비밀번호를 입력해주세요" minlength="4" maxlength="20"
                class="input" value=""></form:input>
            <h4>비밀번호 재확인</h4>
            <form:password size="30" path="checkpw" placeholder="비밀번호를 다시 입력해주세요" class="input" value=""></form:password>
            <h4>이름</h4>
            <form:input size="30" path="name" placeholder="이름을 입력해주세요" class="input" value="name"></form:input>
            <h4>생년월일</h4>
            <form:input size="10" path="birthday" placeholder="년(4자)" maxlength="4" class="input2" value="" readonly></form:input>
            <form:input size="10" path="birthday" placeholder="월" maxlength="2" class="input2" value="" readonly></form:input>
            <form:input size="10" path ="birthday" placeholder="일" maxlength="2" class="input2" value="" readonly></form:input>
            <h4>본인확인 이메일</h4>
            <form:input type="email" size="30" path="email" placeholder="이메일을 입력해주세요" class="input" value="email"></form:input>
            <h4>휴대전화</h4>
            <form:select class="input3" path="phonenumber">
                <form:option value="010">010</form:option>
                <form:option value="011">011</form:option>
                <form:option value="017">017</form:option>
                <form:option value="019">019</form:option>
            </form:select>
            - <form:input type="text" size="10" path="phonenumber" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="2222"></form:input>
            - <form:input type="text" size="10" path="phonenumber" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="3333"></form:input>
            <h4>성별</h4>
            <form:radiobutton path="m_sex" id="male" class="radio" onclick="return false"/>남성
            <form:radiobutton path="m_sex" id="female" class="radio" onclick="return false"/>여성
            <input type="submit" value="정보수정" class="submit">
        </form:form>
    </div>
</body>

</html>