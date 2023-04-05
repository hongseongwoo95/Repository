<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Event_Page.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event_Page</title>
</head>

<body>
   <jsp:include page="Main_Nav.jsp" />
    <div class="container">
        <section>
            <div class="alarm">
               <img src="<c:url value="/resources/images/Event/alarm.PNG"/>"/>
                <div>
                    <p class="alarm_title">D-5</p>
                    <p class="alarm_content">마산 국화축제</p>
                    <p class="alarm_content">2023-04-10 ~ 2023-04-17</p>
                    <p class="alarm_content">경남 창원시 마산합포구 돝섬1길 9</p>
                </div>
            </div>
            <br>
            <div class="topbtn">
	            <h2>행사정보</h2>
	            <c:if test="${m_id != null && m_type == 2 }">
	            	<a href="Event_Upload" class="upload">업로드</a>
	            </c:if>
            </div>
         <ul class="event">
         <c:forEach var="event" items="${EventList}">
            <li class="event1">
               <a href="EventInfo/${event.e_number }" class="link"> 
               <img src="<c:url value="/resources/saveevent/${event.e_number}_${0}.png"/>"/>
                  <p class="p_title">${event.e_name}</p>
                  <p class="p_date">${event.e_title }</p>
               </a>
            </li>
            </c:forEach>
         </ul>
        </section>
    </div>
    <jsp:include page="Main_Footer.jsp" />
</body>

</html>