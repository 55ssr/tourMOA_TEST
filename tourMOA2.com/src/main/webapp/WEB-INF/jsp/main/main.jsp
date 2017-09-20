<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/mainJS.js"></script>
<!-- 홈쇼핑 배너 회전 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
 <div id="navi">
     	   <div id="tt">   
	            <ul>
	                <li>해외패키지 </li>
	                <li>자유여행 </li>
	                <li>허니문 </li>
	                <li>골프 </li>
	                <li>부산/대구출발</li>
	                <li>해외항공</li>
	                <li>국내항공</li>
	                <li>국내여행</li>
	            </ul>
            </div>          
        </div>
    <!-- header부분  -->
<div id="main">
      <div id="tt">
       <div id="quickmenu">
          
           <ul>
               <li class="find"><p class="finder">여행상품 찾기</p>
               <div class="find-content">
               <br>
               <p>거품없는 직판여행 No.1</p>
               <p>급이다른 여행을 탐색해 보세요.</p>
               <br>
               <p>상품유형</p>
               <select class="find-content-inside1">
               <option>유형을 선택하세요.</option>
               </select>
               <p>여행지역/호텔명</p>
               <input class="find-content-inside1" type="text" id="" name="" placeholder="여행지역/호텔명을 입력하세요" />
               
               <p>출발일월</p>
               
               <input class="find-content-inside2" type="text" id="" name="" placeholder="====달력 넣어주세요.====" />
               
               <input type="button" id="searchBtn" name="searchBtn" value="검색하기" />
               
               </div>
               </li>
               
               
               
               <li class="airportfind"><p class="airportfinder">항공권 찾기</p>
               <div class="airportfind-content">
               <div id="quick">
               <br>
               <input type="button" id="airlineBtn" name="airlineBtn" class="airportfind_airlineBtn" value="해외항공권" />
               <input type="button" id="domesticBtn" name="domesticBtn" class="airportfind_domesticBtn" value="국내항공권" />
               <br>
               <!-- 왕복/편도 설정 id ="air_flightWay" VALUE = 왕복 : R 편도 : O  -->
               <input type="radio"  value="R" id="air_flightWay" name="air_flightWay" checked="checked" style="margin-left: 20px;"/> 왕복
               <input type="radio"  value="O" id="air_flightWay" name="air_flightWay"style="margin-left: 20px; margin-bottom: 20px; "/> 편도
                
               <br>
               <p>출발</p>
               <select class="airportfind-content-inside1">
               <option>인천/김포</option>
               </select>
               <input type="text" class="airportfind-content-inside2" placeholder="출발일자 선택"/>
               
               <p><span>도착 </span> <span><input type="checkbox" id="dontknow" value=""/>귀국일 미지정</span></p>  
               <!-- 클릭 시 모달창이나 팝업창 띄워 검색하기 기능 -->
               <input type="text" class="airportfind-content-inside1" placeholder="도착도시 검색"/>
               
               <input type="text" class="airportfind-content-inside2 whenyoucome" placeholder="도착일자 선택"/>
               
               <select class="airportfind-content-inside2 dontknowWhen">
               <option>체류일 선택</option>
               </select>
               
               <p>인원</p>
               <!-- select id 성인 :adult 소아 :child 유아 : baby  -->
               <select class="airportfind-content-inside-people1" id="adult">
               <option value="1">성인1명</option>
               <option value="2">성인2명</option>
               <option value="3">성인3명</option>
               <option value="4">성인4명</option>
               <option value="5">성인5명</option>
               <option value="6">성인6명</option>
               <option value="7">성인7명</option>
               <option value="8">성인8명</option>
               <option value="9">성인9명</option>
               </select>
               
              
               <select class="airportfind-content-inside-people2" id="child">
               <option  value="0">소아</option>
               <option  value="1">1명</option>
               <option  value="2">2명</option>
               <option  value="3">3명</option>
               <option  value="4">4명</option>
               <option  value="5">5명</option>
               <option  value="6">6명</option>
               <option  value="7">7명</option>
               <option  value="8">8명</option>
               <option  value="9">9명</option>
               </select>
               
               
               <select class="airportfind-content-inside-people2" id="baby">
               <option  value="0">유아</option>
               <option  value="1">1명</option>
               <option  value="2">2명</option>
               <option  value="3">3명</option>
               <option  value="4">4명</option>
               <option  value="5">5명</option>
               <option  value="6">6명</option>
               <option  value="7">7명</option>
               <option  value="8">8명</option>
               <option  value="9">9명</option>
               </select>
               
               <input type="button" id="searchBtn" name="searchBtn" value="검색하기" />
               
               </div>
               </div>
   
   
   				<div class="domesticfind-content">
               <div id="quick">
               <br>
               <input type="button" id="airlineBtn" name="airlineBtn" class="domestic_airlineBtn" value="해외항공권" />
               <input type="button" id="domesticBtn" name="domesticBtn" class="domestic_domesticBtn" value="국내항공권" />
               <br>
               <!-- 왕복/편도 설정 id ="flightWay" VALUE = 왕복 : R 편도 : O  -->
               <input type="radio"  value="R" id="flightWay" name="flightWay" checked="checked" style="margin-left: 20px;"/> 왕복
               <input type="radio"  value="O" id="flightWay" name="flightWay"style="margin-left: 20px; margin-bottom: 20px; "/> 편도
                
               <br>
               <p>출발</p>
               <select class="domesticfind-content-inside1">
               <option>인천</option>
               <option>김포</option>
               <option>부산</option>
               <option>청주</option>
               <option>목포</option>
               <option>진주</option>
               <option>여수</option>
               <option>속초</option>
               <option>광주</option>
               <option>원주</option>
               <option>강릉</option>
               <option>제주</option>
               <option>대구</option>
               <option>포항</option>
               <option>울산</option>
               <option>군산</option>
               </select>
               <input type="text" class="domesticfind-content-inside2" placeholder="출발일자 선택"/>
               
               <p>도착</p>
               <!-- 클릭 시 모달창이나 팝업창 띄워 검색하기 기능 -->
               <input type="text" class="domesticfind-content-inside1" placeholder="도착도시 검색"/>
               
               <input type="text" class="domesticfind-content-inside2" placeholder="도착일자 선택"/>
               
               <p>인원</p>
               <!-- select id 성인 :adult 소아 :child 유아 : baby  -->
               <select class="domesticfind-content-inside-people1" id="adult">
               <option value="1">성인1명</option>
               <option value="2">성인2명</option>
               <option value="3">성인3명</option>
               <option value="4">성인4명</option>
               <option value="5">성인5명</option>
               <option value="6">성인6명</option>
               <option value="7">성인7명</option>
               <option value="8">성인8명</option>
               <option value="9">성인9명</option>
               </select>
               
              
               <select class="domesticfind-content-inside-people2" id="child">
               <option  value="0">소아</option>
               <option  value="1">1명</option>
               <option  value="2">2명</option>
               <option  value="3">3명</option>
               <option  value="4">4명</option>
               <option  value="5">5명</option>
               <option  value="6">6명</option>
               <option  value="7">7명</option>
               <option  value="8">8명</option>
               <option  value="9">9명</option>
               </select>
               
               
               <select class="domesticfind-content-inside-people2" id="baby">
               <option  value="0">유아</option>
               <option  value="1">1명</option>
               <option  value="2">2명</option>
               <option  value="3">3명</option>
               <option  value="4">4명</option>
               <option  value="5">5명</option>
               <option  value="6">6명</option>
               <option  value="7">7명</option>
               <option  value="8">8명</option>
               <option  value="9">9명</option>
               </select>
               
               <input type="button" id="searchBtn" name="searchBtn" value="검색하기" />
               
               </div>
               </div>
   
               </li>
               <li><a href="#" id="quickCloseBtn">X</a></li>
           </ul>
           
         </div>  
       </div>
       
