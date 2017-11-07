<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <div id="navi">
	            <ul>
	                <li><a href="/product/detail1.do">해외패키지</a></li>
	                <li><a href="/product/detail2.do">자유여행 </a></li>
	                <li><a href="/product/detail2.do">허니문 </a></li>
	                <li><a href="/product/detail2.do">골프 </a></li>
	                <li><a href="/product/detail2.do">부산/대구출발</a></li>
	                <li><a href="/product/detail2.do">해외항공</a></li>
	                <li><a href="/product/detail2.do">국내항공</a></li>
	                <li><a href="/product/detail2.do">국내여행</a></li>
	            </ul>
        </div>
    </div>
    
<div id="sidemenu" class="open sideMain">
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
		<li><a href="#"><img
				src="/images/customer/snb_nav2.gif" alt="출발확정"></a></li>
		<li><a href="#"><img
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
		<li><a href="#"><img
				src="/images/customer/snb_nav9.gif" alt="할인쿠폰"></a></li>
		<li><a href="http://company.ybtour.co.kr/agent/about.do"><img
				src="/images/customer/snb_nav10.gif" alt="대리점안내"></a></li>
		<li><a href="/customer/survey.do"><img
				src="/images/customer/snb_nav11.gif" alt="고객만족도 조사 "></a></li>
		<li><a href="#"><img
				src="/images/customer/snb_nav12.gif" alt="카카오톡"></a></li>
		<li><a href="#"><img
				src="/images/customer/snb_nav13.gif" alt="우수여행상품"></a></li>
	</ul>
	<a href="#" id="moveTopBtn"><img src="/images/productDetail/quick_top.png" alt="TOP버튼" style="margin-left: 45px; margin-top: 10px;"></a>
</div>    

</div>

	              