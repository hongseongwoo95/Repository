<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Upload.css" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="./resources/smarteditor/js/jquery-3.6.4.min.js" charset="utf-8"></script>
<script type="text/javascript" src="./resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="./resources/js/Market_Upload.js"></script>
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<title>Market_Upload</title>
</head>
<body>
   <jsp:include page="Main_Nav.jsp" />
   <div class="container">
      <article>
        <div class="side">
                    <div class="sidetap"><a href="InfoPointplace">포인트환전</a></div>
                    <div class="sidetap"><a href="MarketShipping">배송지주소</a></div>
                    <div class="sidetap"><a href="MarketUpload">판매하기</a></div>
                    <div class="sidetap"><button class="topbutton" value="맨위로"
                            onClick="javascript:window.scrollTo(0,0)">맨위로</button></div>
                </div>
      </article>
      <br> <br> <br> <br> <br> <br>
         <form:form action="MarketUpload" modelAttribute="Product" enctype="multipart/form-data" class="middle" method="post">
         	<h1>플리:마켓 상품등록</h1><br>
            <div>
                <img id="preview" /> <br><br>
                    <form:input type="file" path="imgfile" id="imgfile" onchange="readURL(this);"/> 
                    <label for="imgfile"></label>
            </div>
            <br> <br>
            <div class="pname">
               <h2>상품이름</h2>
               <form:input type="text" path="p_name" placeholder="상품이름을 입력해주세요" class="pnameinput" />
            </div>
            <br> <br>
            <div class="price">
               <h2>상품가격</h2>
               <form:input type="text" path="p_price" placeholder="상품가격을 입력해주세요" class="priceinput" 
               oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
            </div>
            <br> <br>
            <div>
               <h2>상품상태</h2> <br> 
               <form:radiobutton  path="p_condition"  value="새상품"/> 새상품 
               <form:radiobutton  path="p_condition" value="중고상품" /> 중고상품
            </div>
            <br> <br>
            <div class="price">
               <h2>참고사항</h2>
               <form:input type="text" path="p_notice" placeholder="참고사항을 입력해주세요" class="priceinput"/>
            </div>
            <br> <br>
            <div class="price">
               <h2>판매처</h2>
               &nbsp;&nbsp;&nbsp;&nbsp; 
               <form:input type="text" path="p_brand" placeholder="판매처를 입력해주세요" class="priceinput"/>
            </div>
            <br> <br>
   
            <h2>상품내용등록</h2>
            <br>
            <div id="smarteditor"> <!-- 네이버 스마트 에디터 2.0 적용 -->
	       		<form:textarea path="p_content" id="editorTxt" class="details" rows="20" cols="10"  placeholder="내용을 입력해주세요" style="width: 100%; height: 500px;" 
	       		required="required"></form:textarea>
	   	   </div>
            <br> <br>
            <div class="last">
               <input type="submit" value="등록" class="lastbutton">&nbsp;
               <a href="<c:url value="/MarketMain"/>" class="btn-reset lastbutton">취소</a>
            </div>
         </form:form>
      <br><br><br><br>
   </div>
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