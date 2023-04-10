<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Board_Post.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="./resources/smarteditor/js/jquery-3.6.4.min.js" charset="utf-8"></script>
<script type="text/javascript" src="./resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board_Update</title>

</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <form:form modelAttribute="Update" action="Post" class="postarea">
            <p class="post_text">제목</p>
            <form:input path="b_title" size="40" placeholder="제목을 입력해주세요" class="post_title_input" required="required"/>
            
            <p class="post_text">내용</p>
            <div id="smarteditor"> <!-- 네이버 스마트 에디터 2.0 적용 -->
	       		<form:textarea path="b_content" id="editorTxt" rows="20" cols="10"  placeholder="내용을 입력해주세요" style="width: 100%; height: 500px;" 
	       		required="required"></form:textarea>
	   	   </div>
            <div class="btn-right">
                <input type="submit" value="등록" class="btn-submit" id="submitPost">
                <a href="<c:url value="/Board"/>" class="btn-reset">취소</a>
            </div>
        </form:form>
    </div>
    <br><br><br><br><br><br><br><br><br>
    <jsp:include page="Main_Footer.jsp" />
    
    <script>
        let oEditors = []
    
        smartEditor = function() { // 네이버 스마트에디터 스킨 설정
          console.log("Naver SmartEditor")
          nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "editorTxt",
            sSkinURI: "./resources/smarteditor/SmartEditor2Skin.html",
            fCreator: "createSEditor2"
          })
        }
    
        $(document).ready(function() {
       	  smartEditor();

       	  $("#submitPost").on("click", function() { // 제이쿼리로 form에 값을 입력하면 값을 불러올 수 있게 메서드 호출
       	    submitPost();
       	  });
       	});

        
        submitPost = function() { // form으로 입력한 값을 불러오는 메서드
		  oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])
		  let content = document.getElementById("editorTxt").value
		
		  if(content == '') {
		    alert("내용을 입력해주세요.")
		    oEditors.getById["editorTxt"].exec("FOCUS")
		    return
		  } else {
		    console.log(content)
		  }
		}
	</script>
</body>

</html>