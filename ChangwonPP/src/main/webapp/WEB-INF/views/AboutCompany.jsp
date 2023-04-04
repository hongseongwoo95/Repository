<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
            list-style: none;
            color: black;
        }

        .container {
            width: 60%;
            margin: 0 auto;
        }
        .company{
            display: flex;
            justify-content: center;
        }
        .about{
            display: flex;
            justify-content: center;
        }
        .about img{
            width: 250px;
            height: 120px;
        }
        .first{
           margin-left: 2%;
        }
        .subject1, .subject2{
            margin-left: 18%;
        }
        p{
            font-size: larger;
        }
        .language{
           margin-left: 85%;
        }
    </style>
<title>회사소개</title>
</head>
<body>
<jsp:include page="Main_Nav.jsp" />
   <div class="container">
        <h2 class="company">회사소개</h2> <br><br><br><br>
        <div class="about">
           <img src="<c:url value="/resources/images/Nav/Changwon PP logo1.png"/>">
            <h3 class="first">
                창원플플은 2023년에 설립된 공적인 웹사이트로써 <br>
                누구나 편하게 접할수있도록 만들어졌습니다. <br>
                최신 뉴스를 웹 매거진처럼! 잡지보듯이 쉽고 간편하게! <br>
                창원 시민들을 위해 열심히 달려나가겠습니다.
            </h3>
        </div> <br><br><br><br>
        <section class="subject1">
            <h3>플러스플러스</h3>
            <p>
                최신정보도 알아가고 물건도 팔고 상품권도 적립하고 <br>
                창원 시민 여러분의 삶을 플러스 플러스 합니다.
            </p>
        </section> <br><br><br><br>
        <article class="subject2">
            <h3>플리마켓</h3>
            <p>
               플리마켓을 통해 물건을 팔 경우에는 적립포인트를 제공할 예정입니다<br>
               적립포인트는 결제금액의 5%가 적립될 예정이며 창원에 있는 전통시장에서 <br>
               상품권 환전소에서 상품권으로 교환해 사용할 수 있습니다. 
            </p>
        </article> <br><br><br><br>
        <h1 class="subject2">
            "간편하고 유익하게!"
        </h1><br><br>
    </div>
    <br><br><br><br>
 <jsp:include page="Main_Footer.jsp" />
</body>
</html>