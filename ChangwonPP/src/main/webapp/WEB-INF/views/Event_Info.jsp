<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/Event_Info.css"/>" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/js/Event_Info.js"/>"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=10ae40fd28ac17676cbbeffd8634a635"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event_Info</title>
</head>

<body>
   <jsp:include page="Main_Nav.jsp" />
<div class="container">
      <div class="event_title">
         <p class="event_title_item">${event.e_name}</p>
      </div>
      <div class="slider-container">
         <div class="slider-wrapper">
            <img src="<c:url value="/resources/saveevent/${event.e_number}_${0}.png"/>" />
            <img src="<c:url value="/resources/saveevent/${event.e_number}_${1}.png"/>" />
            <img src="<c:url value="/resources/saveevent/${event.e_number}_${2}.png"/>" />
         </div>
         <div class="slider-controls">
            <button class="slider-button left"></button>
            <button class="slider-button right"></button>
         </div>
      </div>
      <div class="event_info">
         <ul>
            <li><i class="far fa-star"></i>명칭 : ${event.e_name}</li>
            <li><i class="far fa-clock"></i>축제기간 : ${event.e_date1} ~ ${event.e_date2}</li>
            <li><i class="fas fa-map-marker-alt"></i>주소 : ${event.e_addr}</li>
         </ul>
         <ul>
            <li><i class="fas fa-cog"></i>담당기관 : ${event.e_agency}</li>
            <li><i class="fas fa-phone-alt"></i>전화번호 :${event.e_telephone}</li>
            <li><i class="fas fa-won-sign"></i>이용료 : 
			  <c:choose>
			    <c:when test="${event.e_money eq '무료'}">
			      ${event.e_money}
			    </c:when>
			    <c:otherwise>
			      ${event.e_money}원
			    </c:otherwise>
			  </c:choose>
			</li>
         </ul>
      </div>
      <div class="event_map">
         <div id="staticMap" style="width: 700px; height: 350px;"></div>
      </div>
      <br>
</div>
   <jsp:include page="Main_Footer.jsp" />
   <script type="text/javascript">
      // 이미지 지도에 표시할 마커입니다
      // 이미지 지도에 표시할 마커를 아래와 같이 배열로 넣어주면 여러개의 마커를 표시할 수 있습니다 
      var markers = [ {

         position : new kakao.maps.LatLng(${event.e_mapY},
        		 ${event.e_mapX}),
         text : '${event.e_addr}' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다     
      } ];

       var staticMapContainer = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
      
      staticMapOption = {
         center : new kakao.maps.LatLng(${event.e_mapY}, ${event.e_mapX}), // 이미지 지도의 중심좌표
         level : 3, // 이미지 지도의 확대 레벨
         marker : markers // 이미지 지도에 표시할 마커 
      };  

      // 이미지 지도를 생성합니다
      var staticMap = new kakao.maps.StaticMap(staticMapContainer,staticMapOption);
   </script>
</body>
</html>