<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<c:url value="/resources/js/Add_Member.js"/>"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
            <form:input size="30" path="m_id" placeholder="아이디(6-12자 이내, 영문,숫자 사용가능)" class="input" minlength="6" maxlength="12" required="required"/>
            <div class="error-message"></div>
            <h4>비밀번호</h4>
            <form:password size="30" path="m_pw" placeholder="비밀번호(8-20자 이내, 문자,숫자,기호 사용가능)" minlength="8" maxlength="20" class="input" required="required"/>
            <h4>비밀번호 재확인</h4>
            <form:password size="30" path="" placeholder="비밀번호를 다시 입력해주세요" minlength="8" maxlength="20" class="input" required="required"/>
            <h4>이름</h4>
            <form:input size="30" path="m_name" placeholder="이름을 입력해주세요" class="input" required="required"/>
            <h4>생년월일</h4>
            <div class="daybox">
                <form:input size="10" path="m_birthday1" placeholder="년(4자)" maxlength="4" class="input2"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required"/>
                <form:input size="10" path="m_birthday2" placeholder="월(2자)" maxlength="2" class="input2"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required"/>
                <form:input size="10" path="m_birthday3" placeholder="일(2자)" maxlength="2" class="input2"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required"/>
            </div>
            <h4>본인확인 이메일</h4>
            <form:input type="email" size="30" path="m_mail" placeholder="이메일을 입력해주세요." class="input" required="required"/>
            <h4>휴대전화</h4>
            <form:select class="input3" path="m_phone1" required="required">
                <form:option value="010">010</form:option>
                <form:option value="011">011</form:option>
                <form:option value="017">017</form:option>
                <form:option value="019">019</form:option>
            </form:select>
            - <form:input type="text" size="10" path="m_phone2" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required"/>
            - <form:input type="text" size="10" path="m_phone3" maxlength="4" class="input3"
                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required"/>   
            <input type="button" onclick="sample6_execDaumPostcode()" value="주소검색" class="serchaddr"/>
            <form:input type="text" id="sample6_postcode" placeholder="우편번호" class="postnum input2" path="m_postnum" readonly="true"/> 
			<form:input type="text" id="sample6_extraAddress" placeholder="참고항목" class="exad input2" path="m_exad" readonly="true"/>
			<form:input type="text" id="sample6_address" placeholder="주소" class="addr input" path="m_addr1" readonly="true"/><br> 
			<form:input type="text" id="sample6_detailAddress" placeholder="상세주소" class="addr input" path="m_addr2" />
            <h4>성별</h4>
            <form:radiobutton path="m_sex" class="radio" value="male" required="required"/>남성
			<form:radiobutton path="m_sex" class="radio" value="female" required="required"/>여성
            <input type="submit" value="회원가입" class="submit"/>
        </form:form>
    </div>
</body>

</html>