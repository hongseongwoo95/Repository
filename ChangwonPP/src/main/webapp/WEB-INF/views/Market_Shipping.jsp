<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Market_Shipping.css"/>" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/js/Market_Shipping.js"/>"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Market_Shipping</title>
</head>

<body>
	<jsp:include page="Main_Nav.jsp" />
	<div class="container">
		<section class="cart">
			<form action="#">
				<h1>배송정보</h1>
				<br>
				<div class="cart_main">
					<div class="cart_main_1">
						<div>
							<div class="tabs">
								<input id="all" type="radio" name="tab_item" checked> <label
									class="tab_item" for="all">기본배송지</label> <input
									id="programming" type="radio" name="tab_item"> <label
									class="tab_item" for="programming">직접입력</label>
								<div class="tab_content" id="all_content">
									<form action="#">
										<div>이름 :${memberName }</div>
										<div>주소 :${memberAddr }</div>
										<div>연락처 :${memberPhone }</div>
										<select name="" id="">
											<option value="">배송시 요청사항 선택하기</option>
											<option value="">직접 수령하겠습니다</option>
											<option value="">문 앞에 놔두세요</option>
											<option value="">배송 전 휴대폰으로 전화주세요</option>
											<option value="">경비실에 맡겨주세요</option>
										</select>
									</form>
								</div>
								<div class="tab_content" id="programming_content">
									<input type="text" name="name" placeholder="이름" class="name">
									<br> <select class="phonenum">
										<option>010</option>
										<option>011</option>
										<option>017</option>
										<option>019</option>
									</select> - <input type="text" class="phonenum" size="4"
										oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									- <input type="text" class="phonenum" size="4"
										oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"><br>
									<input type="text" id="sample6_postcode" placeholder="우편번호" class="name"> 
									<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" id="sample6_address" placeholder="주소" class="name"><br> 
									<input type="text" id="sample6_detailAddress" placeholder="상세주소" class="name">
									<input type="text" id="sample6_extraAddress" placeholder="참고항목" class="name"> <br> 
									<select name="" id="" class="name1">
										<option value="">배송시 요청사항 선택하기</option>
										<option value="">직접 수령하겠습니다</option>
										<option value="">문 앞에 놔두세요</option>
										<option value="">배송 전 휴대폰으로 전화주세요</option>
										<option value="">경비실에 맡겨주세요</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="cart_main_2"><br>
						<h3>포인트적립혜택</h3><br>
						<p>적립 혜택이 없습니다.
						<hr><br>
						<h3>결제예정금액</h3><br>
						<div class="cart_money">
							<div><span>상품금액</span></div>
							<div><span>0원</span></div>
						</div><br>
						<div class="cart_money">
							<div><span>할인금액</span></div>
							<div><span>0원</span></div>
						</div><br>
						<div class="cart_sum">
							<div><span>합계</span></div>
							<div><span>0원</span></div>
						</div><br>
						<button class="order_button" onclick="showPopup(event)">주문하기</button>
					</div>
				</div>
			</form>
		</section>
		<article>
			<h1>주문상품</h1>
			<br>
			<div class="cart_main">
				<div class="cart_main_1">
					<div class="choice">
						&nbsp;&nbsp;<span> <label for="product"> <input type="checkbox" name="product" onclick='selectAll(this)' />
						</label> <span>전체선택</span></span>
					</div><hr><br>
					<div>
						<h4><a href="#">${product.p_brand}</a></h4><br>
						<hr class="hrc">
					</div>
					<div class="cart_prod">
						<ul>
							<li class="product_list">
								<div class="product_list1">
									<label for="product" id="product_check"> <input type="checkbox" name="product"> </label>&nbsp;&nbsp;
									<div class="list1">
										<img src="<c:url value="/resources/savemarket/${product.p_img}"/>" id="ship_img">
									</div>
									<div class="list2">
										<div class="list3"><a href="#" class="mo">${product.p_name}</a></div>
									</div>
								</div>
								<div class="product_price"><h3>가격 ${product.p_price}원</h3></div>
								<div class="free_shipping"><h3>무료배송</h3></div>
							</li>
						</ul>
					</div>
					<hr>
				</div>
			</div>
		</article>
	</div>
<script>
function showPopup(event) {
    event.preventDefault(); // 이벤트 막기
    alert("상품이 주문되었습니다.");
    location.href = "/ChangwonPP/MarketMain"; // 이동할 URL
}
</script>
</body>

</html>