<!-- right menu s -->
        <div id="rightmenu">
                <ul>
                    <li><a href="#"><i class="fa fa-search" aria-hidden="true" style="color: orange;"></i>통합검색</a></li>
                    <li><a href="#"><i class="fa fa-bell" aria-hidden="true" style="color: orange;"></i>출발확정</a></li>
                    <li><a href="#"><i class="fa fa-building" aria-hidden="true" style="color: orange;"></i>기업/단체문의</a></li>
                    <li>
                    <a href="#"><i class="fa fa-shopping-basket" aria-hidden="true"></i>오늘 본 상품</a>
                    <!-- <div class="today_box">
						<ul class="today_list">
						<p>
						오늘 본
						<br>
						상품이
						<br>
						없습니다
						</p>
						</ul>
                    </div>
                    <div class="today_page">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i>
                    <strong> 0 / 0</strong>
                    <i class="fa fa-arrow-right" aria-hidden="true"></i>
                    </div> -->
                    </li>
                    <li><a href="#"><i class="fa fa-address-card" aria-hidden="true"></i>예약확인/결제</a></li>
                    <li><a href="#"><i class="fa fa-calculator" aria-hidden="true"></i>결제방법안내</a></li>
                    <!-- <li><a href="#"><i class="fa fa-credit-card-alt" aria-hidden="true"></i>무이자할부</a></li> -->
                    <li><a href="#"><i class="fa fa-certificate" aria-hidden="true"></i>계좌번호안내</a></li>
                    <li><a href="#"><i class="fa fa-mobile fa-2x" aria-hidden="true"></i>직통전화번호</a></li>
                    <li><a href="#"><i class="fa fa-percent" aria-hidden="true"></i>할인쿠폰</a></li>
                    <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>대리점안내</a></li>
                    <li><a href="#"><i class="fa fa-bullhorn" aria-hidden="true"></i>고객만족도조사</a></li>
                    <!-- <li><a href="#"><i class="fa fa-commenting" aria-hidden="true"></i>카카오톡</a></li> -->
                    <li><a href="#" id="moveTopBtn"><i class="fa fa-arrow-up" aria-hidden="true"></i>TOP</a></li>
                </ul>
            </div>
