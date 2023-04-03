<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
         /* 전체 초기화 */
         * {
            margin: 0;
            padding: 0;
            text-decoration: none;
            list-style: none;
            color: black;
        }

        /* 컨테이너 */
        .container {
            width: 70%;
            margin: 0 auto;
        }
        /*사진담는 박스*/
        #preview{
            width: 40%;
            height: 300px;
        }
        .newsname{
            display: flex;
        }
        .newsnameinput{
            margin-left: 3%;
            width: 500px;
            height: 30px;
        }
        #details{
            width: 70%;
            height: 400px;
            padding: 20px 20px;
            
        }
        /*등록, 취소 버튼*/
        .last{
            display: flex;
            justify-content: right;
            margin-right: 30%;
        }
        .lastbutton{
            width: 120px;
            height: 30px;
        }

    </style>
    <title>Cardnews_Upload</title>
</head>
<body>
<jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <form:form action="CardnewsUpload" method="post" modelAttribute="News" enctype="multipart/form-data" class="middle">
            <h1>카드뉴스 등록</h1> <br><br>
            <div>
                 <img id="preview" /> <br><br>
                    <form:input type="file" path="imgfile" id="imgfile" onchange="readURL(this);"/> 
                    <label for="imgfile">
                    </label>
            </div><br><br>
            <div class="newsname">
                <h2>뉴스제목</h2>
                <form:input type="text" path="news_name" placeholder="뉴스제목을 입력해주세요" class="newsnameinput"/>
            </div><br><br>
            <h2>뉴스내용등록</h2> <br>
            <form:textarea path="news_content" id="details" placeholder="내용을 입력해주세요"></form:textarea> <br><br>
            <div class="last">
                <input type="submit" value="등록" class="lastbutton">
                <input type="reset" value="취소" class="lastbutton">
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
</script>
</body>
</html>