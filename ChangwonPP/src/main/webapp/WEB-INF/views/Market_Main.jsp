<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/Market_Main.css" />
<script src="https://kit.fontawesome.com/380c1469b3.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Market_Main</title>
</head>

<body>
   <jsp:include page="Main_Nav.jsp" />
   <div class="container">
   <article>
                <div class="side">
                    <div class="sidetap"><a href="#">포인트환전</a></div>
                    <div class="sidetap"><a href="#">배송지주소</a></div>
                    <div class="sidetap"><a href="#">
                            <div>판매하기</div>
                        </a></div>
                    <div class="sidetap"><button class="topbutton" value="맨위로"
                            onClick="javascript:window.scrollTo(0,0)">맨위로</button></div>
                </div>
            </article>
      <br>
      <h2>플리:마켓</h2>
      <br>
      <br>
      <div class="slide slide_wrap">
         <div class="slide_item item1">
             <img src="<c:url value="/resources/images/Market/jang1.PNG"/>"/>
            <div class="map">
               <div class="map1">
               <a href="https://map.naver.com/v5/search/%EC%83%81%EB%82%A8%EC%8B%9C%EC%9E%A5?c=15,0,0,0,dh" target="_blank">
                  <img src="<c:url value="/resources/images/Market/13.PNG"/>"/></a>
               </div>
               <div class="map1">
                  <div>
                     <p>
                        <i class="fas fa-star"></i> 상남시장
                     <p>
                        <i class="fas fa-map-marker-alt"></i> 창원시 성산구 마디미로 28
                     <p>
                        <i class="fas fa-phone-alt"></i> 055-262-1494
                     <p>
                        <i class="fas fa-funnel-dollar"></i> 2층 환전소
                     <p>
                        <i class="far fa-calendar-check"></i> 평일: 09:00 ~ 18:00
                     <p>매월 4일,9일,5일 장이열림
                     <p>평일: 09:00 ~ 18:00 상설시장
                  </div>
               </div>
            </div>
         </div>
         <div class="slide_item item2">
            <img src="<c:url value="/resources/images/Market/jang2.PNG"/>"/>
            <div class="map">
               <div class="map1">
                  <a href="https://map.naver.com/v5/search/%EB%A7%88%EC%82%B0%20%EC%96%B4%EC%8B%9C%EC%9E%A5/place/15834779?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp" target="_blank">
                  <img src="<c:url value="/resources/images/Market/14.PNG"/>"/></a>
               </div>
               <div class="map1">
                  <div>
                     <p>
                        <i class="fas fa-star"></i> 어시장
                     <p>
                        <i class="fas fa-map-marker-alt"></i> 창원시 마산합포구 복요리로 7
                     <p>
                        <i class="fas fa-phone-alt"></i> 055-224-0009
                     <p>
                        <i class="fas fa-funnel-dollar"></i> 시장입구
                     <p>
                        <i class="far fa-calendar-check"></i> 평일: 09:00 ~ 17:00
                     <p>마산어시장 상인회
                     <p>매일: 10:00 ~ 22:00
                  </div>
               </div>
            </div>
         </div>
         <div class="slide_item item3">
            <img src="<c:url value="/resources/images/Market/jang3.PNG"/>"/>
            <div class="map">
               <div class="map1">
                  <a href="https://map.naver.com/v5/search/%EB%B0%98%EC%86%A1%EC%8B%9C%EC%9E%A5/place/35150213?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"  target="_blank">
                  <img src="<c:url value="/resources/images/Market/15.PNG"/>"/></a>
               </div>
               <div class="map1">
                  <div>
                     <p>
                        <i class="fas fa-star"></i> 반송시장
                     <p>
                        <i class="fas fa-map-marker-alt"></i> 창원시 성산구 반림동 17-18
                     <p>
                        <i class="fas fa-phone-alt"></i> 055-275-0449
                     <p>
                        <i class="fas fa-funnel-dollar"></i> 시장입구
                     <p>
                        <i class="far fa-calendar-check"></i> 평일: 09:00 ~ 18:00
                     <p>반송시장 상인회
                     <p>매일: 10:00 ~ 18:00
                  </div>
               </div>
            </div>
         </div>
         <div class="slide_prev_button slide_button">◀</div>
         <div class="slide_next_button slide_button">▶</div>
         <ul class="slide_pagination"></ul>
      </div>
      <br>
      <br>
      <section>
         <h2>
            <a href="#">최근상품</a>
         </h2>
         <br>
         <br>
         <div class="event">
            <div class="event1">
               <a href="#" class="link"> <img src="./resources/images/Market/kimchi.PNG">
                  <p class="p_title">[다경농원]단감김치 5kg</p>
                  <p class="p_date">25,000원</p>
               </a>
            </div>
            <div class="event1">
               <a href="#" class="link"> <img src="./resources/images/Market/jmt.PNG">
                  <p class="p_title">[산에들우리축산] 1+등급 한우 모듬 300g</p>
                  <p class="p_date">31,500원</p>
               </a>
            </div>
            <div class="event1">
               <a href="#" class="link"> <img src="./resources/images/Market/rice.PNG">
                  <p class="p_title">(2023년쌀) 영농조합법인 창원청결미 10kg</p>
                  <p class="p_date">30,000원</p>
               </a>
            </div>
         </div>
         <div class="event">
            <div class="event1">
               <a href="#" class="link"> <img src="./resources/images/Market/yogart.PNG">
                  <p class="p_title">두빈목장 프리미엄 수제 요거트 150ml</p>
                  <p class="p_date">1,500원</p>
               </a>
            </div>
            <div class="event1">
               <a href="#" class="link"> <img src="./resources/images/Market/homespray.PNG">
                  <p class="p_title">[웰본]가고파국화방향제 300ml</p>
                  <p class="p_date">15,000원</p>
               </a>
            </div>
            <div class="event1">
               <a href="#" class="link"> <img src="./resources/images/Market/turtle.PNG">
                  <p class="p_title">[코스모스] 거북이빵 (8개입)</p>
                  <p class="p_date">12,000원</p>
               </a>
            </div>
         </div>
      </section>
      <br>
   </div>

   <script>
    // 슬라이크 전체 크기(width 구하기)
    const slide = document.querySelector(".slide");
    let slideWidth = slide.clientWidth;

    // 버튼 엘리먼트 선택하기
    const prevBtn = document.querySelector(".slide_prev_button");
    const nextBtn = document.querySelector(".slide_next_button");

    // 슬라이드 전체를 선택해 값을 변경해주기 위해 슬라이드 전체 선택하기
    let slideItems = document.querySelectorAll(".slide_item");
    // 현재 슬라이드 위치가 슬라이드 개수를 넘기지 않게 하기 위한 변수
    const maxSlide = slideItems.length;

    // 버튼 클릭할 때 마다 현재 슬라이드가 어디인지 알려주기 위한 변수
    let currSlide = 1;

    // 페이지네이션 생성
    const pagination = document.querySelector(".slide_pagination");

    for (let i = 0; i < maxSlide; i++) {
        if (i === 0) pagination.innerHTML += `<li class="active">•</li>`;
        else pagination.innerHTML += `<li>•</li>`;
    }

    const paginationItems = document.querySelectorAll(".slide_pagination > li");

    // 무한 슬라이드를 위해 start, end 슬라이드 복사하기
    const startSlide = slideItems[0];
    const endSlide = slideItems[slideItems.length - 1];

    // 엘리먼트 생성
    const startElem = document.createElement(startSlide.tagName);
    const endElem = document.createElement(endSlide.tagName);

    // 엘리먼트에 클래스 적용 동일하게 하기
    endSlide.classList.forEach((c) => endElem.classList.add(c));
    endElem.innerHTML = endSlide.innerHTML;
    startSlide.classList.forEach((c) => startElem.classList.add(c));
    startElem.innerHTML = startSlide.innerHTML;

    // 각 복제한 엘리먼트를 각 위치에 추가하기
    slideItems[0].before(endElem);
    slideItems[slideItems.length - 1].after(startElem);

    // 슬라이드 전체를 선택해 값을 변경해주기 위해 슬라이드 전체 선택하기
    slideItems = document.querySelectorAll(".slide_item");
    let offset = slideWidth * currSlide;
    slideItems.forEach((i) => {
        i.setAttribute("style", `left: -`+offset+`px`);
    });

    function nextMove() {
        currSlide++;
        // 마지막 슬라이드 이상으로 넘어가지 않게 하기 위해서
        if (currSlide <= maxSlide) {
            // 슬라이드를 이동시키기 위한 offset 계산
            const offset = slideWidth * currSlide;
            // 각 슬라이드 아이템의 left에 offset 적용
            slideItems.forEach((i) => {
                i.setAttribute("style", `left: -`+offset+`px`);
            });
            // 슬라이드 이동 시 현재 활성화된 pagination 변경
            paginationItems.forEach((i) => i.classList.remove("active"));
            paginationItems[currSlide - 1].classList.add("active");
        } else {
            // 무한 슬라이드 기능 - currSlide 값만 변경해줘도 되지만 시각적으로 자연스럽게 하기 위해 아래 코드 작성
            currSlide = 0;
            let offset = slideWidth * currSlide;
            slideItems.forEach((i) => {
                i.setAttribute("style", `transition: 1s; left: `+-offset+`px`);
            });
            currSlide++;
            offset = slideWidth * currSlide;
            // 각 슬라이드 아이템의 left에 offset 적용
            // setTimeout을 사용하는 이유는 비동기 처리를 이용해 transition이 제대로 적용되게 하기 위함
            setTimeout(() => {
                // 각 슬라이드 아이템의 left에 offset 적용
                slideItems.forEach((i) => {
                    i.setAttribute("style", `transition: 1s; left: -`+offset+`px`);
                });
            }, 0);
            // // 슬라이드 이동 시 현재 활성화된 pagination 변경
            paginationItems.forEach((i) => i.classList.remove("active"));
            paginationItems[currSlide - 1].classList.add("active");
        }
    }
    function prevMove() {
        currSlide--;
        // 1번째 슬라이드 이하로 넘어가지 않게 하기 위해서
        if (currSlide > 0) {
            // 슬라이드를 이동시키기 위한 offset 계산
            const offset = slideWidth * currSlide;
            // 각 슬라이드 아이템의 left에 offset 적용
            slideItems.forEach((i) => {
                i.setAttribute("style", `left: -`+offset+`px`);
            });
            // 슬라이드 이동 시 현재 활성화된 pagination 변경
            paginationItems.forEach((i) => i.classList.remove("active"));
            paginationItems[currSlide - 1].classList.add("active");
        } else {
            // 무한 슬라이드 기능 - currSlide 값만 변경해줘도 되지만 시각적으로 자연스럽게 하기 위해 아래 코드 작성
            currSlide = maxSlide + 1;
            let offset = slideWidth * currSlide;
            // 각 슬라이드 아이템의 left에 offset 적용
            slideItems.forEach((i) => {
                i.setAttribute("style", `transition: 0s; left: -`+offset+`px`);
            });
            currSlide--;
            offset = slideWidth * currSlide;
            setTimeout(() => {
                // 각 슬라이드 아이템의 left에 offset 적용
                slideItems.forEach((i) => {
                    i.setAttribute("style", `transition: 0.15s; left: -`+offset+`px`);
                });
            }, 0);
            // 슬라이드 이동 시 현재 활성화된 pagination 변경
            paginationItems.forEach((i) => i.classList.remove("active"));
            paginationItems[currSlide - 1].classList.add("active");
        }
    }

    // 버튼 엘리먼트에 클릭 이벤트 추가하기
    nextBtn.addEventListener("click", () => {
        // 이후 버튼 누를 경우 현재 슬라이드를 변경
        nextMove();
    });
    // 버튼 엘리먼트에 클릭 이벤트 추가하기
    prevBtn.addEventListener("click", () => {
        // 이전 버튼 누를 경우 현재 슬라이드를 변경
        prevMove();
    });

    // 브라우저 화면이 조정될 때 마다 slideWidth를 변경하기 위해
    window.addEventListener("resize", () => {
        slideWidth = slide.clientWidth;
    });

    // 각 페이지네이션 클릭 시 해당 슬라이드로 이동하기
    for (let i = 0; i < maxSlide; i++) {
        // 각 페이지네이션마다 클릭 이벤트 추가하기
        paginationItems[i].addEventListener("click", () => {
            // 클릭한 페이지네이션에 따라 현재 슬라이드 변경해주기(currSlide는 시작 위치가 1이기 때문에 + 1)
            currSlide = i + 1;
            // 슬라이드를 이동시키기 위한 offset 계산
            const offset = slideWidth * currSlide;
            // 각 슬라이드 아이템의 left에 offset 적용
            slideItems.forEach((i) => {
                i.setAttribute("style", `left: -`+offset+`px`);
            });
            // 슬라이드 이동 시 현재 활성화된 pagination 변경
            paginationItems.forEach((i) => i.classList.remove("active"));
            paginationItems[currSlide - 1].classList.add("active");
        });
    }

    // 드래그(스와이프) 이벤트를 위한 변수 초기화
    let startPoint = 0;
    let endPoint = 0;

    // PC 클릭 이벤트 (드래그)
    slide.addEventListener("mousedown", (e) => {
        startPoint = e.pageX; // 마우스 드래그 시작 위치 저장
    });

    slide.addEventListener("mouseup", (e) => {
        endPoint = e.pageX; // 마우스 드래그 끝 위치 저장
        if (startPoint < endPoint) {
            // 마우스가 오른쪽으로 드래그 된 경우
            prevMove();
        } else if (startPoint > endPoint) {
            // 마우스가 왼쪽으로 드래그 된 경우
            nextMove();
        }
    });

    // 모바일 터치 이벤트 (스와이프)
    slide.addEventListener("touchstart", (e) => {
        startPoint = e.touches[0].pageX; // 터치가 시작되는 위치 저장
    });
    slide.addEventListener("touchend", (e) => {
        endPoint = e.changedTouches[0].pageX; // 터치가 끝나는 위치 저장
        if (startPoint < endPoint) {
            // 오른쪽으로 스와이프 된 경우

            prevMove();
        } else if (startPoint > endPoint) {
            // 왼쪽으로 스와이프 된 경우

            nextMove();
        }
    });
    </script>
    <jsp:include page="Main_Footer.jsp" />
</body>
</html>