<!-- right menu e -->            
            
    </div>

<div id="content">
	<!-- 컨텐츠 별 크기 -->
	<div id="theme_block">
	  
	
	<h2 class ="tit">
	출발확정
	</h2> 
	
	<div id="tab_type01">
		
		<ul>
					<li ><a href="#" class="decoNone">유럽</a></li>
					<li ><a href="#" class="decoNone">동남아</a></li>
					<li ><a href="#" class="decoNone">필리핀/푸켓</a></li>
					<li ><a href="#" class="decoNone">중국/홍콩/대만</a></li>
					<li ><a href="#" class="decoNone">일본 </a></li>
					<li ><a href="#" class="decoNone">괌/사이판</a></li>
					<li ><a href="#" class="decoNone">호주/뉴질랜드</a></li>
					<li ><a href="#" class="decoNone">미주/캐나다</a></li>
					<li ><a href="#" class="decoNone"><i class="fa fa-plus" aria-hidden="true"></i> 더보기</a></li>
		</ul>
	</div>
	
	
	<div id="departureConfirmed">  
	
	<img alt="출발확정여행상품" src="/images/product/1-2.PNG">
	<img alt="출발확정여행상품" src="/images/product/1-3.PNG">
	<img alt="출발확정여행상품" src="/images/product/2-1.PNG">
	<img alt="출발확정여행상품" src="/images/product/3-1.PNG">
	
	</div>
	
 </div>
 
 <div id="theme_block">
 <div id="theme_block2">
 <h2>모아TV</h2><span class="more_r"><a href="#"><i class="fa fa-plus" aria-hidden="true">더보기</i></a></span>
 <br><br>
 <img alt="TEST" src="/images/product/1-2.PNG">
 </div>
 <div id="theme_block2">
 <h2>리미티드</h2><span class="more_r"><a href="#"><i class="fa fa-plus" aria-hidden="true">더보기</i></a></span>
 <br><br>
 <img alt="TEST" src="/images/product/1-2.PNG">
 </div>
