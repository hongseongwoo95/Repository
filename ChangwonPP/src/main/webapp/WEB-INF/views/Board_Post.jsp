<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Board_Post.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board_Post</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <form:form modelAttribute="NewPost" action="Post" class="postarea">
            <p class="post_text">제목</p>
            <form:input path="b_title" size="40" placeholder="제목을 입력해주세요" class="post_title_input"/>
            <p class="post_text">내용</p>
            <form:textarea path="b_content" rows="35" placeholder="내용을 입력해주세요"></form:textarea>
            <div class="btn-right">
                <input type="submit" value="등록" class="btn-submit">
                <a href="<c:url value="/Board"/>" class="btn-reset">취소</a>
            </div>
        </form:form>
    </div>
    <br><br><br><br><br><br><br><br><br>
    <jsp:include page="Main_Footer.jsp" />
    <!-- textarea에 필요시 wysiwyg 에디터 적용할 것. (네이버 스마트 에디터 2.0 or API)  -->
</body>

</html>