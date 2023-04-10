<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event_Upload</title>
</head>
 <style> /* 나중에 css 파일 분리해야됨 */
* {
   margin: 0;
   padding: 0;
   text-decoration: none;
   list-style: none;
   color: black;
}

/* 컨테이너 */
.container {
   width: 50%;
   margin: 0 auto;
   height: 300px;
   margin-top: 150px;
}

#att_zone {
   width: 700px;
   min-height: 150px;
   margin-top: 15px;
   padding: 10px;
   border: 1px solid black;
   border-radius: 5px;
}

#att_zone:empty:before {
   content: attr(data-placeholder);
   color: #999;
   font-size: .9em;
}

.p_input {
   font-size: x-large;
   margin-bottom: 10px;
}

.inputbox {
   width: 50%;
   height: 25px;
}

.inputdate {
   width: 23.5%;
   height: 25px;
}

.submitbutton {
   width: 80px;
   height: 30px;
   border: 1px soild red;
}
.cdX, .cdY{
 display:none;
}
</style>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=10ae40fd28ac17676cbbeffd8634a635&libraries=services"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
<jsp:include page="Main_Nav.jsp" />
   <div class="container">
        <h2>행사등록</h2><hr><br><br>
        <form:form action="Event_Upload" method="post" modelAttribute="Event" enctype="multipart/form-data" >
            <h3>행사제목</h3> 
            <p class="p_input"><form:input type="text" path="e_name" placeholder="제목을 입력해주세요" class="inputbox"/></p>
            <h3>파일선택</h3>
         <div id='image_preview'>
            <h3>이미지 미리보기</h3>
            <form:input type='file' path="imgfile" id='btn_file' multiple='multiple'/>
            <div id='att_zone' data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
         </div> <br>
            <h3>행사설명</h3>
            <p class="p_input"><form:input type="text" path="e_title" placeholder="행사 설명을 입력해주세요" class="inputbox" /></p>
            <h3>축제기간</h3>
            <p class="p_input"><form:input type="date" path="e_date1" min="2023-01-01" max="2025-01-01" class="inputdate"/>
                ~ <form:input type="date" path="e_date2" min="2023-01-01" max="2025-01-01" class="inputdate"/></p>
            <h3>담당기관</h3>
            <p class="p_input"><form:input type="text" path="e_agency" placeholder="담당기관 명을 입력해주세요" class="inputbox"/></p>
            <h3>전화번호</h3>
            <p class="p_input"><form:input type="text" path="e_telephone" placeholder="-제외하고 숫자만 입력해주세요" class="inputbox"
            	oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="15"/></p>
            <h3>이용요금</h3>
            <p class="p_input"><form:input type="text" path="e_money" placeholder="이용료를 입력해주세요" class="inputbox" maxlength="15"
           		 oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></p>
            <h3>주소</h3>
            <p class="p_input"><form:input type="text" path="e_addr" id="sample5_address" placeholder="주소 검색을 이용해주세요" class="inputbox" readonly="true"/></p>
            <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
            <div id="map" style="width:400px; height:300px; margin-top:10px;display:none"></div>
            <p class="p_input"> <input type="submit" value="등록" class="submitbutton"></p>
             <!-- 주소 API로 입력되는 이름과 좌표값을 database에 저장하기 위해서 아래 input 3개를 만들고 display:none할 예정 -->
           <form:input type="text" path="e_mapX" name="e_mapX" class="cdX"></form:input>
            <form:input type="text" path="e_mapY" name="e_mapY" class="cdY"></form:input>
            </form:form>
          <jsp:include page="Main_Footer.jsp" />
    </div>
   
    <script>
    ( /* file_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
            imageView = function imageView(file_zone, btn){

              var fileZone = document.getElementById(file_zone);
              var btnFile = document.getElementById(btn)
              var sel_files = [];
              
              // 이미지와 체크 박스를 감싸고 있는 div 속성
              var div_style = 'display:inline-block;position:relative;'
                            + 'width:150px;height:120px;margin:5px;border:1px solid black;z-index:1';
              // 미리보기 이미지 속성
              var img_style = 'width:100%;height:100%;z-index:none';
              // 이미지안에 표시되는 체크박스의 속성
              var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;font-weight:600;border:0;border-radius:5px;'
                            + 'right:0px;bottom:0px;z-index:999;background-color:red;color:white;cursor:pointer;';
            
              btnFile.onchange = function(e){
                var files = e.target.files;
                var fileArr = Array.prototype.slice.call(files)
                for(f of fileArr){
                  imageLoader(f);
                }
              }  
              
              // 탐색기에서 드래그앤 드롭 사용
              fileZone.addEventListener('dragenter', function(e){
                e.preventDefault();
                e.stopPropagation();
              }, false)
              
              fileZone.addEventListener('dragover', function(e){
                e.preventDefault();
                e.stopPropagation();
                
              }, false)
            
              fileZone.addEventListener('drop', function(e){
                var files = {};
                e.preventDefault();
                e.stopPropagation();
                var dt = e.dataTransfer; // 드래그앤드롭의 정보를 가지고 있는 데이터트랜스퍼 객체 생성
                files = dt.files;
                for(f of files){
                  imageLoader(f);
                }
                btnFile.files = dt.files;
                
              }, false)
              

              /*첨부된 이미지들을 배열에 넣고 미리보기 */
              imageLoader = function(file){
                  fileZone.replaceChildren();
                sel_files.push(file);
                var reader = new FileReader();
                reader.onload = function(ee){
                  let img = document.createElement('img')
                  img.setAttribute('style', img_style)
                  img.src = ee.target.result;
                  fileZone.appendChild(makeDiv(img, file));
                }
                reader.readAsDataURL(file);
              }
              
              /*첨부된 파일이 있는 경우 checkbox와 함께 fileZone에 추가할 div를 만들어 반환 */
              makeDiv = function(img, file){
                var div = document.createElement('div')
                div.setAttribute('style', div_style)
                
                var btn = document.createElement('input')
                btn.setAttribute('type', 'button')
                btn.setAttribute('value', 'x')
                btn.setAttribute('delFile', file.name);
                btn.setAttribute('style', chk_style);
                btn.onclick = function(ev){
                  var ele = ev.srcElement;
                  var delFile = ele.getAttribute('delFile');
                  for(var i=0 ;i<sel_files.length; i++){
                    if(delFile== sel_files[i].name){
                      sel_files.splice(i, 1);      
                    }
                  }
              
                  dt = new DataTransfer();
                  for(f in sel_files) {
                    var file = sel_files[f];
                    dt.items.add(file);
                  }
                  btnFile.files = dt.files;

                  var p = ele.parentNode;
                  fileZone.removeChild(p)
                }
                div.appendChild(img)
                div.appendChild(btn)
                return div
              }
            }
          )('att_zone', 'btn_file')


        /*지도시작*/
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };

        //지도를 미리 생성
        var map = new daum.maps.Map(mapContainer, mapOption);
        //주소-좌표 변환 객체를 생성
        var geocoder = new daum.maps.services.Geocoder();
        //마커를 미리 생성
        var marker = new daum.maps.Marker({
            position: new daum.maps.LatLng(37.537187, 127.005476),
            map: map
        });


        function sample5_execDaumPostcode() { // 카카오 주소 API
            new daum.Postcode({
                oncomplete: function (data) {
                    var addr = data.address; // 최종 주소 변수

                    // 주소 정보를 해당 필드에 넣는다.
                    document.getElementById("sample5_address").value = addr;
                    // 주소로 상세 정보를 검색
                    geocoder.addressSearch(data.address, function (results, status) {
               	  	// 정상적으로 검색이 완료됐으면
 	        	 	if (status === daum.maps.services.Status.OK) {
             	    var result = results[0]; //첫번째 결과의 값을 활용
	
               	    // 해당 주소에 대한 좌표를 받아서
               	    var coords = new daum.maps.LatLng(result.y, result.x);
               	    // 지도를 보여준다.
               	    mapContainer.style.display = "block";
               	    map.relayout();
               	    // 지도 중심을 변경한다.
               	    map.setCenter(coords);
               	    // 마커를 결과값으로 받은 위치로 옮긴다.
               	    marker.setPosition(coords);

               	    // 검색 결과의 좌표값을 <input> 태그의 value로 설정
               	    document.getElementsByName('e_mapX')[0].value = result.x;
               	    document.getElementsByName('e_mapY')[0].value = result.y;
                   	  }
                   	});
                }
            }).open();
        }

    </script>
   
</body>
</html>