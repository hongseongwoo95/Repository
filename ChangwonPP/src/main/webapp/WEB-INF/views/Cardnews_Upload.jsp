<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="./resources/css/Cardnews_Upload.css" />
<script type="text/javascript" src="./resources/smarteditor/js/jquery-3.6.4.min.js" charset="utf-8"></script>
<script type="text/javascript" src="./resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cardnews_Upload</title>

</head>

<body>
	<jsp:include page="Main_Nav.jsp"/>
    <div class="container">
        <form:form action="CardnewsUpload" method="post" modelAttribute="News" enctype="multipart/form-data" class="middle">
            <h1>카드뉴스 등록</h1> <br>
            <div>
                 <img id="preview" /> <br><br>
                    <form:input type="file" path="imgfile" id="imgfile" onchange="readURL(this);"/> 
                    <label for="imgfile">
                    </label>
            </div><br>
            <div class="newsname">
                <h2>뉴스제목</h2><br>
                <form:input type="text" path="news_name" placeholder="뉴스제목을 입력해주세요" class="newsnameinput"/>
            </div><br>
            <h2>뉴스내용등록</h2> <br>
            <div id="smarteditor" style="width: 800px">
	       		<form:textarea path="news_content" id="editorTxt" class="details" rows="20" cols="10"  placeholder="내용을 입력해주세요" style="width: 70%; height: 500px;" 
	       		required="required"></form:textarea>
	   	   </div>
            <div class="last">
                <input type="submit" value="등록" class="lastbutton" id="submitPost">
                <a href="<c:url value="/Cardnews"/>" class="btn-reset lastbutton">취소</a>
            </div>
        </form:form>
    </div>
    <br><br><br><br>
   <jsp:include page="Main_Footer.jsp" />
  <script>
        function readURL(input) {
			if (input.files && input.files[0]) {
			    var reader = new FileReader();
			    reader.onload = function(e) {
			    document.getElementById('preview').src = e.target.result;
			    };
			    reader.readAsDataURL(input.files[0]);
			} else {
			    document.getElementById('preview').src = "";
			}
		}
        
        
        
        let oEditors = []
        
        smartEditor = function() { // 네이버 스마트에디터 스킨 설정
          console.log("Naver SmartEditor")
          nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "editorTxt", // form:textarea의 id에 해당하는 값. 이게 일치해야 스킨이 적용됨.
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