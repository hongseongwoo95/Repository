<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Add_Member.css">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add_Member</title>
</head>

<body>
    <div class="container">
        <div class="logo_box">
            <a href="/ChangwonPP/"><img src="./resources/images/Nav/Changwon PP logo1.png" class="mainlogo"></a>
        </div>
        <h2>회원가입</h2>
        <br>
        <hr><br>
        <form:form modelAttribute="NewMember" action="AddMemberSubmit" method="post">
            <h4>아이디</h4>
            <form:input size="30" path="m_id" placeholder="아이디를 입력해주세요" class="input"/>
            <h4>비밀번호</h4>
            <form:password size="30" path="m_pw" placeholder="비밀번호를 입력해주세요" minlength="8" maxlength="20" class="input"/>
            <h4>비밀번호 재확인</h4>
            <form:password size="30" path="" placeholder="비밀번호를 다시 입력해주세요" minlength="8" maxlength="20" class="input"/>
            <h4>이름</h4>
            <form:input size="30" path="m_name" placeholder="이름을 입력해주세요" class="input"/>
            <h4>생년월일</h4>
            <div class="daybox">
                <form:input size="10" path="m_birthday1" placeholder="년(4자)" maxlength="4" class="input2"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
                <form:input size="10" path="m_birthday2" placeholder="월" maxlength="2" class="input2"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
                <form:input size="10" path="m_birthday3" placeholder="일" maxlength="2" class="input2"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
            </div>
            <h4>본인확인 이메일</h4>
            <form:input type="email" size="30" path="m_mail" placeholder="이메일을 입력해주세요" class="input"/>
            <h4>휴대전화</h4>
            <form:select class="input3" path="m_phone1">
                <form:option value="010">010</form:option>
                <form:option value="011">011</form:option>
                <form:option value="017">017</form:option>
                <form:option value="019">019</form:option>
            </form:select>
            - <form:input type="text" size="10" path="m_phone2" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
            - <form:input type="text" size="10" path="m_phone3" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
            <h4>성별</h4>
            <form:radiobutton path="m_sex" class="radio" value="male"/>남성
			<form:radiobutton path="m_sex" class="radio" value="female"/>여성
            <input type="submit" value="회원가입" class="submit"/>
        </form:form>
    </div>
</body>

</html>