<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Shipping.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shipping</title>
</head>

<body>
    <div class="container">
        <nav class="header">
            <div class="navbar">
                <h1>
                    <span class="home_icon">
                        <a href="main.html"><img src="./images/nav/Changwon PP logo1.png" class="mainlogo"></a>
                    </span>
                </h1>
                <form action="#">
                    <fieldset class="search">
                        <input type="text" name="통합검색" placeholder="검색어를 입력하세요" id="search_01">
                        <input type="submit" value="통합검색" id="total_search">
                    </fieldset>
                </form>
            </div>
            <div>
                <a href="#"><i class="fas fa-sign-in-alt"></i> 로그인</a> |
                <a href="#"><i class="fas fa-user"></i></i> 회원가입</a>
            </div>
        </nav>
        <hr>
        <br><br>
        <div class="header2">
            <ul class="menu">
                <li class="menu1">
                    <a href="#">공지사항</a>
                </li>
                <li>
                    <a href="#">카드뉴스</a>
                </li>
                <li>
                    <a href="#">행사</a>
                </li>
                <li>
                    <a href="#">채용정보</a>
                </li>
                <li>
                    <a href="#">버스정보</a>
                </li>
                <li>
                    <a href="#">플리:마켓</a>
                </li>
                <li>
                    <a href="#">고객센터</a>
                </li>
            </ul>
        </div>
        <section class="cart">
         <form action="#">
            <h1>배송정보</h1> <br>
            <div class="cart_main">
                <div class="cart_main_1">
                    <div>
                        <div class="tabs">
                            <input id="all" type="radio" name="tab_item" checked>
                            <label class="tab_item" for="all">기본배송지</label>
                            <input id="programming" type="radio" name="tab_item">
                            <label class="tab_item" for="programming">직접입력</label>
                            <div class="tab_content" id="all_content">
                               <form>
                                <div>이름</div>
                                <div>주소</div>
                                <div>연락처</div>
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
                                <input type="text" name="name" placeholder="이름" class="name"> <br>
                                <select class="phonenum">
                                    <option>010</option>
                                    <option>011</option>
                                    <option>017</option>
                                    <option>019</option>
                                </select>
                                - <input type="text" class="phonenum" size="4"
                                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                - <input type="text" class="phonenum" size="4"
                                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"> <br>
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
                <div class="cart_main_2"> <br>
                    <h3>포인트적립혜택</h3><br>
                    <p>적립 혜택이 없습니다.<hr><br>
                    <h3>결제예정금액</h3><br>
                    <div class="cart_money">
                        <div><span>상품금액</span></div>
                        <div><span>0원</span></div>
                    </div><br>
                    <div class="cart_money">
                        <div><span>할인금액</span></div>
                        <div><span>0원</span></div>
                    </div> <br>
                    <div class="cart_sum">
                        <div><span>합계</span></div>
                        <div><span>0원</span></div>
                    </div><br>
                    <button class="order_button">주문하기</button>
                </div>
            </div>
        </section>
        <article>
            <h1>주문상품</h1><br>
            <div class="cart_main">
                <div class="cart_main_1"> 
                    <div class="choice">
                        <span>
                            <label for="product">
                                <input type="checkbox" name="product" onclick='selectAll(this)'/>
                            </label>
                            <span>전체선택</span> |
                        </span>
                        <button class="choice_bu">선택삭제</button>
                    </div> <hr> <br>
                    <div>
                        <h4>
                            <a href="#">다경농원 온라인 판매처</a>
                        </h4> <br> <hr class="hrc">
                    </div>
                    <div class="cart_prod">
                        <ul>
                            <li class="product_list">
                                <div class="product_list1">
                                    <label for="product" id="product_check">
                                        <input type="checkbox" name="product">
                                    </label>
                                    <div class="list1">
                                        <img src="./img/shopping&Shipping/kimchi.PNG" id="ship_img">
                                    </div>
                                    <div class="list2">
                                        <div class="list3">
                                            <a href="#" class="mo">다경농원 단감김치5kg</a>
                                            <input type="number" min="1" class="mo" id="mo_input">
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product_price">
                                    <h3>
                                        가격 25,000원
                                    </h3>
                                </div>
                                <div class="free_shipping">
                                    <h3>
                                         무료배송
                                    </h3>
                                </div>
                            </li>
                        </ul> 
                    </div> <hr>
                </div>
        </article>
    </form>
</div>
    <script>
        function selectAll(selectAll)  {
             const checkboxes  = document.getElementsByName('product');
  
         checkboxes.forEach((checkbox) => {
           checkbox.checked = selectAll.checked;
            })
        }
        function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    </script>

</body>

</html>