</div>


 <div id="theme_block">
 <h2 class="h_undergtag">홈쇼핑 & 이벤트</h2>
 	<div id="event_small_up">
	<div class="cycle-slideshow">
	<img alt="홈쇼핑" src="/images/tp-main/event1.png">
	<img alt="홈쇼핑" src="/images/tp-main/event2.png">
	<img alt="홈쇼핑" src="/images/tp-main/event3.png">
	<img alt="홈쇼핑" src="/images/tp-main/event4.png">
	</div>
	</div>
	 
	<div id="event_small_up">
	<div class="cycle-slideshow">
	<img alt="홈쇼핑" src="/images/tp-main/event_small_up1.png">
	<img alt="홈쇼핑" src="/images/tp-main/event_small_up2.PNG">
	</div>
	</div>
	
	<div id="event_small_up">  
	<div class="cycle-slideshow">
	<img alt="홈쇼핑" src="/images/tp-main/event_small_up3.PNG">
	<img alt="홈쇼핑" src="/images/tp-main/event_small_up4.PNG">
	</div>
	</div>
	
</div>

<div id="theme_block">
<h2 class="h_undergtag">베스트 여행후기</h2><span class="more_r"><a href="#"><i class="fa fa-plus" aria-hidden="true">더보기</i></a></span>
 <br><br>
<div id="event_small_up">
	<img alt="여행후기사진" src="/images/tp-main/eviza.jpg" class="travle_img">
	<h3 class="travle_talk">===여행후기 제목 들어갈곳===</h3>
	<p>===여행후기 글 들어갈곳=====</p>
</div>
<div id="event_small_up">
	<img alt="여행후기사진" src="/images/tp-main/eviza.jpg" class="travle_img">
	<h3 class="travle_talk">===여행후기 제목 들어갈곳===</h3>
	<p>===여행후기 글 들어갈곳=====</p>
</div>
</div>

<div id="theme_block">

<div id="notice_main_css">
<img class="main_head_font" alt="공지사항" src="/images/RYUTEST/main_notice_font.png"><span class="more_r"><a href="#"><i class="fa fa-plus" aria-hidden="true">더보기</i></a></span>
 <br><br>
<ul class="notice">
	<li>공지사항1</li>
	<li>공지사항2</li>
	<li>공지사항3</li>
</ul>

</div>

	<div id="theme_block2">
		<img class="main_head_font" alt="자주하는 질문" src="/images/RYUTEST/main_qna_font.png"><span class="more_r"><i class="fa fa-plus" aria-hidden="true">더보기</i></span>
		<br>
		<br>
		<div id="main_qna_icon">
		<a href="#">
		<img alt="여행상품" src="/images/tp-main/ico_faq1.png">
		<br>
		여행상품
		</a>
		<a href="#">
		<img alt="상품예약" src="/images/tp-main/ico_faq2.png">
		<br>
		상품예약
		</a>
		<a href="#">
		<img alt="상품결제" src="/images/tp-main/ico_faq3.png">
		<br>
		상품결제
		</a>
		<a href="#">
		<img alt="해외항공" src="/images/tp-main/ico_faq4.png">
		<br>
		해외항공
		</a>
		<a href="#">
		<img alt="여행상품권" src="/images/tp-main/ico_faq5.png">
		<br>
		여행상품권
		</a>
		<a href="#">
		<img alt="홈페이지" src="/images/tp-main/ico_faq6.png">
		<br>
		홈페이지
		</a>
	</div>
	</div>

</div>






</div>