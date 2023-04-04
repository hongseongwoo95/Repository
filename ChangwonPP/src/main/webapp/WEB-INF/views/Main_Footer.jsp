<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Main_Footer.css"/>" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Main_Footer</title>
</head>

<body>
   <br><br><hr><br>
   <footer>
      <div class="footer_container">
         <div class="footer_box">
            <div class="logo_box">
               <a href="https://www.youtube.com/@TheChangwonCity/featured" target="_blank">
                  <img src="<c:url value="/resources/images/Footer/Youtube logo.jpg"/>" class="footer_icon"/>
               </a> 
               <a href="https://blog.naver.com/cwopenspace" target="_blank">
                  <img src="<c:url value="/resources/images/Footer/Blog logo.png"/>" class="footer_icon"/>
               </a> 
               <a href="https://www.changwon.go.kr/cwportal/portal.web" target="_blank">
                  <img src="<c:url value="/resources/images/Footer/City Hall logo.jpg"/>" class="footer_icon"/>
               </a> 
               <a href="https://cwlib.gne.go.kr/index.es?sid=a2" target="_blank">
                  <img src="<c:url value="/resources/images/Footer/Changwon library logo.png"/>" class="footer_icon"/>
               </a>
                <a href="http://culture.changwon.go.kr/index.changwon?contentId=9" target="_blank">
                  <img src="<c:url value="/resources/images/Footer/Tour.PNG"/>" class="footer_icon"/>
               </a>
                <a href="https://council.changwon.go.kr/" target="_blank">
                  <img src="<c:url value="/resources/images/Footer/Council.png"/>" class="footer_icon"/>
               </a>
            </div>
            <br>
            <br>
            <div class="logo_box2">
               <div class="logo_box_item">
                  <img src="<c:url value="/resources/images/Footer/Changwon_PP_logo1 remove backgroundcolor.png"/>"/>
               </div>
					<div class="logo_box_item">
						<p><i class="fas fa-envelope"></i> 관리자 이메일 : ChangwonPP.gmail.com</p>
						<p><i class="fas fa-phone-volume"></i> 문의 전화 : 1588-7119</p>
						<p><i class="fas fa-map-marker-alt"></i> 경상남도 창원시 마산회원구 양덕동2길 76 XX빌딩 4층 407호</p>
						<p><i class="fas fa-copyright"></i> Copyright 2023. ChangwonPP. All rights reserved.</p>
					</div>
            </div>
         </div>
      </div>
   </footer>
   <br><br>
</body>

</html>