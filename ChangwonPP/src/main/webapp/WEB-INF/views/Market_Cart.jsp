<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Cart.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Market_Cart</title>
</head>

<body>
    <div class="container">
        <nav class="header">
            <div class="navbar">
                <h1>
                    <span class="home_icon">
                        <a href="main.html"><img src="./img/nav/Changwon PP logo1.png" class="mainlogo"></a>
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
            <h1>Shopping Cart</h1> <br>
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
    </div>
    <script>
        function selectAll(selectAll)  {
             const checkboxes  = document.getElementsByName('product');
  
         checkboxes.forEach((checkbox) => {
           checkbox.checked = selectAll.checked;
            })
        }
    </script>
</body>

</html>