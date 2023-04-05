<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="./resources/css/Main_Page.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ChangwonPP</title>
</head>

<body>
   <jsp:include page="Main_Nav.jsp" />
   <div class="container">
      <section>
         <h2>
            <a href="EventPage">최근행사</a>
         </h2>
         <br>
         <br>
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
      <hr>
      <br>
      <section>
         <h2>
            <a href="Cardnews">최신뉴스</a>
         </h2>
         <br>
         <br>
          <div class="event">
            <c:forEach var="click" items="${NewsList}">
                <div class="event1">
                    <a href="Cardnews_Detail/${click.news_num}" class="link">
                        <img src="./resources/savecardnews/${click.news_img}">
                        <p class="p_title">${click.news_name}</p>
                    </a>
                </div>
              </c:forEach>  
            </div>
      </section>
   </div>
   <jsp:include page="Main_Footer.jsp" />
</body>

</html>