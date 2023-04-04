	   const slideWrap = document.querySelector('.slide_wrap');
	   const prevBtn = document.querySelector('.prev_btn');
	   const nextBtn = document.querySelector('.next_btn');
	   const slideItems = document.querySelectorAll('.slide_item');
	   let slideIndex = 1;
	
	   function showSlide(n) {
	       // 모든 슬라이드 아이템 숨기기
	       for (let i = 0; i < slideItems.length; i++) {
	           slideItems[i].style.display = 'none';
	       }
	       // 현재 보여줄 슬라이드 아이템 보이기
	       if (n > slideItems.length) {
	           slideIndex = 1;
	       }
	       if (n < 1) {
	           slideIndex = slideItems.length;
	       }
	       slideItems[slideIndex - 1].style.display = 'flex';
	   }
	
	   function plusSlide(n) {
	       showSlide(slideIndex += n);
	   }
	
	   // 초기 슬라이드 보이기
	   showSlide(slideIndex);
	
	   // 이전 버튼 클릭 시
	   prevBtn.addEventListener('click', function () {
	       plusSlide(-1);
	   });
	
	   // 다음 버튼 클릭 시
	   nextBtn.addEventListener('click', function () {
	       plusSlide(1);
	   });