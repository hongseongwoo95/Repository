<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Upload.css" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<title>Flea_Upload</title>
</head>
<body>
	<jsp:include page="Main_Nav.jsp" />
	<div class="container">
		<article>
			<div class="side">
				<div class="sidetap">
					<a href="#"><img src="">포인트환전</a>
				</div>
				<div class="sidetap">
					<a href="#"><img src="">배송지주소</a>
				</div>
				<div class="sidetap">
					<a href="#"><div>판매하기</div></a>
				</div>
				<div class="sidetap">
					<button class="topbutton" value="맨위로" onClick="javascript:window.scrollTo(0,0)">맨위로</button>
				</div>
			</div>
		</article>
		</nav>
		<br> <br> <br> <br> <br> <br>
		<form action="#" class="middle">
			<h1>플리:마켓 상품등록</h1>
			<br> <br>
			<div>
				<h3 class="imgupload">사진첨부</h3>
				<br> <br> <input type="file" id="imgfile"> <label
					for="imgfile">
					<div class="button">첨부파일</div>
				</label>
			</div>
			<br> <br>
			<div class="pname">
				<h2>상품이름</h2>
				<input type="text" placeholder="상품이름을 입력해주세요" class="pnameinput">
			</div>
			<br> <br>
			<div class="price">
				<h2>상품가격</h2>
				<input type="text" placeholder="상품가격을 입력해주세요" class="priceinput">
			</div>
			<br> <br>
			<div>
				<h2>상품상태</h2>
				<br> <input type="radio" name="status"> 새상품 <input
					type="radio" name="status"> 중고상품
			</div>
			<br> <br>
			<div class="price">
				<h2>참고사항</h2>
				<input type="text" placeholder="참고사항을 입력해주세요" class="priceinput">
			</div>
			<br> <br>
			<div class="price">
				<h2>브랜드</h2>
				&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
					placeholder="브랜드명을 입력해주세요" class="priceinput">
			</div>
			<br> <br>

			<h2>상품내용등록</h2>
			<br>
			<textarea name="" id="details" placeholder="내용을 입력해주세요"></textarea>
			<br> <br>
			<div class="last">
				<input type="submit" value="등록" class="lastbutton"> <input
					type="reset" value="취소" class="lastbutton">
			</div>
		</form>
		<br><br><br><br>
	</div>
	<jsp:include page="Main_Footer.jsp" />
</body>
</html>