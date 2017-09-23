<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/mainJS.js"></script>
<!-- 홈쇼핑 배너 회전 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<!-- sliderkit -->
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
 <script>
 $(document).ready(function(){
	 $(".tab_type01 > li").on('click',function(){
		var thisTab = this;
		
		$('.on').not(thisTab).slideUp(function(){
			$(this).removeClass('on').fadeIn();
		});
		$(thisTab).addClass('on');
		
	 });
 });
$(function(){
		//노랑티비 slide
		$(".ty_list").sliderkit({
			auto:true,
            autospeed:3000,
            circular:true,
            mousewheel:false,
            fastchange:false,
            shownavitems: 5
		});
		$(".yt_list .list>a").on("click", function(e){
			e.preventDefault();
			$(this).parent().siblings().removeClass("on");
			$(this).parent().addClass("on");
		});
		//오늘만노랑 slide
		$(".yellow_tv_new").sliderkit({
			auto:true,
            autospeed:3000,
            circular:true,
            mousewheel:false,
            fastchange:false,
            shownavitems: 5,
            panelfxbefore : function(){
            	$(".yellow_tv_new ul li.sliderkit-panel-active .list:first-child").addClass("on");
            	$(".yellow_tv_new ul li.sliderkit-panel-active .list:nth-child(2)").removeClass("on");
            }
		});
		
	});
 </script>
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
               <br>
               <p><span>도착 </span> <span><input type="checkbox" id="dontknow" value=""/>귀국일 미지정</span></p>
               <br>  
               <!-- 클릭 시 모달창이나 팝업창 띄워 검색하기 기능 -->
               <input type="text" class="airportfind-content-inside1" placeholder="도착도시 검색"/>
               <input type="text" class="airportfind-content-inside2 whenyoucome" placeholder="도착일자 선택"/>
               <select class="airportfind-content-inside2 dontknowWhen">
               <option>체류일 선택</option>
               </select>
               <div class="kind_of_people">
               <p>인원</p>
               <!-- select id 성인 :adult 소아 :child 유아 : baby  -->
               <select id="adult">
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
               
              
               <select id="child">
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
               
               
               <select id="baby">
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
               </div>
               
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

	<!-- 컨텐츠 별 크기 -->
	<div id="theme_block">
	  
	
	<h2 class ="titMain">
	출발확정
	<a href="#" class="time_more">더보기</a>
	</h2> 
	
		
		<ul class="tab_type01">  
					<li class="on"><a href="#" class="decoNone">유럽</a></li>
					<li ><a href="#" class="decoNone">동남아</a></li>
					<li ><a href="#" class="decoNone">필리핀/푸켓</a></li>
					<li ><a href="#" class="decoNone">중국/홍콩/대만</a></li>
					<li ><a href="#" class="decoNone">일본 </a></li>
					<li ><a href="#" class="decoNone">괌/사이판</a></li>
					<li ><a href="#" class="decoNone">호주/뉴질랜드</a></li>
					<li ><a href="#" class="decoNone">미주/캐나다</a></li>
		</ul>
	
	
	<ul class="prd_list">
	<li><a href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=3865&amp;did=3870&amp;goodsCd=ATP2024&amp;year=2017&amp;month=10">
			<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/b2/b207d319b9a7e1db29e010d429b17a1f.tn.410x280.jpg" alt="이미지"></span>
			<p>
				[방콕&amp;파타야][$130상당옵션포함] 다~되는 방콕&amp;...</p>
			<span class="date">
			10/9,10/10,10/11</span>
			<span class="price">299,000<span>원~</span></span>
	</a></li>
	<li><a href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=337&amp;did=315&amp;goodsCd=ACP1024&amp;year=2017&amp;month=10">
			<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/cd/cda853b2799c287503ec63fd25f6d033.tn.410x280.jpg" alt="이미지"></span>
			<p>
				★어서WAT 앙코르WAT★캄보디아/앙코르왓 4일/5일...</p>
			<span class="date">
			10/11,10/14,10/15</span>
			<span class="price">299,000<span>원~</span></span>
	</a></li>
	<li><a href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=347&amp;did=317&amp;goodsCd=ALP1000&amp;year=2017&amp;month=10">
			<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/d7/d76f48981bebc87222ec5be7137f4ace.tn.410x280.jpg" alt="이미지"></span>
			<p>
				[라오스] 비엔티엔/방비엥+블루라군 3박5일</p>
			<span class="date">
			10/9,10/11</span>
			<span class="price">399,000<span>원~</span></span>
	</a></li>
	<li><a href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=299&amp;did=3472&amp;goodsCd=AMP1023&amp;year=2017&amp;month=10">
			<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/b4/b4c754d57595a593a4546fd6709ccadc.tn.410x280.jpg" alt="이미지"></span>
			<p>
				코타키나발루*실속 파격 특가*2일자유+시내관광 3박5...</p>
			<span class="date">
			10/11,10/12,10/13</span>
			<span class="price">199,000<span>원~</span></span>
	</a></li>
	</ul>
	
 </div>
 
 <div class="bg_tv_limit">
			<div class="tv_limit">
				<!-- 노랑티비 -->
				<div class="yb_tv">
					<h2 class="titMain">
						모아TV
						<span class="sub_txt">방송일: 2017.09.22 ~ 2017.09.29</span>
						<a href="/moaTv/moaTvList.do" class="time_more">더보기</a>
					</h2>
					<!-- tv content -->
					<div class="tv_banner">
					  <div class="limit_banner">
						<div class="clear">
						  <!-- yellow_tv_new -->
						  <div class="yellow_tv_new sliderkit sliderkit-panels" style="display: block;">					
								<ul class="yt_list">
									<li class="panel sliderkit-panel sliderkit-panel-active" style="display: list-item;">
									<div class="list on">
											<a href="#">
											비엔티엔/방비엥+블루라군 5일</a>
											<div class="tv_view_link">
												<a href="/yellowTv/yellowTvList.do?ybtvSeq=1100002340">
													<span class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/13/1376b38c8879fc0343dcaeeca3fd111f.tn.630x410.png" alt=" " id="vimeoImg0"></span>
													<span class="tit">비엔티엔/방비엥+블루라군 5일</span>
													<span class="won"><em>349,000</em>원~</span>
												</a>
											</div>
										</div>
									<div class="list ">
											<a href="#">
											부관훼리 타고 떠나는 벳부,유후인,기..
						                		</a>
											<div class="tv_view_link">
												<a href="/yellowTv/yellowTvList.do?ybtvSeq=1100002341">
													<span class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/c9/c95c5e7b453987ef58dd234ed9b6fc0a.tn.630x410.png" alt=" " id="vimeoImg1"></span>
													<span class="tit">부관훼리 타고 떠나는 벳부,유후인,기타큐슈 4일</span>
													<span class="won"><em>199,000</em>원~</span>
												</a>
											</div>
										</div>
									</li>
									</ul>	
								<!-- sliderkit-nav -->
								<div class="control sliderkit-nav">
									<div class="ball sliderkit-nav-clip" style="width: 12px; height: 12px;">
										<ul style="width: 17px;">
											<li class="sliderkit-selected" style="width: 12px; height: 12px;">
												<a href="#main02" title="배너">링크</a>
											</li>
											</ul>
									</div>
								</div>
								<!-- //sliderkit-nav -->			
						  </div>
						  <!-- //yellow_tv_new -->
						</div>
					  </div>
					</div>
					<!-- //tv content -->
				</div>
				<!-- //노랑티비 -->
				
				  
				<!--  오늘만 노랑 -->
				<div class="today_yellow_area">
				 	<h2 class="titMain">
						오늘만 모아
						<span class="sub_txt">오늘 단 하루 예약 시! 추가 혜택</span>
						<a href="/todayMoa/todayMoaList.do" class="time_more">더보기</a>
					</h2>
					<!-- yellow list -->
					<div class="tv_list_clfix">
						<div class="ty_list sliderkit sliderkit-panels" style="height: 350px; display: block;">
							<ul>
							<li class="panel sliderkit-panel" style="display: list-item;">
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=APP4033">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/c0/c0aa575613671369274e3954492b7f53.tn.410x280.jpg" alt=""></div>
											<span class="tit">[필리핀/푸켓]세부 발라이리조트+캐리비안호핑투어+ 발마사지 5일 </span>
											<span class="won"><em>399,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>발마사지→스톤마사지로 업그레이드</dd>
												</dl>
										</a>
									</div>
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=PAP2022">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/c2/c2f57b101dc5b1acfd3c5f899bebe042.tn.410x280.JPG" alt=""></div>
											<span class="tit">[호주/뉴질랜드]호주/뉴질랜드 남북섬 10일 </span>
											<span class="won"><em>2,699,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>목베개 증정 (인당 1개)</dd>
												</dl>
										</a>
									</div>
								</li>
								<li class="panel sliderkit-panel" style="display: list-item;">
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=ATP1049">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/33/3329cb8b9677566d59ca6b81b3b7a320.tn.410x280.jpg" alt=""></div>
											<span class="tit">[동남아]방콕/파타야 5일 (130불상당 옵션포함)</span>
											<span class="won"><em>436,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>씽크네이쳐 트래블킷 증정(1룸당 1개증정)</dd>
												</dl>
										</a>
									</div>
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=CSP1000">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/ae/ae04ceecfecaf09be08c4d82f42585e7.tn.410x280.JPG" alt=""></div>
											<span class="tit">[중국]계림/양삭/이강유람+관암동굴 5일/6일(+온천)</span>
											<span class="won"><em>499,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>발마사지 옵션 제공 ($20 상당)</dd>
												</dl>
										</a>
									</div>
								</li>
								<li class="panel sliderkit-panel" style="display: list-item;">
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=EMP5023">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/ac/acf12210b08604abbffee653d372ace3.tn.410x280.jpg" alt=""></div>
											<span class="tit">[유럽]스페인+포르투칼 10일 (백화점 상품권제공/AY)</span>
											<span class="won"><em>1,590,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>몬세라트 언덕 케이블카 탑승 (30 유로 상당) </dd>
												</dl>
										</a>
									</div>
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=PAP1004">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/da/da2b312de4eb0d90c78950feff6fe439.tn.410x280.jpg" alt=""></div>
											<span class="tit">[호주/뉴질랜드]시드니/포트스테판/울릉공 6일</span>
											<span class="won"><em>1,299,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>오페라하우스 내부관람 포함 (AUD 25 상당)</dd>
												</dl>
										</a>
									</div>
								</li>
								<li class="panel sliderkit-panel" style="display: list-item;">
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=JHP1004">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/6d/6d3f202a78c938986902527b6691d210.tn.410x280.jpg" alt=""></div>
											<span class="tit">[일본]도야,죠잔케이,삿포로,오타루,노보리베츠4일 </span>
											<span class="won"><em>1,199,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>북해도 명물 마유 크림 1인당 1개 제공,오타루 오르골당 쿠폰 제공</dd>
												</dl>
										</a>
									</div>
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=APP1416">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/a1/a1daafde05720e04f32b98672f0a29c7.tn.410x280.JPG" alt=""></div>
											<span class="tit">[필리핀/푸켓]보라카이 신규 사보이리조트+세일링보트 5일</span>
											<span class="won"><em>409,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>해변오일마사지 → 전신마사지 업그레이드</dd>
												</dl>
										</a>
									</div>
								</li>
								<li class="panel sliderkit-panel" style="display: list-item;">
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=KJP1138">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/31/3128c7576c3a571536abf94f74fa50fd.tn.410x280.jpg" alt=""></div>
											<span class="tit">[국내]제주도 서커스월드+아쿠아플라넷 2박3일(리젠트마린)</span>
											<span class="won"><em>295,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>선착순 스탠다드→슈페리어 객실 업그레이드</dd>
												</dl>
										</a>
									</div>
								<div class="list">
										<a href="/product/unitList.do?menu=pkg&amp;goodsCd=CHP1001">
											<div class="img"><img src="https://dimgcdn.ybtour.co.kr/TN/84/844e695b02b9ba5885c80c48e2b18ed4.tn.410x280.jpg" alt=""></div>
											<span class="tit">[홍콩/대만]홍콩+반나절자유 3일</span>
											<span class="won"><em>369,000</em>원~</span>
											<dl>
												<dt>혜택</dt>
												<dd>기화병과 제공 (객실당 1개)</dd>
												</dl>
										</a>
									</div>
								</li>
								</ul>
							<!-- sliderkit-nav -->
							<div class="control sliderkit-nav">
								<div class="ball sliderkit-nav-clip" style="width: 80px; height: 12px;">
									<ul style="width: 85px;">
										<li class="" style="width: 12px; height: 12px;">
												<a href="#main02" title="배너">링크</a>
											</li>
											<li style="width: 12px; height: 12px;" class="">
												<a href="#main02" title="배너">링크</a>
											</li>
											<li style="width: 12px; height: 12px;" class="sliderkit-selected">
												<a href="#main02" title="배너">링크</a>
											</li>
											<li style="width: 12px; height: 12px;" class="">
												<a href="#main02" title="배너">링크</a>
											</li>
											<li style="width: 12px; height: 12px;" class="">
												<a href="#main02" title="배너">링크</a>
											</li>
											</ul>
								</div>
							</div>
							<!-- //sliderkit-nav -->
							
						</div>
					</div>
					<!-- //yellow list -->
				</div>
				<!-- //오늘만 노랑 -->
			</div>
		</div>

 <div id="theme_block">
 <h2 class ="titMain">홈쇼핑 & 이벤트</h2>
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
<h2 class ="titMain">베스트 여행후기<a href="#" class="time_more">더보기</a></h2>
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
<h2 class ="titMain">
	공지사항
<a href="#" class="time_more">더보기</a>
</h2>
	
<ul class="notice">
	<li>공지사항1</li>
	<li>공지사항2</li>
	<li>공지사항3</li>
</ul>

</div>

	<div id="theme_block2">
	<h2 class ="titMain">
	자주하는 질문
	</h2>
		<span class="time_more"><a href="#"><i class="fa fa-plus" aria-hidden="true">더보기</i></a></span>
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






