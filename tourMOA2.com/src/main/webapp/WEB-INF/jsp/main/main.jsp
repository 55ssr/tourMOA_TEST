<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/mainJS.js"></script>
<!-- 홈쇼핑 배너 회전 -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<!-- sliderkit -->
<link rel="stylesheet" href="/css/sliderkit/sliderkit.css">
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
<script>
	$(document).ready(function() {
		$("div#theme_block ul.tab_type01 > li").on('click', function() {
			var thisTab = this;

			$('.on').not(thisTab).slideUp(function() {
				$(this).removeClass('on').fadeIn();
			});
			$(thisTab).addClass('on');

		});
		$("div.recommand01 > .tab_type02 > li").on('click', function() {
			var thisTab = this;

			$('.ck').not(thisTab).slideUp(function() {
				$(this).removeClass('ck').fadeIn();
			});
			$(thisTab).addClass('ck');

		});
		$("div.sidemenuBtn ").on("click", function(e) {
			e.preventDefault();
			$(this).toggleClass("on");
			if(!$("div.sidemenuBtn").hasClass('on')){
				$("#sidemenu").css({right:"0px",height:"480px"});
				$("#sidemenu > ul.after").css({display:"block"});
				$("#sidemenu > ul.before").css({display:"none"});
			}else{
				$("#sidemenu").css({right:"-3px",height:"760px"});
				$("#sidemenu > ul.after").css({display:"none"});
				$("#sidemenu > ul.before").css({display:"block"});
			}
				
		});

	});
	$(function() {
		//노랑티비 slide
		$(".ty_list").sliderkit({
			auto : true,
			autospeed : 3000,
			circular : true,
			mousewheel : false,
			fastchange : false,
			shownavitems : 5
		});
		$(".yt_list .list>a").on("click", function(e) {
			e.preventDefault();
			$(this).parent().siblings().removeClass("moaon");
			$(this).parent().addClass("moaon");
		});
		//오늘만모아 slide
		$(".yellow_tv_new")
				.sliderkit(
						{
							auto : true,
							autospeed : 3000,
							circular : true,
							mousewheel : false,
							fastchange : false,
							shownavitems : 5,
							panelfxbefore : function() {
								$(
										".yellow_tv_new ul li.sliderkit-panel-active .list:first-child")
										.addClass("on");
								$(
										".yellow_tv_new ul li.sliderkit-panel-active .list:nth-child(2)")
										.removeClass("on");
							}
						});
		$(".photoslider-bullets").sliderkit({
			auto : true,
			autospeed : 3000,
			circular : true,
			mousewheel : false,
			fastchange : false,
			shownavitems : 5
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
						<input class="find-content-inside1" type="text" id="" name=""
							placeholder="여행지역/호텔명을 입력하세요" />

						<p>출발일월</p>

						<input class="find-content-inside2" type="date" id="" name="" />
						<input type="button" id="searchBtn" name="searchBtn" value="검색하기" />

					</div></li>



				<li class="airportfind"><p class="airportfinder">항공권 찾기</p>
					<div class="airportfind-content">
						<div id="quick">
							<br> <input type="button" id="airlineBtn" name="airlineBtn"
								class="airportfind_airlineBtn" value="해외항공권" /> <input
								type="button" id="domesticBtn" name="domesticBtn"
								class="airportfind_domesticBtn" value="국내항공권" /> <br>
							<!-- 왕복/편도 설정 id ="air_flightWay" VALUE = 왕복 : R 편도 : O  -->
							<input type="radio" value="R" id="air_flightWay"
								name="air_flightWay" checked="checked"
								style="margin-left: 20px;" /> 왕복 <input type="radio" value="O"
								id="air_flightWay" name="air_flightWay"
								style="margin-left: 20px; margin-bottom: 20px;" /> 편도 <br>
							<p>출발</p>
							<select class="airportfind-content-inside1">
								<option>인천/김포</option>
							</select> <input type="date" class="airportfind-content-inside2"
								placeholder="출발일자 선택" /> <br>
							<p>
								<span>도착 </span> <span> <input type="checkbox"
									id="dontknow" value="" /> 귀국일 미지정
								</span>
							</p>
							<br>
							<!-- 클릭 시 모달창이나 팝업창 띄워 검색하기 기능 -->
							<input type="text" class="airportfind-content-inside1"
								placeholder="도착도시 검색" /> <input type="date"
								class="airportfind-content-inside2 whenyoucome"
								placeholder="도착일자 선택" /> <select
								class="airportfind-content-inside2 dontknowWhen">
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
								</select> <select id="child">
									<option value="0">소아</option>
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
									<option value="6">6명</option>
									<option value="7">7명</option>
									<option value="8">8명</option>
									<option value="9">9명</option>
								</select> <select id="baby">
									<option value="0">유아</option>
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
									<option value="6">6명</option>
									<option value="7">7명</option>
									<option value="8">8명</option>
									<option value="9">9명</option>
								</select>
							</div>

							<input type="button" id="searchBtn" name="searchBtn" value="검색하기" />

						</div>
					</div>


					<div class="domesticfind-content">
						<div id="quick">
							<br> <input type="button" id="airlineBtn" name="airlineBtn"
								class="domestic_airlineBtn" value="해외항공권" /> <input
								type="button" id="domesticBtn" name="domesticBtn"
								class="domestic_domesticBtn" value="국내항공권" /> <br>
							<!-- 왕복/편도 설정 id ="flightWay" VALUE = 왕복 : R 편도 : O  -->
							<input type="radio" value="R" id="flightWay" name="flightWay"
								checked="checked" style="margin-left: 20px;" /> 왕복 <input
								type="radio" value="O" id="flightWay" name="flightWay"
								style="margin-left: 20px; margin-bottom: 20px;" /> 편도 <br>
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
							</select> <input type="date" class="domesticfind-content-inside2"
								placeholder="출발일자 선택" />

							<p>도착</p>
							<!-- 클릭 시 모달창이나 팝업창 띄워 검색하기 기능 -->
							<input type="text" class="domesticfind-content-inside1"
								placeholder="도착도시 검색" /> <input type="date"
								class="domesticfind-content-inside2" placeholder="도착일자 선택" />

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
							</select> <select class="domesticfind-content-inside-people2" id="child">
								<option value="0">소아</option>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
								<option value="8">8명</option>
								<option value="9">9명</option>
							</select> <select class="domesticfind-content-inside-people2" id="baby">
								<option value="0">유아</option>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
								<option value="8">8명</option>
								<option value="9">9명</option>
							</select> <input type="button" id="searchBtn" name="searchBtn"
								value="검색하기" />

						</div>
					</div></li>
				<li><a href="#" id="quickCloseBtn">X</a></li>
			</ul>

		</div>
	</div>

	<!-- right menu s -->
	<!--         <div id="rightmenu">
                <ul>
                    <li><a href="#"><i class="fa fa-search" aria-hidden="true" style="color: orange;"></i>통합검색</a></li>
                    <li><a href="#"><i class="fa fa-bell" aria-hidden="true" style="color: orange;"></i>출발확정</a></li>
                    <li><a href="#"><i class="fa fa-building" aria-hidden="true" style="color: orange;"></i>기업/단체문의</a></li>
                    <li>
                    <a href="#"><i class="fa fa-shopping-basket" aria-hidden="true"></i>오늘 본 상품</a>
                    <div class="today_box">
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
                    </div>
                    </li>
                    <li><a href="#"><i class="fa fa-address-card" aria-hidden="true"></i>예약확인/결제</a></li>
                    <li><a href="#"><i class="fa fa-calculator" aria-hidden="true"></i>결제방법안내</a></li>
                    <li><a href="#"><i class="fa fa-credit-card-alt" aria-hidden="true"></i>무이자할부</a></li>
                    <li><a href="#"><i class="fa fa-certificate" aria-hidden="true"></i>계좌번호안내</a></li>
                    <li><a href="#"><i class="fa fa-mobile fa-2x" aria-hidden="true"></i>직통전화번호</a></li>
                    <li><a href="#"><i class="fa fa-percent" aria-hidden="true"></i>할인쿠폰</a></li>
                    <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>대리점안내</a></li>
                    <li><a href="#"><i class="fa fa-bullhorn" aria-hidden="true"></i>고객만족도조사</a></li>
                    <li><a href="#"><i class="fa fa-commenting" aria-hidden="true"></i>카카오톡</a></li>
                    <li><a href="#" id="moveTopBtn"><i class="fa fa-arrow-up" aria-hidden="true"></i>TOP</a></li>
                </ul>
            </div> -->
	<!-- right menu e -->

</div>
<div id="sidemenu" class="open sideMain"
	style="top: 210px; right: -3px; height: 760px; position: absolute;">
	<!--[[ 우측 사이드메뉴 Start ]]-->
	<div class="sidemenuBtn on"></div>
	<ul class="after" style="display: none;">
		<li><img src="/images/customer/snb_nav1_m.gif" alt="통합검색"></li>
		<li><img src="/images/customer/snb_nav2_m.gif" alt="출발확정상품"></li>
		<li><img src="/images/customer/snb_nav3_m.gif" alt="기업/단체문의"></li>
		<li class="to"><img src="/images/customer/snb_today.gif"
			alt="오늘본 상품"><span class="today_view"><span>0</span></span></li>
		<li><img src="/images/customer/snb_nav4_m.gif" alt="예약확인/결제"></li>
		<li><img src="/images/customer/snb_nav5_m.gif" alt="결제방법안내 "></li>
		<li><img src="/images/customer/snb_nav6_m.gif" alt="무이자할부"></li>
		<li><img src="/images/customer/snb_nav7_m.gif" alt="계좌번호안내"></li>
		<li><img src="/images/customer/snb_nav8_m.gif" alt="직통전화번호"></li>
		<li><img src="/images/customer/snb_nav9_m.gif" alt="할인쿠폰"></li>
		<li><img src="/images/customer/snb_nav10_m.gif" alt="대리점안내 "></li>
		<li><img src="/images/customer/snb_nav11_m.gif" alt="고객만족도조사"></li>
		<li><img src="/images/customer/snb_nav12_m.gif" alt="카카오톡"></li>
		<li><img src="/images/customer/snb_nav13_m.gif" alt="우수여행상품"></li>

	</ul>
	<ul class="before" style="display: block;">
		<li><a href="/search/searchKeyword.do"><img
				src="/images/customer/snb_nav1.gif" alt="통합검색"></a></li>
		<li><a href="/promotion/timeGather.do"><img
				src="/images/customer/snb_nav2.gif" alt="출발확정"></a></li>
		<li><a href="/product/biztravel.do?menu=pkg"><img
				src="/images/customer/snb_nav3.gif" alt="기업/단체문의"></a></li>
		<li class="today_goods">
			<div class="sidemenuLayer">
				<!--[[ 오늘본상품 레이어 Start ]]-->
				<span class="layerTit"></span> <span class="price"></span> <img
					src="/images/sidemenu_layer.png" alt="icon">
			</div> <!--[[ 오늘본상품 레이어 End ]]--> <span class="stit"><img
				src="/images/customer/txt_today.png" alt="오늘 본 상품"></span>
			<div class="today_img picWrap">
				<div class="today_box">
					<ul class="today_list">
						<p>
							오늘 본<br> 상품이<br> 없습니다.
						</p>
					</ul>
				</div>
			</div>
			<div class="page_today">
				<a href="#none" onclick="fnTodayL();"><img
					src="/images/customer/btn_today_prev.gif" alt="이전"></a><strong
					class="curPic">0</strong> / 0<a href="#none" onclick="fnTodayR();"><img
					src="/images/customer/btn_today_next.gif" alt="다음"></a>
			</div>

		</li>

		<li><a
			href="javascript:showLoginPayLayer('/mypage/reserveList.do');"><img
				src="/images/customer/snb_nav4.gif" alt="예약확인/결제"></a></li>
		<li><a href="javascript:;" role-h="805" role-w="880"
			role-url="/popup/payMethodPopup.do" onclick="showLayer(this);"><img
				src="/images/customer/snb_nav5.gif" alt="결제방법 안내"></a></li>
		<li><a href="javascript:;" role-h="812" role-w="880"
			role-url="/popup/openIntFree.do" onclick="showLayer(this);"><img
				src="/images/customer/snb_nav6.gif" alt="무이자 할부 "></a></li>
		<li><a href="javascript:;" role-h="800"
			role-url="/popup/accountNumber.do" onclick="showLayer(this);"><img
				src="/images/customer/snb_nav7.gif" alt="계좌번호안내"></a></li>
		<li><a href="javascript:;" role-h="800"
			role-url="/popup/directDial.do" onclick="showLayer(this);"><img
				src="/images/customer/snb_nav8.gif" alt="직통전화번호"></a></li>
		<li><a href="/promotion/coupon.do"><img
				src="/images/customer/snb_nav9.gif" alt="할인쿠폰"></a></li>
		<li><a href="http://company.ybtour.co.kr/agent/about.do"><img
				src="/images/customer/snb_nav10.gif" alt="대리점안내"></a></li>
		<li><a href="/customer/survey.do"><img
				src="/images/customer/snb_nav11.gif" alt="고객만족도 조사 "></a></li>
		<li><a href="/promotion/event/2016/0502_ev_kakao/"><img
				src="/images/customer/snb_nav12.gif" alt="카카오톡"></a></li>
		<li><a href="/promotion/event/2017/0828_ev_pmawards/"><img
				src="/images/customer/snb_nav13.gif" alt="우수여행상품"></a></li>
	</ul>
</div>

<!-- 컨텐츠 별 크기 -->
<div id="theme_block">


	<h2 class="titMain">
		출발확정 <a href="#" class="time_more">더보기</a>
	</h2>


	<ul class="tab_type01">
		<li class="on"><a href="#" class="decoNone">유럽</a></li>
		<li><a href="#" class="decoNone">동남아</a></li>
		<li><a href="#" class="decoNone">필리핀/푸켓</a></li>
		<li><a href="#" class="decoNone">중국/홍콩/대만</a></li>
		<li><a href="#" class="decoNone">일본 </a></li>
		<li><a href="#" class="decoNone">괌/사이판</a></li>
		<li><a href="#" class="decoNone">호주/뉴질랜드</a></li>
		<li><a href="#" class="decoNone">미주/캐나다</a></li>
	</ul>


	<ul class="prd_list">
		<li><a
			href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=3865&amp;did=3870&amp;goodsCd=ATP2024&amp;year=2017&amp;month=10">
				<span class="pic"><img
					src="https://dimgcdn.ybtour.co.kr/TN/b2/b207d319b9a7e1db29e010d429b17a1f.tn.410x280.jpg"
					alt="이미지"></span>
				<p>[방콕&amp;파타야][$130상당옵션포함] 다~되는 방콕&amp;...</p> <span class="date">
					10/9,10/10,10/11</span> <span class="price">299,000<span>원~</span></span>
		</a></li>
		<li><a
			href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=337&amp;did=315&amp;goodsCd=ACP1024&amp;year=2017&amp;month=10">
				<span class="pic"><img
					src="https://dimgcdn.ybtour.co.kr/TN/cd/cda853b2799c287503ec63fd25f6d033.tn.410x280.jpg"
					alt="이미지"></span>
				<p>★어서WAT 앙코르WAT★캄보디아/앙코르왓 4일/5일...</p> <span class="date">
					10/11,10/14,10/15</span> <span class="price">299,000<span>원~</span></span>
		</a></li>
		<li><a
			href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=347&amp;did=317&amp;goodsCd=ALP1000&amp;year=2017&amp;month=10">
				<span class="pic"><img
					src="https://dimgcdn.ybtour.co.kr/TN/d7/d76f48981bebc87222ec5be7137f4ace.tn.410x280.jpg"
					alt="이미지"></span>
				<p>[라오스] 비엔티엔/방비엥+블루라군 3박5일</p> <span class="date">
					10/9,10/11</span> <span class="price">399,000<span>원~</span></span>
		</a></li>
		<li><a
			href="/product/unitList.do?menu=pkg&amp;loc=2&amp;pid=299&amp;did=3472&amp;goodsCd=AMP1023&amp;year=2017&amp;month=10">
				<span class="pic"><img
					src="https://dimgcdn.ybtour.co.kr/TN/b4/b4c754d57595a593a4546fd6709ccadc.tn.410x280.jpg"
					alt="이미지"></span>
				<p>코타키나발루*실속 파격 특가*2일자유+시내관광 3박5...</p> <span class="date">
					10/11,10/12,10/13</span> <span class="price">199,000<span>원~</span></span>
		</a></li>
	</ul>

</div>

<div class="bg_tv_limit">
	<div class="tv_limit">
		<!-- 모아티비 -->
		<div class="yb_tv">
			<h2 class="titMain">
				모아TV <span class="sub_txt">방송일: 2017.09.22 ~ 2017.09.29</span> <a
					href="/moaTv/moaTvList.do" class="time_more">더보기</a>
			</h2>
			<!-- tv content -->
			<div class="tv_banner">
				<div class="limit_banner">
					<div class="clear">
						<!-- MOA_tv_new -->
						<div class="yellow_tv_new sliderkit sliderkit-panels">
							<ul class="yt_list">
								<li class="panel sliderkit-panel ">
									<div class="list moaon">
										<a href="#"> 비엔티엔/방비엥+블루라군 5일</a>
										<div class="tv_view_link">
											<a href="/yellowTv/yellowTvList.do?ybtvSeq=1100002340"> <span
												class="img"><img
													src="https://dimgcdn.ybtour.co.kr/TN/13/1376b38c8879fc0343dcaeeca3fd111f.tn.630x410.png"
													alt=" " id="vimeoImg0"></span> <span class="tit">비엔티엔/방비엥+블루라군
													5일</span> <span class="won"><em>349,000</em>원~</span>
											</a>
										</div>
									</div>
									<div class="list ">
										<a href="#"> 부관훼리 타고 떠나는 벳부,유후인,기.. </a>
										<div class="tv_view_link">
											<a href="/yellowTv/yellowTvList.do?ybtvSeq=1100002341"> <span
												class="img"><img
													src="https://dimgcdn.ybtour.co.kr/TN/c9/c95c5e7b453987ef58dd234ed9b6fc0a.tn.630x410.png"
													alt=" " id="vimeoImg1"></span> <span class="tit">부관훼리
													타고 떠나는 벳부,유후인,기타큐슈 4일</span> <span class="won"><em>199,000</em>원~</span>
											</a>
										</div>
									</div>
								</li>
							</ul>
							<!-- sliderkit-nav -->
							<div class="control sliderkit-nav">
								<div class="ball sliderkit-nav-clip"
									style="width: 12px; height: 12px;">
									<ul style="width: 17px;">
										<li class="sliderkit-selected"
											style="width: 12px; height: 12px;"><a href="#main02"
											title="배너">링크</a></li>
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
				오늘만 모아 <span class="sub_txt">오늘 단 하루 예약 시! 추가 혜택</span> <a
					href="/todayMoa/todayMoaList.do" class="time_more">더보기</a>
			</h2>
			<!-- yellow list -->
			<div class="tv_list_clfix">
				<div class="ty_list sliderkit sliderkit-panels">
					<ul>
						<li class="panel sliderkit-panel">
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=APP4033">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/c0/c0aa575613671369274e3954492b7f53.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[필리핀/푸켓]세부 발라이리조트+캐리비안호핑투어+ 발마사지 5일 </span>
									<span class="won"><em>399,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>발마사지→스톤마사지로 업그레이드</dd>
									</dl>
								</a>
							</div>
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=PAP2022">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/c2/c2f57b101dc5b1acfd3c5f899bebe042.tn.410x280.JPG"
											alt="">
									</div> <span class="tit">[호주/뉴질랜드]호주/뉴질랜드 남북섬 10일 </span> <span
									class="won"><em>2,699,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>목베개 증정 (인당 1개)</dd>
									</dl>
								</a>
							</div>
						</li>
						<li class="panel sliderkit-panel">
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=ATP1049">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/33/3329cb8b9677566d59ca6b81b3b7a320.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[동남아]방콕/파타야 5일 (130불상당 옵션포함)</span> <span
									class="won"><em>436,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>씽크네이쳐 트래블킷 증정(1룸당 1개증정)</dd>
									</dl>
								</a>
							</div>
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=CSP1000">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/ae/ae04ceecfecaf09be08c4d82f42585e7.tn.410x280.JPG"
											alt="">
									</div> <span class="tit">[중국]계림/양삭/이강유람+관암동굴 5일/6일(+온천)</span> <span
									class="won"><em>499,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>발마사지 옵션 제공 ($20 상당)</dd>
									</dl>
								</a>
							</div>
						</li>
						<li class="panel sliderkit-panel">
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=EMP5023">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/ac/acf12210b08604abbffee653d372ace3.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[유럽]스페인+포르투칼 10일 (백화점 상품권제공/AY)</span> <span
									class="won"><em>1,590,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>몬세라트 언덕 케이블카 탑승 (30 유로 상당)</dd>
									</dl>
								</a>
							</div>
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=PAP1004">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/da/da2b312de4eb0d90c78950feff6fe439.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[호주/뉴질랜드]시드니/포트스테판/울릉공 6일</span> <span
									class="won"><em>1,299,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>오페라하우스 내부관람 포함 (AUD 25 상당)</dd>
									</dl>
								</a>
							</div>
						</li>
						<li class="panel sliderkit-panel">
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=JHP1004">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/6d/6d3f202a78c938986902527b6691d210.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[일본]도야,죠잔케이,삿포로,오타루,노보리베츠4일 </span> <span
									class="won"><em>1,199,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>북해도 명물 마유 크림 1인당 1개 제공,오타루 오르골당 쿠폰 제공</dd>
									</dl>
								</a>
							</div>
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=APP1416">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/a1/a1daafde05720e04f32b98672f0a29c7.tn.410x280.JPG"
											alt="">
									</div> <span class="tit">[필리핀/푸켓]보라카이 신규 사보이리조트+세일링보트 5일</span> <span
									class="won"><em>409,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>해변오일마사지 → 전신마사지 업그레이드</dd>
									</dl>
								</a>
							</div>
						</li>
						<li class="panel sliderkit-panel">
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=KJP1138">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/31/3128c7576c3a571536abf94f74fa50fd.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[국내]제주도 서커스월드+아쿠아플라넷 2박3일(리젠트마린)</span> <span
									class="won"><em>295,000</em>원~</span>
									<dl>
										<dt>혜택</dt>
										<dd>선착순 스탠다드→슈페리어 객실 업그레이드</dd>
									</dl>
								</a>
							</div>
							<div class="list">
								<a href="/product/unitList.do?menu=pkg&amp;goodsCd=CHP1001">
									<div class="img">
										<img
											src="https://dimgcdn.ybtour.co.kr/TN/84/844e695b02b9ba5885c80c48e2b18ed4.tn.410x280.jpg"
											alt="">
									</div> <span class="tit">[홍콩/대만]홍콩+반나절자유 3일</span> <span class="won"><em>369,000</em>원~</span>
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
						<div class="ball sliderkit-nav-clip"
							style="width: 80px; height: 12px;">
							<ul style="width: 85px;">
								<li class="" style="width: 12px; height: 12px;"><a
									href="#main02" title="배너">링크</a></li>
								<li style="width: 12px; height: 12px;" class=""><a
									href="#main02" title="배너">링크</a></li>
								<li style="width: 12px; height: 12px;"
									class="sliderkit-selected"><a href="#main02" title="배너">링크</a>
								</li>
								<li style="width: 12px; height: 12px;" class=""><a
									href="#main02" title="배너">링크</a></li>
								<li style="width: 12px; height: 12px;" class=""><a
									href="#main02" title="배너">링크</a></li>
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

<div id="theme_blockMain">
	<h2 class="titMain">홈쇼핑 & 이벤트</h2>
	<div class="cont02 eve_block">

		<div class="banner banner01 sliderkit photoslider-bullets">

			<div class="slider sliderkit-panels">
				<div class="panel sliderkit-panel ">
					<a href="/promotion/Overseas/2017/0926_gs_PIC_GS/" target="_self">
						<img
						src="http://cimg.cdn.ybtour.co.kr/attachHome/HP/HM/201709/201709251659592711501011001016.jpg"
						alt="괌 PIC 골드 4/5일">
					</a>
				</div>
				<div class="panel sliderkit-panel ">
					<a href="/promotion/Overseas/2017/0920_eu_india_GS/" target="_self">
						<img
						src="http://cimg.cdn.ybtour.co.kr/attachHome/HP/HM/201709/201709191749503501410002001046.jpg"
						alt="북인도">
					</a>
				</div>
			</div>
			<div class="control sliderkit-nav">
				<div class="ball sliderkit-nav-clip"
					style="width: 29px; height: 12px;">

					<ul style="width: 34px;">
						<li class="" style="width: 12px; height: 12px;"><a
							href="#main02">링크</a></li>
						<li style="width: 12px; height: 12px;" class=""><a
							href="#main02">링크</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="banner banner02 sliderkit photoslider-bullets">
			<div class="slider sliderkit-panels">
				<div class="panel sliderkit-panel">
					<span class="pic"> <a
						href="/promotion/event/2017/0809_ev_ybmediheal/" target="_self">
							<img
							src="http://cimg.cdn.ybtour.co.kr/attachHome/EM/EB/201708/201708090919018991410003001014.jpg"
							alt="수분충전 설렘충전 충전책 in 보라카이&amp;세부">
					</a>
					</span> <span class="pic"> <a
						href="/promotion/event/2017/0714_ev_solgarhokkaido/"
						target="_self"> <img
							src="http://cimg.cdn.ybtour.co.kr/attachHome/EM/EB/201707/201707181121087621608003001071.jpg"
							alt="노랑풍선 X 솔가">
					</a>
					</span>
				</div>
				<div class="panel sliderkit-panel">
					<span class="pic"> <a
						href="/promotion/event/2017/0227_ev_lotteDF" target="_"> <img
							src="http://cimg.cdn.ybtour.co.kr/attachHome/EM/EB/201709/201709011639137591412002001024.jpg"
							alt="롯데면세점,롯데인터넷면세점">
					</a>
					</span> <span class="pic"> <a
						href="https://event.worldroaming.co.kr/ybtour" target="_new">
							<img
							src="http://cimg.cdn.ybtour.co.kr/attachHome/EM/EB/201709/201709131025220731102001001025.jpg"
							alt="포켓와이파이 1대로 최대 10명까지 4G  LTE 데이터로밍 무제한~">
					</a>
					</span>
				</div>
				<div class="panel sliderkit-panel">
					<span class="pic"> <a
						href="/promotion/event/2016/0125_ev_arex/" target="_self"> <img
							src="http://cimg.cdn.ybtour.co.kr/attachHome/EM/EB/201602/201602191534116281501011001022.jpg"
							alt="이미지">
					</a>
					</span>
				</div>
			</div>
			<div class="control sliderkit-nav">
				<div class="ball sliderkit-nav-clip"
					style="width: 46px; height: 12px;">
					<ul style="width: 51px;">
						<li class="sliderkit-selected" style="width: 12px; height: 12px;"><a
							href="#main02">링크</a></li>
						<li style="width: 12px; height: 12px;" class=""><a
							href="#main02">링크</a></li>
						<li style="width: 12px; height: 12px;" class=""><a
							href="#main02">링크</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="recTravel" class="theme_blockRecTravel">
	<script>
		$(document).ready(function() {
			$(".theme03.photoslider-bullets").sliderkit({
				auto : true,
				circular : true,
				mousewheel : false,
				shownavitems : 3,
				verticalslide : true,
				panelfx : "sliding",
				panelfxspeed : 1000,
				panelfxeasing : "easeOutExpo" // "easeOutExpo", "easeInOutExpo", etc.
			});
		});
	</script>
	<h2 class="titMain">테마 추천 쇼핑</h2>
	<div class="recommand01">
		<ul class="tab_type02">
			<li class="blue ck" role-v="B1"><a href="javascript:;">Blue
					Lavande</a></li>
			<li class="blue" role-v="A6"><a href="javascript:;">관광여행</a></li>
			<li class="blue" role-v="A3"><a href="javascript:;">휴양여행</a></li>
			<li class="blue" role-v="A2"><a href="javascript:;">효도여행</a></li>
			<li class="blue" role-v="S2"><a href="javascript:;">노팁/노옵션/노쇼핑
			</a></li>
			<li class="blue" role-v="A9"><a href="javascript:;">프리미엄</a></li>
		</ul>

		<div class="recslide tab01">
			<div class="rec_txt">블루 라방더 : 라벤더 꽃의 색상 (영어 Blue, 불어 Lavande의
				합성어). 프로방스의 지중해와 여름 산등성이의 연보라빛 색감에서 따온 노랑풍선의 차별화된 상품 이름입니다.</div>
			<ul class="theme01">
				<li><a
					href="/product/unitList.do?menu=pkg&amp;loc=294&amp;pid=340&amp;did=217&amp;goodsCd=JOP1041">
						<img
						src="https://dimgcdn.ybtour.co.kr/TN/4f/4fecfedc16dc27718da532dfbd8deed4.tn.410x280.jpg"
						alt="이미지설명">
				</a></li>
				<li><a
					href="/product/unitList.do?menu=pkg&amp;loc=294&amp;pid=340&amp;did=217&amp;goodsCd=JOP1041">
						<span class="tit"> <!--Blue Lavande -->
							[오사카의품격][프리미엄호텔+롯코산B...
					</span> <span class="subtit"> ▶효도관광안성맞춤 ,2박3일 전일관광,인솔자동행◀</span> <span
						class="line"></span> <span class="area">오사카</span> <span
						class="period">2박3일</span> <span class="price"
						style="margin: 0 !important">499,000
							<p>원 ~</p>
					</span>
				</a></li>
			</ul>
			<ul class="theme02">
				<li><a
					href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4413&amp;goodsCd=EWP4043">
						<img
						src="https://dimgcdn.ybtour.co.kr/TN/ec/ecc03c45bc6baac726c70ccbf03f8f30.tn.410x280.jpg"
						alt="이미지설명">
				</a></li>
				<li><a
					href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4413&amp;goodsCd=EWP4043">
						<span class="tit"> <!--Blue Lavande --> 안온한 무채색 노르망디_프랑스
							북부일...
					</span> <span class="subtit"> Blue Lavande (블루 라방더) : 라벤더 꽃의 색상 (영어
							Bl... </span> <span class="line"></span> <span class="area">서유럽</span> <span
						class="period">7박9일</span> <span class="price"
						style="margin: 0 !important">2,802,000
							<p>원 ~</p>
					</span>
				</a></li>
			</ul>
			<div class="theme03 sliderkit photoslider-bullets"
				style="display: block;">
				<div class="slider sliderkit-panels">
					<div class="sliderkit-panels-wrapper"
						style="position: relative; top: -540px;">
						<div class="panel sliderkit-panel" >
							<ul>
								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=453&amp;pid=6565&amp;did=6567&amp;goodsCd=CHP2028">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/54/54c48149f079c784bbe0c23a3f8ab434.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> [초특급 갤럭시호텔/4명出]
											베네시안/윈분수쇼+자유일정포함 마카...
									</span> <span class="line"></span> <span class="area">홍콩/마카오/심천</span>
										<span class="period">2박4일</span> <span class="price">669,000
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4413&amp;goodsCd=EWP4008">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/27/27b94c5b5fe9b68f09e972e164f1bb98.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 남프랑스에서 시작되는 햇빛
											온화한 푸른 지중해 여행_남프랑스+스...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">3,504,400
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4413&amp;goodsCd=EWP4001">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/66/66dc3e09421ab3d9c37f3db6e84d48c3.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 풀향 싱그런 영국의
											시골길_영국과 아일랜드,스코틀랜드_10일[맨...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">2,904,400
											<p>원 ~</p>
									</span>
								</a></li>

							</ul>
						</div>
						<div class="panel sliderkit-panel">
							<ul>
								<li><a
									href="/product/unitList.do?menu=dmt&amp;loc=715&amp;pid=4692&amp;did=4693&amp;goodsCd=KJP3050">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/e7/e75f755e7194a213a879502a0016403c.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> [Blooming
											Days]6성급해비치호텔+렌터카3일
									</span> <span class="line"></span> <span class="area">제주도</span> <span
										class="period">2박3일</span> <span class="price">405,000
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=453&amp;pid=4000&amp;did=4002&amp;goodsCd=CHP2011">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/ab/ab849f8acdec80612c758287bbed5192.tn.410x280.png"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> [마카오_쉐라톤호텔/6명
											出]마카오/베네시안/윈분수쇼+1일자유포...
									</span> <span class="line"></span> <span class="area">홍콩/마카오/심천</span>
										<span class="period">2박4일</span> <span class="price">649,000
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=4153&amp;did=4159&amp;goodsCd=EWP4007">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/66/66cf1fc001244b571f5085a0f6333ee5.tn.410x280.JPG"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 지중해 연보라빛 바람을
											만나는 프랑스일주10일_몽생미셸/레보드프...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">3,104,400
											<p>원 ~</p>
									</span>
								</a></li>

							</ul>
						</div>
						<div class="panel sliderkit-panel">
							<ul>
								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=453&amp;pid=6565&amp;did=6567&amp;goodsCd=CHP2029">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/71/7198c0447f18beb26913c7abcc85d988.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> [베네시안숙박/4명出]
											1일패키지+자유일정/베네시안+윈분수쇼포함...
									</span> <span class="line"></span> <span class="area">홍콩/마카오/심천</span>
										<span class="period">2박4일</span> <span class="price">679,000
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4203&amp;goodsCd=EWP4013">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/69/692730f3ede71fbad7d28aea80fa95fa.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 유럽 작은마을_10일
											[산마리노/리히텐슈타인] 내 마음 깊은 곳...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">3,004,400
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4203&amp;goodsCd=EWP4012">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/74/748e7b648f7fc9378793f86b2b79ce8d.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 유럽 작은마을_9일
											[리히텐슈타인/산마리노] 좀 더 천천히 여유...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">7박9일</span> <span class="price">2,804,400
											<p>원 ~</p>
									</span>
								</a></li>

							</ul>
						</div>
						<div class="panel sliderkit-panel">
							<ul>
								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4413&amp;goodsCd=EWP4011">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/11/1123d96ba6aa1039fef9bb2b35688644.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!-- Blue Lavande --> 유럽 작은마을_10일
											[안도라/산마리노/모나코] 푸른빛 지중해의...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">3,104,400
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4413&amp;goodsCd=EWP4010">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/f6/f62619bbd01ff75302c6cbbc651aa354.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 그림과 풍경이 만드는
											여행_샤모니 몽블랑/프라이부르크+몽트뢰_남...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">3,204,400
											<p>원 ~</p>
									</span>
								</a></li>

								<li><a
									href="/product/unitList.do?menu=pkg&amp;loc=90&amp;pid=3701&amp;did=4203&amp;goodsCd=EWP4046">
										<span class="pic"> <img
											src="https://dimgcdn.ybtour.co.kr/TN/a6/a6de77bed20bc9b6c9587310472aff1f.tn.410x280.jpg"
											alt="이미지설명">
									</span> <span class="tit"> <!--Blue Lavande --> 프랑스
											작은마을_10일_프로방스의 별_초록 빛 물길_남불 해안 ...
									</span> <span class="line"></span> <span class="area">서유럽</span> <span
										class="period">8박10일</span> <span class="price">3,204,400
											<p>원 ~</p>
									</span>
								</a></li>

							</ul>
						</div>
					</div>



					<div class="control sliderkit-nav">
						<div
							class="arrowup sliderkit-btn sliderkit-go-btn sliderkit-go-prev">
							<a href="#main03">이전보기</a>
						</div>
						<div
							class="arrowdown sliderkit-btn sliderkit-go-btn sliderkit-go-next">
							<a href="#main03">다음보기</a>
						</div>
					</div>
				</div>
				<!-- <div class="slider sliderkit-panels"> -->
			</div>
		</div>
	</div>
</div>
<div class="best_block">
	<h2 class="titMain">
		베스트 여행후기 <a href="#" class="time_more">더보기</a>
	</h2>
	<ul class="review_list">
		<li><a href="/customer/episodeView.do?travrvNo=20000005619">
				<img
				src="http://cimg.cdn.ybtour.co.kr/attachHome/MN/TR/201709/201709141525296081705004002025.jpg"
				alt=" ★호주,뉴질랜드여행이 아니면 알 수 없는 것들 ★">
				<h3 class="tit">★호주,뉴질랜드여행이 아니면 알 수 없는 것들 ★</h3>
				<p>지극히 평범한 삶에서 벗어나고 싶은 욕망과 일상 탈출을 꿈꾸던 그런 날이면 " 열심히 일한 당신 떠나라"하고
					부추기지 않아도 문득 어디론가 훌쩍 떠나고픈 욕망에 사로 잡힌다. 어찌 보면 한두번의 여행으론 치유가 되지 않을 열병
					같은 것인지도 모르지만 그럼에도 늘 만병통치약처럼 일상탈출을 꿈꾼다.</p>
		</a></li>

		<li><a href="/customer/episodeView.do?travrvNo=20000005675">
				<img
				src="http://cimg.cdn.ybtour.co.kr/attachHome/MN/TR/201709/201709141525297311705004002098.jpg"
				alt=" 추억이 깃든 나의 동유럽 여행 일기 ! [김대호 인솔자님 수고하셨어요♡-♡]  ">
				<h3 class="tit">추억이 깃든 나의 동유럽 여행 일기 ! [김대호 인솔자님 수고하셨어요♡-♡]</h3>
				<p>(크로아티아) 자그레브 - 플리트비체 – (슬로베니아) 블레드 – (오스트리아) 짤츠캄머굿 – 짤츠부르크 –
					(체코) 체스키크롬로프 – 프라하 – (오스트리아) 비엔나 – (헝가리) 부다페스트 발칸반도와 동유럽까지 5개국을
					다녀오는 여행을 다녀왔어요. 저는 오랜 시간 우정을 나눈 여고동창 친구와 처음으로 장거리 여행</p>
		</a></li>

	</ul>
</div>
<div class="notice_block_wrap">
	<div class="info_block">
		<!-- 공지사항 -->
		<div class="notice_block">
			<h2 class="titMain">
				공지사항 <a href="#" class="time_more">더보기</a>
			</h2>
			<ul class="notice_list">
				<li><a href="/customer/noticeView.do?noticeNo=20000002903">
						[국내선] 아시아나항공 출발임박 특가 안내</a> <span class="date">2017-09-29</span></li>
				<li><a href="/customer/noticeView.do?noticeNo=20000002902">
						[이스타항공] 10/6, 10/9 인천-홍콩 노선 운항시각 변경 안내</a> <span class="date">2017-09-29</span>
				</li>
				<li><a href="/customer/noticeView.do?noticeNo=20000002901">
						[홍콩익스프레스항공] 10월 2일 - 7일 운항 취소 안내</a> <span class="date">2017-09-28</span>
				</li>
			</ul>
		</div>
		<!-- //공지사항-->

		<!-- 자주하는 질문 -->
		<div class="faq_block">
			<h2 class="titMain">
				자주하는 질문 <a href="#" class="time_more">더보기</a>
			</h2>
			<ul class="faq_list">
				<li><a href="/customer/faqList.do?searchCateCd=TPD"><img
						src="images/tp-main/ico_faq1.png" alt=" "><br>여행상품</a></li>
				<li><a href="/customer/faqList.do?searchCateCd=PRS"><img
						src="images/tp-main/ico_faq2.png" alt=" "><br>상품예약</a></li>
				<li><a href="/customer/faqList.do?searchCateCd=PPT"><img
						src="images/tp-main/ico_faq3.png" alt=" "><br>상품결제</a></li>
				<li><a href="/customer/faqList.do?searchCateCd=ATK"><img
						src="images/tp-main/ico_faq4.png" alt=" "><br>해외항공</a></li>
				<li><a href="/customer/faqList.do?searchCateCd=TGC"><img
						src="images/tp-main/ico_faq5.png" alt=" "><br>여행상품권</a></li>
				<li><a href="/customer/faqList.do?searchCateCd=WEB"><img
						src="images/tp-main/ico_faq6.png" alt=" "><br>홈페이지</a></li>
			</ul>
		</div>
		<!-- //자주하는 질문 -->
	</div>
</div>
<div class="cont09">
	<span class="txt">본 화면의 모든 상품가격은 항공운임(항공권) 등이 포함된 총 금액이며, 유류할증료는
		유가와 환율에 따라 변동될 수 있습니다.</span>
</div>

