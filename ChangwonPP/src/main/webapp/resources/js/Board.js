var prevBtn = document.querySelector('.page_select li:first-child a');
var nextBtn = document.querySelector('.page_select li:last-child a');

function getCurrentPageNum() {
	  var uri = window.location.href;
	  var pageNum = uri.substr(uri.lastIndexOf('/') + 1);
	  return pageNum;
	}

prevBtn.addEventListener('click', function(e) {
    e.preventDefault(); // 기본 동작(링크 이동) 막기
    var pageNum = getCurrentPageNum();
    pageNum = parseInt(pageNum) - 1;
    if (pageNum > 0) {
        window.location.href = "/ChangwonPP/Board/" + pageNum;
    } else {
        window.location.href = "/ChangwonPP/Board/1";
    }
});

nextBtn.addEventListener('click', function(e) {
  e.preventDefault(); // 기본 동작(링크 이동) 막기
  var pageNum = getCurrentPageNum();
  pageNum = parseInt(pageNum) + 1;
  window.location.href = "/ChangwonPP/Board/" + pageNum;
});