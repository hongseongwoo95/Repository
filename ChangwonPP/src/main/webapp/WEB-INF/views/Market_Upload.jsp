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
            <form:textarea path="p_content" id="details" placeholder="내용을 입력해주세요" ></form:textarea>
            <br> <br>
            <div class="last">
               <input type="submit" value="등록" class="lastbutton">&nbsp; 
               <input type="reset" value="취소" class="lastbutton">
            </div>
         </form:form>
      <br><br><br><br>
   </div>
   <jsp:include page="Main_Footer.jsp" />
</body>
</html>