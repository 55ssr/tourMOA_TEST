<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.cookie.js"></script>
<script src="/fp/flowplayer.min.js"></script>
<script src="/js/ui.js"></script>
<script src="/js/jquery.sliderkit.1.9.2.pack.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	

	$("span.txt06-2>span>img").hover(function(){
		if(".tip[role='1']"){
			$(".role02").css({display:"none"});
			$(".tooltip").css({display:"block",left:"134px", top:"45px"});
			$(".role01").css({display:"block"});
		}
	});
	$("span.txt06-3>span>img").hover(function(){
		if(".tip[role='2']"){   
			$(".role01").css({display:"none"});
			$(".tooltip").css({display:"block", left:"230px", top:"45px" });
			$(".role02").css({display:"block"}); 
		}
	});
	$(".tip").mouseleave(function(){
		$(".tooltip").css({display:"none"});
	});
	//옵션사항 이미지 없을경우 
	$("#infoWrap .info05 .cont05 .type03 span.pic img").each(function(){
		if($(this).attr("src") == "" || $(this).attr("src") == undefined){
			$(this).parent().css("display","none");
		}else{
			$(this).parent().parent().find("span.choice").addClass("w180");
		}
	});
	
	$("#tabWrap > .tab > ul > li:eq(0)").trigger('click');

	
	$(".photosgallery-vertical").sliderkit({
        auto:true,
        autospeed:3000,
        circular:true,
        mousewheel:false,
        shownavitems: 3,
        verticalnav:true,
        navclipcenter:true,
        scrollspeed:1000
    });
	
	$("#realArea").change(function(){
	
		$(".clock, .weather").each(function(){
			$(this).css("display", "none");
		})
		var cityCd = $(this).val();
		$("#c"+cityCd).css("display", "block");
		$("#w"+cityCd).css("display", "block");
		
	});
});
</script>

<div id="wrap">
<!-- [[detailPackage_selectlocWrap start]]   --> 
<!-- <div id="detailPackage_selectlocWrap">
	<div id="detailPackage_selectloc">
			<label for="codeArea">선택된 지역 </label>
				<select name="product" id="codeArea">
					<option value="상품선택">상품선택</option>
					<option value="">서유럽</option>
					<option value="">체코/오스트리아/동유럽</option>
					<option value="">크로아티아/발칸/동유럽</option>
					<option value="">스페인/포르투갈/모로코</option>
					<option value="">터키/그리스/지중해</option>
					<option value="">러시아/북유럽/발틱</option>
				</select>
			<label for="codeAreaDetail">선택된 지역 </label>
				<select name="product" id="codeAreaDetail">
					<option value="상품선택">상품선택</option>
					<option value="">서유럽(8일 이하)</option>
					<option value="">서유럽(9일)</option>   
					<option value="">서유럽(10일)</option>
					<option value="">서유럽(11일 이상)</option>
				</select>
			<div id="menuopen">
				<input type="image" src="/images/RYUTEST/detailPackage_menuopen_font.png" alt="열기"/>
			</div>
	</div>
</div> -->
<!-- [[detailPackage_selectlocWrap End]]   -->
<div id="content">

	<!-- [[locMapOpen START]] : 펼치기 눌렀을 때 나오는 메뉴   -->
	<!-- <div id="locMapOpen">
		<div class="areaBox">
			<table>
				<caption>지역메뉴</caption>
					<tr>
						<th>
						<span>서유럽</span>
						</th>
							<td>
							<a href="#">서유럽(8일 이하)</a>
							<a href="#">서유럽(9일)</a>
							<a href="#">서유럽(10일)</a>
							<a href="#">서유럽(11일 이상)</a>
							<a href="#">한나라 일주</a>
							</td>
					</tr>
					
					<tr>
						<th>
						<span>체코/오스트리아/동유럽</span>
						</th>
							<td>
							<a href="/main/main.do">동유럽(9일 이하)</a>
							<a href="#">동유럽(10일 이상)</a>
							<a href="#">동유럽 + 서유럽</a>
							</td>
					</tr>
					
					<tr>
						<th>
						<span>크로아티아/발칸/동유럽</span>
						</th>
							<td>
							<a href="#">크로아티아/발칼일주</a>
							<a href="#">크로아티아/발칸/동유럽</a>
							</td>
					</tr>
					
					<tr>
						<th>
						<span>스페인/포르투갈/모로코</span>
						</th>
							<td>
							<a href="#">스페인/포르투갈(9일 이하)</a>
							<a href="#">스페인/포르투갈(10일 이상)</a>
							</td>
					</tr>
			</table>
			
			<div class="areaNotice">
				<div class="fastBox">
					<ul>
						<li class="areaNoticeTitle"><span>이달의 문의 증가 상품</span></li>
						<li class="areaNoticeText"> - 
						<a href="#">단기 (6~9일)</a>
						</li>
						<li class="areaNoticeText"> - 
						<a href="#">장기 (10~15일)</a>
						</li>
					</ul>
				</div>
				<div class="fastBox">
					<ul>
						<li class="areaNoticeTitle"><span>여성 고객이 찾는 상품</span></li>
						<li class="areaNoticeText"> - 
						<a href="#">단기 (6~9일)</a>
						</li>
						<li class="areaNoticeText"> - 
						<a href="#">장기 (10~15일)</a>
						</li>
					</ul>
				</div>
				<div class="fastBox">
					<ul>
						<li class="areaNoticeTitle"><span>유럽 스토리 텔링</span></li>
						<li class="areaNoticeText"> - 
						<a href="#">스토리텔링 보기</a>
						</li>
					</ul>
				</div>
			</div> 
			<div class="localBg01"></div>
			<div class="localBg02"></div>
			<div class="localBg03"></div>
			<button type="button" class="menuclose" title="지역메뉴 닫기"></button>
		</div>
	</div> -->
	<!-- [[locMapOpen END]] : 펼치기 눌렀을 때 나오는 메뉴  -->
	
	<!-- [[headline Start]] title과 상품번호 들어감 -->
	<div id="headline">
		<div class="headBox">
			<div class="pNum">
				[상품번호 <span class="num">EWP1038-171001QR00</span>]
			</div>
			<div class="title">
				[황금연휴_특별일정] 옥스퍼드+지베르니+오베르쉬르와즈_영국+프랑스 2개국 7일
			</div>
			
		</div>
	</div>
	<!-- [[headline Start]] title과 상품번호 들어감 -->
	
	<!-- [[상품 기본 정보 틀 Start]] 상품 상세정보 들어감 -->
	
	<div id="detailWrap">
		<div id="infoWrap">
			<!-- [[상품 기본 정보 Start]] -->
			<div id="basicInfo">
				<span class="subTitle">카타르 항공으로 ! 옥스퍼트 관광 포함, 오베르쉬르와즈, 지베르니 관광</span>
				<span class="sns"><a href="#"></a>
					<span><a href="#coreInfo" onclick="fnSelectCoreInfo(); return false;">여행상품 핵심정보</a></span>
				</span>
				
				<span class="score">
					<span class="tit">평점</span>
					<span class="txt" id="rCnt">0.0점(5점)</span>
					<span class="tit">상품평</span>
					<span class="txt under">
						<a href="#reviewWrap" id="rAvg">0건</a>
					</span>
				</span>
				
				<div class="basicL">
					<ul class="basicL01">
						<li class="lineBlack h36"></li>
							<li>
								<span class="tit">출발일</span>
								<span class="txt txt01">한국 출발 2017년 10월 01일(일) 01:25 - QR863</span>
								<span class="txt txt02">현지 도착 2017년 10월 01일(일) 12:00 </span>
							</li>
							<li>
								<span class="tit">도착일</span>
								<span class="txt txt01">현지 출발 2017년 10월 06일(금) 22:25 - QR863</span>
								<span class="txt txt02">현지 도착 2017년 10월 07일(토) 23:05 </span>
							</li>
							<li>
								<span class="tit">이용항공</span>
								<span class="txt txt03">
									<img alt="대한항공" src="/images/productDetail/KE.png">대한항공
								</span>
							</li>
							<li>
								<span class="tit">예약</span>
								<span class="txt txt04">
									<span>예약</span>
									<span class="fontOrange">24명</span>
									<span class="gray_bar">|</span>
									<span>남은좌석</span>
									<span class="fontOrange">7석</span>
									<span>( 최소 출발 </span>
									<span class="fontOrange">20명</span>
									<span>)</span>
								</span>
							</li>
							
							<li class="lineBlack dvide">  
								<span class="tit noLine">방문도시</span>
								<span class="txt txt05">인천-도하-런던(2)-파리(2)-오베르쉬르우아즈-지베르니-파리(1)-도하-인천</span>
							</li>
					</ul>
					
					<ul class="basicL02">
                        <li class="lineGray lineBlackTop liBg">
	                        <span class="tit tit06">이용자구분</span>
	                        <span class="txt txt06 txt06-1">성인<span>만12세이상</span></span>
	                        <span class="txt txt06 txt06-2 tip" role="1">아동<span>만12세미만<img src="/images/productDetail/icon_question.png" alt="안내" /></span></span>
	                        <span class="txt txt06 txt06-3 tip" role="2">유아<span>만2세미만<img src="/images/productDetail/icon_question.png" alt="안내" /></span></span>
	                        <span class="tooltip" style="display: none;">
	                            <span class="period role01" style="display: none;">2005.10.02 ~ 2015.10.01</span>
	                            <span class="period role02" style="display: none;">2015.10.02 ~ 2017.10.01</span>
	                        </span>
	                        
	                    </li>
	                    <li>
	                        <span class="tit">기본상품가</span>
	                        <span class="txt txt07">4,202,000<p class="won">원</p></span>
	                        <span class="txt txt07">4,202,000<p class="won">원</p></span>
			                        <span class="txt txt07">500,000<p class="won">원</p></span>	                        	
	                        	</li>
	                    <li>
	                        <span class="tit">유류할증료</span>
	                        <span class="txt txt08">388,000<p class="won">원</p></span>
	                        <span class="txt txt08">388,000<p class="won">원</p></span>
			                        <span class="txt txt08">388,000<p class="won">원</p></span>
	                        	</li>
	                   	<li class="lineBlack">
	                        <span class="tit">총상품가격</span>
	                        <span class="txt txt09 price">4,590,000<p>원</p></span>
	                     	<span class="txt txt09 price">4,590,000<p>원</p></span>
									<span class="txt txt09 price">888,000<p>원</p></span>
								</li>
	                    <li class="lineNone">
	                        <span class="noti">유류할증료는 유가와 환율에 따라 변동될 수 있습니다.</span>
							<span class="noti">아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</span>
	                    </li>
                    </ul>
				</div>
				
				<ul class="basicR">
					<li class="lineBlack h37 pd0">
					<span class="ico ico01" onclick="fnSendEmail(); return false;">
						<a href="none">링크</a>
						이메일보내기
					</span>
					<span class="ico ico02" onclick="fnCopyToClipboard(); return false;">
						<a href="none">링크</a>
						URL 복사하기
					</span>
					<span class="ico ico03">
						<a href="none">링크</a>
						관심상품담기
					</span>
					<span class="ico ico04">
						<a href="none" onclick="fnAllPrint('상품번호넣기','N')">링크</a>
						인쇄하기
					</span>
					</li>
					
					<li class="lineBlack pd0">
						<div class="damdangWrap">
							<div class="photo">
								<img alt="담당자이름" src="/images/productDetail/youngyou.png">
							</div>
							<div class="title">
								<span>담당자</span>
								<span>팀 대표번호</span>
								<span>이메일</span>
							</div>
							
							<div class="contact">
								<span>공유</span>
								<span>010-2151-1465</span>
								<span>ZeroU@tourmoa.co.kr</span>
							</div>
						</div>
					</li>
					
					<li class="lineNone">
						<span class="airTit airTit00"></span>
						<span class="airTit airTit01">
							<span class="typeAir">이용항공</span>
						</span>
						<span class="airTit airTit02">
							출발시간
						</span>
						<span class="airTit airTit03">
							상품가격
						</span>
						<span class="airTit airTit04">
							마감여부
						</span>
					</li>
					
					<li class="lineGray pd0">
					
					<span class="airWrap">
						<span class="air chk">
							<input type="radio" name="air" id="aircord1" onclick="goEvent('상품코드번호')" checked="checked"/>
						</span>
						<span class="air air01 typeAir"><label for="aircord1" onclick="goEvent('NCP5208-170922OZ00')">아시아나항공</label></span>
                           <span class="air air02">18:40 -</span>
                           <span class="air air03 price1">2,790,000<p>원</p></span>
                           <span class="air air04">
	                            <!-- class: mint , blue , yellow , pink , gold , green , red , purple -->
	                            
	                            <span class="mark">
	                            			<span class="pie orange1">예약가능</span>
	                            </span>
		                    </span>		                        
	                </span>
					</li>
					
					 <li class="lineNone pdt30">
                        <button type="button" name="btnSchedule" role-w="1160" role-h="800" role-url="/product/unitListPop.do?menu=pkg&did=7423&goodsCd=NCP5208" class="btnStartdate" title="다른출발일보기">다른출발일보기</button>
						<button type="button" name="btnReserve" class="btnReserve" title="예약하기">예약하기</button>
                     </li>
				</ul>
				<!-- [[상품 상세정보 Start]] 상품의 상세정보 include 된듯 -->
				
			</div>
			<!-- [[상품 기본정보 End]] -->
				<div id="dtInfo">
					<!--[[ 슬라이드 slideWrap Start ]]-->
					<div id="slideWrap">
						<div class="sliderkit photosgallery-vertical" style="display: block;">
							<div class="sliderkit-nav">
								<div class="sliderkit-nav-clip" style="width: 190px; height: 360px; top: 25px; margin: 0px;">
								<ul>
									<li style="width: 190px; height: 120px;" class="sliderkit-selected">
									<a href="#" rel="nofollow">
										<img src="/images/productDetail/detail_package_slider.jpg" alt="이미지 설명">
									</a>
									</li>
									<li style="width: 190px; height: 120px;" class="">
									<a href="#" rel="nofollow">
										<img src="/images/productDetail/spain_detailPackage_slider.png" alt="이미지 설명">
									</a>
									</li>
									<li style="width: 190px; height: 120px;" class="">
									<a href="#" rel="nofollow">
										<img src="/images/productDetail/spain_detailPackage_slider2.png" alt="이미지 설명">
									</a>
									</li>
									<li style="width: 190px; height: 120px;" class="">
									<a href="#" rel="nofollow">
										<img src="/images/productDetail/spain_detailPackage_slider3.png" alt="이미지 설명">
									</a>
									</li>
								</ul>
								</div>
								<div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-prev">
									<a rel="nofollow" href="#" onclick="return false;" title="Previous line">
										<span>Previous</span>
									</a>
								</div>
								<div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-next">
									<a rel="nofollow" href="#" onclick="return false;" title="Next line">
										<span>Next</span>
									</a>
								</div>
							</div>
							
							<div class="sliderkit-panels">
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/productDetail/detail_package_slider.jpg" alt="이미지 설명">
								</div>
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/productDetail/spain_detailPackage_slider.png" alt="이미지 설명">
								</div>
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/productDetail/spain_detailPackage_slider2.png" alt="이미지 설명">
								</div>
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/productDetail/spain_detailPackage_slider3.png" alt="이미지 설명">
								</div>
							
							</div>
							
						</div>
					</div>
					<!--[[ 슬라이드 slideWrap End ]]-->
					
					<!-- [[예약 프로세스 info01_free Start]] -->
					<div class="info01">
						<span class="titlebar">
							<span class="title">예약 Process</span>
							<span class="titlebg"></span>
						</span>
						<div class="cont01">
							<img alt="예약 Process" src="/images/productDetail/detailPackage_res_process.png">
						</div>
					</div>
					<!-- [[예약 프로세스 info01_free End]] -->
					
					<!--[[ 상품안내 info01 Start ]]-->
					<div class="info01">
						<span class="titlebar">
						
							<span class="title">상품안내</span>
							<span class="titlebg"></span>
						</span>
						<div class="cont01">
						<p>&nbsp;</p>
						<p>
							<img alt="예약 Process" src="/images/productDetail/detail_package_product_1.png">
						</p>
						<p>&nbsp;</p>
						<p>
							<img alt="예약 Process" src="/images/productDetail/detail_package_product_2.png">
						</p>
						<p>
							<img alt="예약 Process" src="/images/productDetail/detail_package_product_3.png">
						</p>
						</div>
					</div>
					<!--[[ 상품안내 info01 End ]]-->
		
	<!-- [[상품 기본정보 틀 End]] -->
	
	
	<!-- [[포함사항 정보 시작]] -->
					<div class="info03">
						<span class="titlebar">
							<span class="title">포함사항</span>
							<span class="titlebg"></span>
						</span>
						<div class="cont03">
							<span class="type02 border">
								<p><span style="color:rgb(0, 0, 0)">
											▣ 항&nbsp; 공 ▣<br>
										OZ항공 (아시아나 항공)
								</span></p>
								
								<p>&nbsp;</p>
								
								<p><span style="color:rgb(0, 0, 0)"><strong>■&nbsp;출발일에 따라 추가요금이 발생할수도있습니다. 담당자와 상의부탁드립니다■</strong></span></p>
								
								<p><br>
								<span style="color:rgb(0, 0, 0)"><strong>◆ 상품 유의 사항 ◆<br>
								1. 본 상품은 조기 예약자에 한해서 실시간 특가항공 좌석이 있을경우에 동일한 금액으로 진행가능한 상품입니다.</strong><br>
								2. 저렴한 항공권이 없을 경우 항공 요금이 추가 될 수 있습니다.<br>
								3. 항공권 발권이 다소 빠른 상품으로 예약후 3일이내 항공권 발권 진행 됩니다.<br>
								4. 현지합류 상품으로 가이드와 버스는 구간별로 변경될 수 있습니다.</span></p>
								
								<p><span style="color:rgb(0, 0, 0)">&nbsp;&nbsp; (인원이 적을경우 드라이빙 가이드로 진행될수있으며, 인원이 많은경우 버스에 여유좌석이 없을수 있습니다)<br>
								5. 본 상품은 인솔자가 동행하지 않습니다.</span></p>
								
								<p>&nbsp;</p>
								
								<p>&nbsp;</p>
								
								<p><strong><span style="color:rgb(0, 0, 0)">▣ 미국 국내선 이용시 불포함사항 ▣</span></strong></p>
								
								<p><strong><span style="color:rgb(0, 0, 0)">- 미국 국내구간 기내식은 유료입니다.<br>
								- 미국 국내구간 보딩시 수화물유료 (짐1개 $25, 짐2개 $60 추가 됩니다.)</span></strong></p>
								
								<p><br>
								<span style="color:rgb(0, 0, 0)">▣ 숙&nbsp; 박 ▣<br>
								전일정 깔끔한 1급호텔<br>
								본 여행 상품의 숙발시설은 현재 미정입니다. 출발 2일 전까지 유선상으로 연락드리겠습니다.(예상호텔 일정표에 표기)<br>
								- 현재 나와있는 일정표와 식사, 호텔은 예정서 입니다.<br>
								현지사정에 의해 호텔, 식사 변경될 수 있으며 관광지 휴관일일경우 다른 관광지로 대체될 수 있습니다.<br>
								예정일정표와 확정서 내용이 다르더라도 별도의 금액이 환불되지 않습니다. 이점 유념해 주시기 바랍니다.<br>
								- 본 상품은 2인1실 기준 상품입니다.<br>
								- 소아요금은 성인2명과 객실을 1개 공유하여 사용하실 때 기준요금 입니다.<br>
								- 성인1명 소아1명이 객실 1개 사용하실 때 소아요금은 성인요금의 90%로 적용됩니다.</span></p>
								
								<p>&nbsp;</p>
								
								<p><span style="color:rgb(0, 0, 0)">▣&nbsp;기 타&nbsp;사 항 ▣<br>
								- 왕복항공료, 항공TAX, 공항세,</span></p>
								
								<p><span style="color:rgb(0, 0, 0)">- 유류할증료</span></p>
								
								<p><span style="color:rgb(0, 0, 0)">*유류할증료는 국제선 유가 인상에 따라 기간별로 달라 질 수 있으며 갑작스런 변동으로 인하여 추가지불이나 인하 될 수 있음을 사전 고지합니다.<br>
								- 관광진흥기금<br>
								- 전일정 차량 및 식사, 호텔<br>
								- 전 일정 관광지 입장료<br>
								- 여행자 보험<br>
								▷ 보험 종류 : 실손 보험<br>
								의료비를 실손 보상하는 보험에 다수 가입되어 각 보험계약에서 보장하는 금액의 합계가 지급보험금 (의료비)을 초과하였을 경우&nbsp;&nbsp;&nbsp; 보험금은 계약별로 비례분담하여 지급되며, 중복 지급불가합니다.<br>
								▷ 보험 가입 대상자 (만79세6개월 이상부터는 보험 가입 불가-출발일 기준)<br>
								- 5천만원 : 만15세 미만<br>
								- 1억원 : 만15세 이상~만69세6개월 미만<br>
								- 5천만원 : 만69세6개월 이상~만 79세 6개월 미만<br>
								★79세6개월 이상, 외국인, 시민권자, 영주권자, 유학생인 경우 개별적으로 보험을 가입하셔야 합니다. (당사 가입 불가)<br>
								여행자 보험은 질병으로 인한 사망은 해당사항 없으며, 고객 부주의로 인한 분실, 방치는 조건에서 예외, 또한 통화, 유가증권, 신용카드, 여권, 항공권 등 일부 품목은 보험 적용 제외 됩니다. 기타 휴대품 도난시에는 현지 경찰서의 확인서를받아오셔야 합니다.</span></p>
								
								<p>&nbsp;</p>
								
								<p><a href="http://flyasiana.com/CW/ko/common/pageContent.do?pageId=PC_0413" target="_blank"><img alt="" height="80" src="http://cimg.cdn.ybtour.co.kr/attachHome/img/webImg/2016/2/22/201602221047355430.jpg" width="210"></a>&nbsp;&nbsp;<a href="http://flyasiana.com/CW/ko/common/pageContent.do?pageId=PC_0173" target="_blank"><img alt="" height="80" src="http://cimg.cdn.ybtour.co.kr/attachHome/img/webImg/2016/2/22/201602221047467610.jpg" width="210"></a>&nbsp;<br>
								<a href="http://kr-keepexploring.canada.travel/"><img alt="" height="80" src="http://cimg.cdn.ybtour.co.kr/attachHome/img/webImg/2017/2/13/201702131521311180.png" width="209"></a>&nbsp;<strong>&nbsp;</strong><a href="http://flyasiana.com/CW/ko/common/pageContent.do?pageId=PC_0146" target="_blank"><img alt="" height="80" src="http://cimg.cdn.ybtour.co.kr/attachHome/img/webImg/2016/2/22/201602221047567520.jpg" width="210"></a></p>
								
								<p>&nbsp;</p>
							</span>
						</div>
					</div>
					
					<div class="info04">
					<!--[[ 불포함사항 info04 Start ]]-->
						<span class="titlebar"><span class="title">불포함사항</span><span class="titlebg"></span></span>
						<div class="cont04">
							<span class="type02 border">
								<p><span style="color:rgb(0, 0, 0)">▣ 현지 지불 ▣<br>
									- 가이드/기사 경비$140을 현지에서 지불해야합니다.(성인,아동 동일합니다.)<br>
									- 매너팁 : 호텔팁, 포터팁 (매너팁은 소비자의 자율적 선택사항으로 지불여부에 따른 불이익은 없습니다.)<br>
									&nbsp;<br>
									★ 팁(TIP) 문화 이해하기<br>
									한국에서는 다소 생소하지만 아프리카 유럽 북미등 타 나라에서는<br>
									관습화,생활화 되어있는 팁문화는 여행중 꼭 기억해야할 문화 입니다.<br>
									여행하는 나라의 문화를 존중하여 보다<br>
									세련된 여행이 될 수 있도록 하여야 할 것입니다</span></p>
									
								<p>&nbsp;</p>
					
								<p><span style="color:rgb(0, 0, 0)">▣ 독실 사용료 ▣<br>
								싱글룸 이용 (2인1실이 기준이기 때문에 독실 사용하시게 될 경우 부과됩니다.)<br>
								<strong>SINGLE CHARGE&nbsp; : 유선상으로 담당자에게 문의해주세요</strong><br>
								※ 3인 1실 가능합니다. (성인3명 또는 성인2+소아1명 또는 성인1+소아2명(이 경우는 첫번째소아 90% 두번째소아 80%)</span></p>
								
								<p><br>
								<span style="color:rgb(0, 0, 0)">&nbsp;<br>
								▣ 무비자 승인 ▣<br>
								미국 비자를 소지하지 않고, 전자여권으로 무비자 입국 승인을 받아야하는 경우<br>
								입국 승인 홈페이지에서 징수하는 입국 허가 승인 비용 $14</span></p>
								
								<p><span style="color:rgb(0, 0, 0)">반드시 전자여권을 소지 하셔야만 ESTA 신청이 가능하오니, 전자여권이 아니신 분들은 전자여권으로 교체 후 신청이 가능합니다.<br>
								ESTA 신청하러 가기.</span></p>
								
								<p>&nbsp;</p>
								
								<p><span style="color:rgb(0, 0, 0)">반드시 전자여권을 소지 하셔야만 ESTA 신청이 가능하오니, 전자여권이 아니신 분들은 전자여권으로 교체 후 신청이 가능합니다.</span></p>
								
								<p><span style="color:rgb(0, 0, 0)"><strong>2011년 3윌 이후 이란과 이라크&nbsp; * 수단 * 시리아를 여행 목적으로 방문한 한국인은 미국 입국시 별도의 비자를 발급받아야 합니다 .<br>
								(ESTA 전자 승인 비자로는 입국 불가 합니다)</strong>
								</span></p>
							</span>
						</div>
						</div>
						
						<div class="info06"><!--[[ 참고/전달사항 info06 Start ]]-->
								<span class="titlebar"><span class="title">참고/전달사항</span><span class="titlebg"></span></span>
								<div class="cont06">
									<!--StartFragment-->
									<p><strong><span style="color:rgb(0, 0, 0)">★ 출발일에 따라 추가요금이 발생할수도있습니다. 담당자와 상의부탁드립니다★</span></strong></p>
									
									<p><br>
									<span style="color:rgb(0, 0, 0)">◆ 상품 유의 사항 ◆<br>
									1. 본 상품은 조기 예약자에 한해서 실시간 특가항공 좌석이 있을경우에 동일한 금액으로 진행가능한 상품입니다.<br>
									2. 저렴한 항공권이 없을 경우 항공 요금이 추가 될 수 있습니다.<br>
									3. 항공권 발권이 다소 빠른 상품으로 예약후 3일이내 항공권 발권 진행 됩니다.<br>
									4. 현지합류 상품으로 가이드와 버스는 구간별로 변경될 수 있습니다.</span></p>
									
									<p><span style="color:rgb(0, 0, 0)">&nbsp;&nbsp; (인원이 적을경우 드라이빙 가이드로 진행될수있으며, 인원이 많은경우 버스에 여유좌석이 없을수 있습니다)<br>
									5. 본 상품은 인솔자가 동행하지 않습니다.</span></p>
									
									<p>&nbsp;</p>
									
									<p><span style="color:rgb(0, 0, 0)">★취소료 규정【제 5조 특약 적용】★</span></p>
									
									<p><span style="color:rgb(0, 0, 0)">▣ 항공사 자체 규정으로 예약 후 3일 안에 발권을 진행 합니다.<br>
									발권시 항공사에 이미 항공료를 지불한 상황으로 취소시 항공패널티는 환불이 불가합니다. (국제선300,000원, 국내선전액환불불가)<br>
									다만, 고객은 여행일정 종료 후 항공관련 취소수수료 부과내역(여행사 인건비 포함)에 대한 증빙을 여행사에 요청할 수 있으며, 여행사는 관련 증빙을 제시하고 취소수수료 규정과 차액이 있는 경우 이를 환급할 수 있습니다.</span></p>
									
									<p>&nbsp;</p>
									
									<p>&nbsp;</p>
									
									<p><span style="color:rgb(0, 0, 0)"><strong>▣ 미국 국내선 이용시 불포함사항 ▣</strong></span></p>
									
									<p><span style="color:rgb(0, 0, 0)"><strong>- 미국 국내구간 기내식은 유료입니다.<br>
									- 미국 국내구간 보딩시 수화물유료 (짐1개 $25, 짐2개 $60 추가 됩니다.)</strong></span></p>
								</div>
						</div>
						<div id="tabWrap"><!--[[ 탭 tabWrap Start ]]-->
						<div class="tab">
							<ul>
								<li class="t01 on"><a href="#submain02">일정표</a></li>
								<li class="t03"><a href="#submain02">관광지 정보</a></li>
								<li class="t04"><a href="#submain02">선택관광 정보</a></li>
								<li class="t07"><a href="#submain02">쇼핑 정보</a></li>
								</ul>
						</div>
						</div>
						<div id="schedule" class="tabview tab01" style="display: block;"><!--[[ 일정표 schedule Start ]]-->
						<div class="infomation_txt">
								여행 일정은 계약 체결 시 예상하지 못한 부득이한 사정 등이 발생하는 경우 <br>여행자의 사전 동의를 거쳐 변경될 수 있음을 양지하여 주시기 바랍니다.								
							</div>
						<div id="dateWrap"><!--[[ 일정차수 dateWrap Start ]]-->
							
							<div class="dateSlider">
							
								<button type="button" class="prev off" title="이전">&lt;</button>
								
								<div class="slideWrap">
									<div class="slide">
										
										<span class="on" onclick="moveSchedule('#dayTitle1'); return false;">
												1일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle2'); return false;">
												2일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle3'); return false;">
												3일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle4'); return false;">
												4일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle5'); return false;">
												5일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle6'); return false;">
												6일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle7'); return false;">
												7일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle8'); return false;">
												8일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle9'); return false;">
												9일
											</span>
										<span class="" onclick="moveSchedule('#dayTitle10'); return false;">
												10일
											</span>
										</div>
								</div>
								<button type="button" class="next on" title="다음">&gt;</button>
							</div>
							
						</div><!--[[ 일정차수 dateWrap End ]]-->
					
						<div class="scheduleNoti">
							<button type="button" class="print_new" onclick="fnAllPrint('NCP5208-170922OZ00','Y')"><img src="/images/detail/schedule_print.png" alt=" ">인쇄하기</button>
							<button type="button" class="safe" onclick="fnSafetyNotice()">안전한 여행을 위한 주의사항보기</button>
							 </div>
						
						<div id="daily"><!--[[ 일정상세 daily Start ]]-->

							<!-- 일정start -->	
								<div class="dayTitle" id="dayTitle1">
										<span class="day">1일차</span>
										<span class="dayTxt"><p>2017년09월22일 금요일 - 인천/시애틀/밴쿠버</p></span>                        
										<select name="product" id="daySchedule1" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle1'); return false;">
											<option value="#dayTitle1" selected="">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">인천</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="time">18:30</span>
												<span class="timeTxt">인천출발</span>			                        
												<span class="timeTxtSub">[ 18:30 OZ272 ] 인천 국제공항 출발 (약 9시간 40분 소요)</span>
												<!-- 출발미팅정보 Start-->
													<div class="infoTxt infoType01">		
														<span class="pic"><img src="http://cimg.cdn.ybtour.co.kr/attachHome/GB/GO/201512/201512151325222171301004001008.jpg" alt="미팅장소"></span>
														<!-- 미팅정보 -->
														<span class="dot">
															미팅장소 : 인천 국제공항 3층 M카운터 </span>
														<span class="dot">미팅 담당연락처 : 010-4393-2003</span>   
														<span class="dot">안내:인천 국제공항 3층 M카운터 <br>
아시아나 항공 19,20번 맞은편 테이블 </span>						
														<!-- 항공출발 정보 -->
														<span class="tit">
															<span>인천출발 -18:40분</span>
															<p>|</p>
															<span>항공편 OZ272</span>
															<p>|</p>
															<span>비행시간:   소요</span>
														</span>
													</div>
													<!-- 출발미팅정보 end-->
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">시애틀</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="time">11:10</span>
												<span class="timeTxt">시애틀 도착</span>			                        
												<span class="timeTxtSub">시애틀 도착하여 가이드 미팅<br>
(미팅장소 : 시애틀공항 1번 베기지클레임)</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">시애틀</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Seattle</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','USSEA');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/e0/e01b392e9854eca9942432b0c22d1aaf.tn.410x280.jpg" alt="시애틀" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/92/920f17500248a092008e0f3a550ccee3.tn.410x280.jpg" alt="시애틀" style="height: 140px;"></span>
																<span class=" txtBox">							
																워싱턴주의 서부, 태평양과 접해 있는 항구도시 시애틀은 워싱턴주에서 가장 큰 도시이자 서북부에서 가장 아름다운 도시로 손꼽히는 곳이다. 남과 북쪽으로 퓌젯트 사운드, 동쪽으로는 위싱턴 호가 자리하고 있는 시애틀은 물의 도시라고도 불리운다. 따뜻하고 볕좋은 여름과 온화한 겨울 날씨가 미국인들에게 인기있는 관광지이다. 시애틀은 시내에도 스페이스 니들과 시애틀 센터, 파이크 플레이스 마켓, 지하에 남아있는 옛도시의 잔재인 언더그라운드 등과 같은 풍부한 볼거리가 가득하고 시내에서 벗어나면 레이니어산 국립공원, 올림픽 국립공원, 노스 케스케이즈 국립공원의 미국을 대표하는 3개의 국립공원이 있어 많은 사람들이 찾아온다</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">시애틀 관광</span>			                        
												<span class="timeTxtSub">시애틀 최고명소인 <span style="color:rgb(0, 0, 0)"><strong>파이크플레이스마켓(스타벅스 1호점, 수산시장)</strong></span> 관광</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">파이크 플레이스 마켓</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Pike Place Market</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1001366');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic">
																		<img src="https://dimgcdn.ybtour.co.kr/TN/4e/4ef48809ad584d8501a31c664cf328ca.tn.410x280.jpg" alt="파이크 플레이스 마켓" style="height: 140px;">
																		</span>
																<span class=" txtBox">							
																시애틀에서 가장 에너지가 넘치는 곳을 찾는다면 파이크 플레이스 마켓이 최적의 장소입니다! 1907년에 생긴 오래된 시장으로 신선한 야채와 어패류 등이 풍부하고 각종 민예품, 장신구 등을 직접 만들어 판매하는 직판장입니다. 어느 곳에서나 흔히 볼 수 있는 시장의 모습은 낯선 이국의 땅에서 친근함을 느끼게 해주기에 충분해 시애틀을 관광하는 관광객들은 반드시 들러 보는 곳 중의 하나입니다. 시장 곳곳에는 상점리스트와 지도 등이 수록된 무료정보지가 있어 편리하게 이용할 수 있습니다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">스타벅스 1호점</span>
																	<span class="hgName mrl5">:</span><span class="ctName">The first Starbucks</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1001360');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic">
																		<img src="https://dimgcdn.ybtour.co.kr/TN/3c/3c91bdd215c69a3b1fe86b984eb8a69f.tn.410x280.jpg" alt="스타벅스 1호점" style="height: 140px;">
																		</span>
																<span class=" txtBox">							
																전 세계 수많은 스타벅스 들의 원조 1호점 시애틀 스타벅스 1호점 입니다!  차별화를 경험하실 수 있으며 언제나 자바 애호가들이 넘침니다! 이 곳에 오시면, 기존 스타벅스 로고와는 전혀 다른, 1호점만의 로고를 보실 수 있습니다. 바리스타 4명이 한꺼번에 주문을 받을 정도로 높은 명성만큼 굉장히 인기가 좋습니다! 특히, 3~4시사이에 한꺼번에 관광객들이 몰릴 때가 많으므로 이점을 유의하여 가는 것이 좋습니다. </span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">밴쿠버</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">밴쿠버로 이동</span>			                        
												<span class="timeTxtSub">I-5 고속도로를 따라 캐나다 국경을 통과하여<br>
밴쿠버 도착<br>
석식 후 호텔투숙 및 휴식</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayTxt stayAccomInfo" onclick="javascript:fnScheAccom('A0006650');" value="A0006650" style="cursor: pointer; text-decoration: underline; color: rgb(0, 182, 173);">
														컴포트 인 에어포트</span>						                        
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>한식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle2">
										<span class="day">2일차</span>
										<span class="dayTxt"><p>2017년09월23일 토요일 - 밴쿠버/골든</p></span>                        
										<select name="product" id="daySchedule2" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle2'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2" selected="">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">밴쿠버</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>조식후 가이드 미팅(합류행사)</p>

<p><br>
1번 하이웨이를 따라 <strong>프레이져 밸리의 넓은 초원지대</strong>를 지나<br>
신부의 면사포 모양을 닮은 <strong>브라이덜 폭포</strong> 및 호프를 경유</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">밴쿠버</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Vancouver</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','CAYVR');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/15/150b216577fd3635c09d6b5b7a3b6acf.tn.410x280.png" alt="밴쿠버" style="height: 140px;"><span class="txtC">브라이덜폭포</span></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/5d/5de9ef3d7d619080843bd6ffa214c5f5.tn.410x280.png" alt="밴쿠버" style="height: 140px;"><span class="txtC">브라이덜폭포</span></span>
																</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">골든</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>인삼과 목재의 도시 <strong>캠룹스</strong></p>

<p><br>
슈슈왑 호스를 따라 시카무스와 연어의 도시 <strong>샐몬암</strong>을 경유</p>

<p><br>
캐나다 횡단 철도의 종착지인 <strong>라스트 스파이크 </strong>포인트 관광후<br>
록키 산맥의 관문인 골든 도착</p>

<p><br>
호텔 투숙 및 자유시간</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">샐몬암</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Salmon Arm</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','CAYSN');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/49/49204a74fd3b8a6389c9c3966159189f.tn.410x280.png" alt="샐몬암" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/41/41e3523eaddab879fcf4accffb9b53d3.tn.410x280.png" alt="샐몬암" style="height: 140px;"></span>
																</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayTxt stayAccomInfo" onclick="javascript:fnScheAccom('');" value="" style="cursor: text; text-decoration: none; color: rgb(93, 99, 111);">
														PONDEROSA  INN 또는 미정</span>						                        
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>한식</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>현지식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle3">
										<span class="day">3일차</span>
										<span class="dayTxt"><p>2017년09월24일 일요일 - 골든/캘거리</p></span>                        
										<select name="product" id="daySchedule3" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle3'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3" selected="">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">골든</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">요호국립공원 관광</span>			                        
												<span class="timeTxtSub"><p>호텔 조식후 출발하여 알버타주</p>

<p><br>
브리티시 컬럼비아주 경계인 키킹 호스 패스를 지나 <span style="color:rgb(0, 0, 0)"><strong>요호 국립공원</strong>으로 </span>이동</p>

<p>&nbsp;</p>

<p>아름다운 <strong>요호밸리</strong>를 따라 키킹호스강의 침식작용으로 이루어진</p>

<p><strong>- 자연의 다리</strong>와 침엽수가 아늑하게 둘러싸고 있는 <strong>에메랄드 호수</strong>를 관광</p>

<p>&nbsp;</p>

<p>아이스필드 파크웨이를 따라 까마귀발 빙하, 보우호수를 감상하며</p>

<p>- 콜럼비아 대빙원에 도착하여 특수설상차를 타고 <strong>아싸바스카 빙하</strong>에 올라 <strong>빙하체험</strong></p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">에메랄드 호수</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Emerald Lake</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000532');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/3f/3f7c421976b6e5a34be55405c8de7b49.tn.410x280.jpg" alt="에메랄드 호수" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/c2/c2f86250005da83b8e43bd2eaa8abb06.tn.410x280.jpg" alt="에메랄드 호수" style="height: 140px;"></span>
																<span class=" txtBox">							
																요호 국립공원을 대표하는 호수 중 하나로, 겨울에는 얼어있다가 날씨가 따뜻해지면 에메랄드빛이 나는 호수가 된다. 호수 위에서 카약을 타는 사람들을 종종 볼 수 있다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar headOk ">
																<!-- 선택관광 헤더정보 -->
																<span class="head yellow">선택관광</span>
																<span class="tit pdL180">
																	<span class="hgName choTxt">[헬기투어]</span>
																	<span class="barLine mrl5">|</span><span class="navi">
																		<p class="payTxt">$150/1인</p></span>
																	</span>		
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class=" txtBox">							
																</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar headOk ">
																<!-- 선택관광 헤더정보 -->
																<span class="head yellow">선택관광</span>
																<span class="tit pdL180">
																	<span class="hgName choTxt">[설상차]</span>
																	<span class="barLine mrl5">|</span><span class="navi">
																		<p class="payTxt">$60 /1인</p></span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('selectTour','E1001831');">자세히보기<p>+</p></span></span>		
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/b5/b5113738b87c19e0e2bef86dfe74a32d.tn.410x280.JPG" alt="설상차" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/97/977694fa5b71130d8a1b07865490b354.tn.410x280.JPG" alt="설상차" style="height: 140px;"></span>
																<span class=" txtBox">							
																캐나다 로키관광의 꽃! 특수 설상차. 설상차 운전기사의 가이드를 직접 들으며, 가파른 빙원을 올라갑니다. 차창밖으로 보이는 아름다운 빙하를 감상해 보세요</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">캘거리</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>광활한 알버타의 목장지대를 지나 캘거리로 이동</p>

<p>&nbsp;</p>

<p>호텔 투숙 및 자유시간</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayTxt stayAccomInfo" onclick="javascript:fnScheAccom('');" value="" style="cursor: text; text-decoration: none; color: rgb(93, 99, 111);">
														CLARION CALGARY 또는 미정</span>						                        
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>현지식</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>한식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle4">
										<span class="day">4일차</span>
										<span class="dayTxt"><p>2017년09월25일 월요일 - 캘거리/벤프</p></span>                        
										<select name="product" id="daySchedule4" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle4'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4" selected="">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">캘거리</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>호텔조식 후 출발하여</p>

<p>&nbsp;</p>

<p>로키의 장수마을 캔모어로 이동하여 쇼핑센터 방문</p>

<p><strong>NUTRITION 특판점</strong> 방문</p>

<p>(아싸히 베리, 키토산, 초유, 석청 등 구매가능)</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">벤프</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">밴프국립공원 관광</span>			                        
												<span class="timeTxtSub"><p>1885년 지정된 캐나다 최초의 국립공원인 <span style="color:rgb(0, 0, 0)"><strong>밴프 국립공원</strong></span>으로 이동</p>

<p>&nbsp;</p>

<p><strong>- 밴프 스프링스 호텔</strong> 및 <strong>서프라이즈 코너</strong> 관광</p>

<p>-&nbsp;마른린 몬로 주연의 '돌아오지 않는 강' 촬영지 였던 <strong>보우폭포</strong></p>

<p>&nbsp;</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">밴프국립공원</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Banff National Park</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000534');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic">
																		<img src="https://dimgcdn.ybtour.co.kr/TN/e9/e9ee07cc2389d6a0a2e6ae55d6c11c88.tn.410x280.JPG" alt="밴프국립공원" style="height: 140px;">
																		</span>
																<span class=" txtBox">							
																1885년 지정된 캐나다 최초인 동시에 세계에서 세 번째로 개설된 국립공원이다. 대규모의 빙하와 호소 · 온천 · 야생동물 등 관광자원이 풍부하며, 야영장 · 숙박시설 · 트레일러 주차장 등이 갖추어져 있다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">보우 폭포</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Bow Falls</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000529');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic">
																		<img src="https://dimgcdn.ybtour.co.kr/TN/77/77987feb80bf5893ae39c71c4230ba8e.tn.410x280.JPG" alt="보우 폭포" style="height: 140px;">
																		</span>
																<span class=" txtBox">							
																마릴린 먼로가 주연으로 나온 영화 '돌아오지 않는 강'의 배경지가 된 곳이다. 높은 곳에서 떨어지는 세찬 폭포가 아닌 조그마하게 흐르는 폭포이다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">레이크루이스 관광</span>			                        
												<span class="timeTxtSub"><p><strong>세계 10대 절경중</strong> 하나로 로키 산맥의 진주라 불리는 <strong>레이크루이스</strong>로 이동하여</p>

<p>호수 및 <strong>레이크 루이스</strong> 호텔 주변 관광</p>

<p>&nbsp;</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">레이크 루이스</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Lake Luise</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000526');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/cb/cbb3531385aa77a1e09d75fd0f714e30.tn.410x280.jpg" alt="레이크 루이스" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/c9/c9baa693d8d9f286351aba79d9b27018.tn.410x280.jpg" alt="레이크 루이스" style="height: 140px;"></span>
																<span class=" txtBox">							
																아름다운 절경을 볼 수 있는 레이크 루이스는 우리나라에도 잘 알려진 피아니스트 '유키 구라모토(Yuhki Kuramoto)'의 피아노곡 'Lake Louis'에 영감을 준 곳이다. 호수는 맑은 날씨에 에메랄드빛을 띄는데, 이는 호수의 물속에 함유된 석회질 성분과 햇빛의 조화로 인한 현상이라고 한다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">레이크루이스</span>			                        
												<span class="timeTxtSub">석식 후 호텔 투숙</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayTxt stayAccomInfo" onclick="javascript:fnScheAccom('');" value="" style="cursor: text; text-decoration: none; color: rgb(93, 99, 111);">
														3 VALLEY LAKE CHATEAU 또는 미정</span>						                        
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>현지식</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>현지식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle5">
										<span class="day">5일차</span>
										<span class="dayTxt"><p>2017년09월26일 화요일 - 샐몬암/밴쿠버</p></span>                        
										<select name="product" id="daySchedule5" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle5'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5" selected="">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">샐몬암</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>조식 후 호텔 출발</p>

<p>쓰리밸리 갭을 지나 연어의 도시 샐몬암을 경유하여 메릿 도착</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">밴쿠버</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">밴쿠버 시내관광</span>			                        
												<span class="timeTxtSub"><p>중식 후 밴쿠버로 이동하여</p>

<p><strong>밴쿠버 시내관광</strong></p>

<p>&nbsp;- 차이나타운, 게스타운, 캐나다플레이스, 스탠리 공원, 잉글리쉬 베이 등</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">밴쿠버</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Vancouver</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','CAYVR');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/ee/eeb3d6ec19c3c9eb0125c0c859e5a3c3.tn.410x280.jpg" alt="밴쿠버" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/6a/6a333f4fd8cb0e0f28fc60c417188746.tn.410x280.jpg" alt="밴쿠버" style="height: 140px;"></span>
																<span class=" txtBox">							
																온난한 기후와 수려한 경관으로 캐나다에서 가장 아름다운 도시 중의 하나이다<br>
캐나다 제3의 대도시로서 조지아 해협의 버라드만과 프레이저강 의 삼각주 사이에 위치하며, 밴쿠버섬과 마주 대한다. 서부 캐나다 최대의 상공업 도시이자, 태평양으로 통하는 주요 무역항이기도 하다. <br>
20세기 초에는 주도(州都)인 빅토리아를 능가하여 주 전체의 경제활동을 통할하는 주 제1의 대도시로 성장하였다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">스탠리 공원</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Stanley Park</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000595');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/83/83d3ae4b46424bb14babc2e6f8914a21.tn.410x280.JPG" alt="스탠리 공원" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/62/62835d9b63e0dc43e9d7164b6fc8397c.tn.410x280.JPG" alt="스탠리 공원" style="height: 140px;"></span>
																<span class=" txtBox">							
																해변으로 둘러싸인 녹지에 꽃이 만개한 정원의 녹지공간과 문화 기념물, 원주민의 예술품이 산대해 있습니다. 벤쿠버에 가장 크고 오래된 스탠리 공원은 캐나다의 국립 사적지이자 도시 최고의 문화 유산입니다. 이 공원은 도시의 레저중심에 위치한 모두를 위한 공원입니다. 활기찬 도시의 스카이라인을 넘어 태평양을 바라보고 방파제를 따라 자전거 여행을 즐기실 수도 있습니다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 관광지 헤더정보 -->
																<span class="head mint">관광지</span>
																<span class="tit">
																	<span class="hgName">캐나다 플레이스</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Canada Place</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000590');">자세히보기<p>+</p></span></span>                             
															</div>		
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/8f/8f58e524390991c9a15efe0331d464a8.tn.410x280.jpg" alt="캐나다 플레이스" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/d2/d222210c12066f73c51a661fe885b551.tn.410x280.jpg" alt="캐나다 플레이스" style="height: 140px;"></span>
																<span class=" txtBox">							
																1986년 만국 박람회장이였던 곳으로 벤쿠버의 상징으로 불린다. 벤쿠버 항구의 모습을 한눈에 볼 수 있는 장소이다. 크루즈 선박 터미널, 아이맥스 극장, 레스토랑 등 이 다양하게 자리잡고 있다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 쇼핑 헤더정보 -->
																<span class="head yellow">쇼핑</span>
																<span class="tit">
																	<span class="hgName">GOOD LIFE HEALTH </span>
																	<span class="ctName"></span>
																	</span>                             
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class=" txtBox">							
																</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													<!-- 비고 -->	
														<div class="infoFoot">크릴오일, 비프로폴리스, 비타민 등 구매가능</div>	                        	
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub">석식 후 호텔투숙</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayTxt stayAccomInfo" onclick="javascript:fnScheAccom('A0006650');" value="A0006650" style="cursor: pointer; text-decoration: underline; color: rgb(0, 182, 173);">
														컴포트 인 에어포트</span>						                        
													<span class="stayBigo2">또는 미정</span>
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>현지식</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>한식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle6">
										<span class="day">6일차</span>
										<span class="dayTxt"><p>2017년09월27일 수요일 - 밴쿠버/호놀룰루</p></span>                        
										<select name="product" id="daySchedule6" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle6'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6" selected="">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">밴쿠버</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>기상 후 시애틀 공항으로 이동</p>

<p>[AS851 10:00] 탑승</p>

<p>&nbsp;</p>

<p>*시애틀-호놀룰루 구간은 좌석 상황에 따라 변경될 수 있습니다.</p>

<p>*시애틀-호놀룰루 구간 예약 후 1일 이내 발권이 진행되며,발권 후 취소시,전액 환불이 불가합니다.</p>

<p>&nbsp;</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">호놀룰루</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>호놀룰루 도착</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">호놀룰루 시내관광</span>			                        
												<span class="timeTxtSub"><p>- 호눌룰루를 한눈에 바라 볼 수 있는 펀치볼 전망대</p>

<p><br>
- 호놀룰루 다운타운에 위치한 주정부청사</p>

<p><br>
- 하와이를 통일한 킹 카메하메하 동상</p>

<p><br>
- 하와이 왕조 역사이며, 미국의 단 하나뿐인 왕궁 이올라니 궁전</p>

<p><br>
*시내관광 시 일부 관광지는 차창 관광으로 진행될 수 있습니다.</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">호놀룰루</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Honolulu</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','USHNL');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/f4/f438622fc3502a9ba553a92640b62892.tn.410x280.jpg" alt="호놀룰루" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/42/422ea58bfde8453deefad79f7dc4658b.tn.410x280.jpg" alt="호놀룰루" style="height: 140px;"></span>
																<span class=" txtBox">							
																호놀룰루는 하와이의 오아후 섬의 주도이다. 하와이제도는 8개의 주요섬과 크고 작은 124개의 섬으로 이루어져 있으며 태평양의 보석과도 같은 곳이다. 그러나 일반적으로 하와이는 미국의 50번째 주로 승인된 후, 알로하 스테이트로 알려져 있고 지도상으로는 8개의 섬 만을 가르킨다. 8개의 섬은 정원의 섬이라는 별명을 가진 하와이에서 가장 먼저 생성된 섬, 카우아이와 자연 그대로의 모습을 유지하고 있는 진짜 하와이 몰로카이섬, 세계 정상급 호텔과 유명 골프코스로 완벽한 휴식의 공간, 라나이섬과 마법의 섬이라고 불릴만큼 무궁무진한 매력의 마우이섬, 향기좋고 부드러운 맛의 코나커피의 생산지인 하와이에서 가장큰 섬 빅아일랜드섬, 마지막으로 하와이의 심장이자 만남의 장소인 사랑스러운 와이키키 비치가 있는 오아후 섬을 말한다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													<!-- 비고 -->	
														<div class="infoFoot">하와이제도는 8개의 주요섬과 크고 작은 124개의 섬으로 이루어져 있으며 태평양의 보석과도 같은 곳이다. 그러나 일반적으로 하와이는 미국의 50번째 주로 승인된 후, 알로하 스테이트로 알려져 있고 지도상으로는 8개의 섬 만을 가르킨다. 8개의 섬은 정원의 섬이라는 별명을 가진 하와이에서 가장 먼저 생성된 섬, 카우아이와 자연 그대로의 모습을 유지하고 있는 진짜 하와이 몰로카이섬, 세계 정상급 호텔과 유명 골프코스로 완벽한 휴식의 공간, 라나이섬과 마법의 섬이라고 불릴만큼 무궁무진한 매력의 마우이섬, 향기좋고 부드러운 맛의 코나커피의 생산지인 하와이에서 가장큰 섬 빅아일랜드섬, 마지막으로 하와이의 심장이자 만남의 장소인 사랑스러운 와이키키 비치가 있는 오아후 섬을 말한다.<br>
</div>	                        	
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>▣ 호텔 체크인 시 주의 사항 ▣</p>

<p>&nbsp;</p>

<p>1. 호텔 CHECK - IN 시간은 15:00 이후로 가능 합니다.<br>
2. 하와이 모든 호텔은 체크인시 손님 카드를 이용해 데포짓 요금을 결제하게 되어 있습니다.<br>
추후 체크-아웃시 호테 내 시성 및 객실 미니바 사용에 따른 추가결재를 위한조치 이므로 사용금액에 대해서만 최종 결재 됩니다.<br>
3. 데포짓으로 걸어두신 요금은 추후 취소처리 되오니 여행 완료후에도 조금 기다려 주시길 바랍니다.</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayBigo">와이키키 게이트웨이 호텔</span>
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>불포함</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>한식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle7">
										<span class="day">7일차</span>
										<span class="dayTxt"><p>2017년09월28일 목요일 - 호놀룰루</p></span>                        
										<select name="product" id="daySchedule7" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle7'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7" selected="">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">호놀룰루</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt">오아후 섬 핵심일주</span>			                        
												<span class="timeTxtSub"><p>조식 후 호텔 출발</p>

<p><br>
<strong>★섬일주 투어는 현지 상황에 따라 2일차가 아닌 3일차에 진행 될 수 있습니다.</strong></p>

<p>&nbsp;</p>

<p><br>
-화산 분화로 형성된 독특한 지형인 가벼운 크레킹코스로도 인기가 많은 다이아몬드헤드(차창관광)</p>

<p>&nbsp;</p>

<p>-마리나 릿지 마을로 그 형태가 한반도 지도와 흡사한 한반도 지도 마을(차창관광)</p>

<p>&nbsp;</p>

<p>-자연 천혜의 바다를 그대로 간직한 또 가고 싶을 하나우마베이 전망대</p>

<p>&nbsp;</p>

<p>-오아후 동쪽 끝에 위치한 아름다운 뷰 포인트 마카푸우 전망대</p>

<p>&nbsp;</p>

<p>-하와이의 역사, 폴리네시안들의 생활과 문화를 만날 수 있는 폴리네시안 민속촌</p>

<p>&nbsp;</p>

<p>-흥미만점인 여러가지 볼거리, 먹거리가 있는 돌 파인애플 농장 방문</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">호놀룰루</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Honolulu</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','USHNL');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/b4/b4fdbc68ce8343b033f88350d9a20330.tn.410x280.jpg" alt="호놀룰루" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/23/239d5781d1ea2651e73bd4f2019cc51d.tn.410x280.jpg" alt="호놀룰루" style="height: 140px;"></span>
																<span class=" txtBox">							
																호놀룰루는 하와이의 오아후 섬의 주도이다. 하와이제도는 8개의 주요섬과 크고 작은 124개의 섬으로 이루어져 있으며 태평양의 보석과도 같은 곳이다. 그러나 일반적으로 하와이는 미국의 50번째 주로 승인된 후, 알로하 스테이트로 알려져 있고 지도상으로는 8개의 섬 만을 가르킨다. 8개의 섬은 정원의 섬이라는 별명을 가진 하와이에서 가장 먼저 생성된 섬, 카우아이와 자연 그대로의 모습을 유지하고 있는 진짜 하와이 몰로카이섬, 세계 정상급 호텔과 유명 골프코스로 완벽한 휴식의 공간, 라나이섬과 마법의 섬이라고 불릴만큼 무궁무진한 매력의 마우이섬, 향기좋고 부드러운 맛의 코나커피의 생산지인 하와이에서 가장큰 섬 빅아일랜드섬, 마지막으로 하와이의 심장이자 만남의 장소인 사랑스러운 와이키키 비치가 있는 오아후 섬을 말한다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub">호텔로 이동 후 투숙 및 휴식</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayBigo">와이키키 게이트웨이 호텔</span>
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>PCC뷔페</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>한식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle8">
										<span class="day">8일차</span>
										<span class="dayTxt"><p>2017년09월29일 금요일 - 호놀룰루</p></span>                        
										<select name="product" id="daySchedule8" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle8'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8" selected="">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">호놀룰루</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>호텔 조식 후 전 일정 자유</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>★ 노랑풍선이 제안하는 추천 관광일정 ★</strong></p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<div class="infoTxt template">    
													<div class="infoBar headOk ">
																<!-- 선택관광 헤더정보 -->
																<span class="head yellow">선택관광</span>
																<span class="tit pdL180">
																	<span class="hgName choTxt">[스타오브 호놀룰루]</span>
																	<span class="barLine mrl5">|</span><span class="navi">
																		<p class="payTxt">$165/1인</p><p class="payTxt mrl5">/</p><p class="timeTxt">석식시간</p></span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('selectTour','E1000607');">자세히보기<p>+</p></span></span>		
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/5b/5b0b84ed34c06ff70b74b0ce63d2e39b.tn.410x280.jpg" alt="스타오브 호놀룰루" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/e8/e810914da7550722bbe033f759f47886.tn.410x280.jpg" alt="스타오브 호놀룰루" style="height: 140px;"></span>
																<span class=" txtBox">							
																약1500명이 승선하는 하와이 최대규모의 크루즈로서, 감미로운 라이브 밴드의 선율과 다채로운 선상쇼, 하와이의 백만불짜리 석양, 그리고 와이키키 전경을 한눈에 볼수 있습니다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													</div>
												<div class="infoTxt template">    
													<div class="infoBar ">
																<!-- 도시 헤더정보 -->
																<span class="head yellow">도시</span>
																<span class="tit">
																	<span class="hgName">호놀룰루</span>
																	<span class="hgName mrl5">:</span><span class="ctName">Honolulu</span>
																	<span class="btn" onclick="javascript:fnTourDtlInfo('city','USHNL');">자세히보기<p>+</p></span></span>     				                                
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/1b/1bbb751ba6ea8685d425babba733b0c8.tn.410x280.jpg" alt="호놀룰루" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/ed/ed654f517dcb1cae82b1280e4e3d1842.tn.410x280.jpg" alt="호놀룰루" style="height: 140px;"></span>
																<span class=" txtBox">							
																호놀룰루는 하와이의 오아후 섬의 주도이다. 하와이제도는 8개의 주요섬과 크고 작은 124개의 섬으로 이루어져 있으며 태평양의 보석과도 같은 곳이다. 그러나 일반적으로 하와이는 미국의 50번째 주로 승인된 후, 알로하 스테이트로 알려져 있고 지도상으로는 8개의 섬 만을 가르킨다. 8개의 섬은 정원의 섬이라는 별명을 가진 하와이에서 가장 먼저 생성된 섬, 카우아이와 자연 그대로의 모습을 유지하고 있는 진짜 하와이 몰로카이섬, 세계 정상급 호텔과 유명 골프코스로 완벽한 휴식의 공간, 라나이섬과 마법의 섬이라고 불릴만큼 무궁무진한 매력의 마우이섬, 향기좋고 부드러운 맛의 코나커피의 생산지인 하와이에서 가장큰 섬 빅아일랜드섬, 마지막으로 하와이의 심장이자 만남의 장소인 사랑스러운 와이키키 비치가 있는 오아후 섬을 말한다.</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														<span class="refer">
																<span class="referTit">참고하세요!</span>
																<span class="referTxt">화요일은 휴관입니다. </span>
															</span>
														</div>
														
													<!-- 비고 -->	
														<div class="infoFoot">하나우마베이는 남태평양의 다양한 열대어와 함께 수영을 할 수 있는 값진 경험을 드리는 관광입니다. </div>	                        	
													</div>
												<div class="infoTxt template">    
													<div class="infoBar headOk ">
																<!-- 선택관광 헤더정보 -->
																<span class="head yellow">선택관광</span>
																<span class="tit pdL180">
																	<span class="hgName choTxt">[이웃섬 관광]</span>
																	<span class="barLine mrl5">|</span><span class="navi">
																		<p class="payTxt">$350/인</p><p class="payTxt mrl5">/</p><p class="timeTxt">당일관광</p></span>
																	</span>		
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/1b/1b8605f845dda54fd8d45a01f1ac2098.tn.410x280.jpg" alt="이웃섬 관광" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/cd/cdf85101730ed70454807f9e5fa66261.tn.410x280.jpg" alt="이웃섬 관광" style="height: 140px;"></span>
																<span class=" txtBox">							
																</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														<span class="refer">
																<span class="referTit">참고하세요!</span>
																<span class="referTxt">1. 왕복 항공이동 이며 소요시간은 약1시간 미만입니다. <br>
2. 당일 관광으로 진행이 되며 다른 가이드와 함께 관광을 하게 됩니다.<br>
3. 이웃섬 관광은 월요일에는 진행되지 않으니 이점 유념 바랍니다.</span>
															</span>
														</div>
														
													<!-- 비고 -->	
														<div class="infoFoot">이웃섬 관광은 마우이, 빅아일랜드, 카우아이섬 추천드리며 선택하실 수 있습니다. </div>	                        	
													</div>
												<div class="infoTxt template">    
													<div class="infoBar headOk ">
																<!-- 선택관광 헤더정보 -->
																<span class="head yellow">선택관광</span>
																<span class="tit pdL180">
																	<span class="hgName choTxt">[쿠알로아 목장]</span>
																	<span class="barLine mrl5">|</span><span class="navi">
																		<p class="payTxt">$145~170</p><p class="payTxt mrl5">/</p><p class="timeTxt">약 3시간</p></span>
																	</span>		
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/d5/d5cda89585aaed930130644e0b0e0a48.tn.410x280.jpg" alt="쿠알로아 목장" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/86/862dc86c69a5d0b6fb298116af9e9167.tn.410x280.jpg" alt="쿠알로아 목장" style="height: 140px;"></span>
																<span class=" txtBox">							
																</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														<span class="refer">
																<span class="referTit">참고하세요!</span>
																<span class="referTxt">일요일은 휴관입니다.</span>
															</span>
														</div>
														
													<!-- 비고 -->	
														<div class="infoFoot">고대 하와이의 역사가 잠들어 있는 아름다운 절경을 지닌 쿠알로아 목장에는 헐리우드의 유명한 영화(킹콩,진주만,쥬라기공원 등)와 각종 TV 드라마의 배경이 되어 지고 있습니다. 또한 이곳에는 다양한 엑티비티가 활성화 되어 있습니다. </div>	                        	
													</div>
												<div class="infoTxt template">    
													<div class="infoBar headOk ">
																<!-- 선택관광 헤더정보 -->
																<span class="head yellow">선택관광</span>
																<span class="tit pdL180">
																	<span class="hgName choTxt">[8종 해양 스포츠]</span>
																	<span class="barLine mrl5">|</span><span class="navi">
																		<p class="payTxt">$180/1인</p><p class="payTxt mrl5">/</p><p class="timeTxt">약 4시간</p></span>
																	</span>		
															</div>
														<div class="infoBody">
														<div class="picWrap">
															<!-- 템플릿 -->											
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/30/30e566e8c866a139e357fc05f04b0f9c.tn.410x280.jpg" alt="8종 해양 스포츠" style="height: 140px;"></span>
																	<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/0e/0e11e9a8ff992de3b479f78b8d71f2e5.tn.410x280.jpg" alt="8종 해양 스포츠" style="height: 140px;"></span>
																<span class=" txtBox">							
																</span>
															</div>
																																										
														<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
														<!-- 참고사항 -->		
														</div>
														
													<!-- 비고 -->	
														<div class="infoFoot">윈드 서핑, 제트스키, 범퍼라이더 등 해양스포츠를 남태평양 한가운데, 선상위에서 즐길 수 있는 인기만점의 관광 상품입니다.</div>	                        	
													</div>
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayBigo">와이키키 게이트웨이 호텔</span>
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													<img src="/images/detail/schedule_icon02-2.png" alt="중식">
														<span>불포함</span>
													<img src="/images/detail/schedule_icon02-3.png" alt="석식">
														<span>불포함</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle9">
										<span class="day">9일차</span>
										<span class="dayTxt"><p>2017년09월30일 토요일 - 호놀룰루</p></span>                        
										<select name="product" id="daySchedule9" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle9'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9" selected="">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">호놀룰루</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>호텔 조식 후 공항으로 이동</p>

<p>&nbsp;</p>

<p><strong>[11:50 OZ231]&nbsp; 호놀룰루 공항 출발</strong></p>

<p>&nbsp;</p>

<p>비행 소요시간: 약 10시간 55분</p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 숙박 -->  
										<div class="dayStay">
											<span class="stay">숙박</span>
											<span class="stayBigo">기내박</span>
													</div>			                    
									<!-- 식사 -->
											<div class="dayFood">				                    
												<span class="food">식사</span>				                        
												<span class="foodTxt">
													<img src="/images/detail/schedule_icon02-1.png" alt="조식">
														<span>호텔식</span>
													</span>
											</div>	
										<div class="dayTitle" id="dayTitle10">
										<span class="day">10일차</span>
										<span class="dayTxt"><p>2017년10월01일 일요일 - 인천</p></span>                        
										<select name="product" id="daySchedule10" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle10'); return false;">
											<option value="#dayTitle1">[1일차] 2017-09-22  금</option>
											<option value="#dayTitle2">[2일차] 2017-09-23  토</option>
											<option value="#dayTitle3">[3일차] 2017-09-24  일</option>
											<option value="#dayTitle4">[4일차] 2017-09-25  월</option>
											<option value="#dayTitle5">[5일차] 2017-09-26  화</option>
											<option value="#dayTitle6">[6일차] 2017-09-27  수</option>
											<option value="#dayTitle7">[7일차] 2017-09-28  목</option>
											<option value="#dayTitle8">[8일차] 2017-09-29  금</option>
											<option value="#dayTitle9">[9일차] 2017-09-30  토</option>
											<option value="#dayTitle10" selected="">[10일차] 2017-10-01  일</option>
											</select>
									</div>
									
									<!-- 시간별 일정정보  Start -->       
									<!-- 방문도시정보 -->       
												<div class="dayArea">
													<span class="areaName">인천</span>
													</div>
											<div class="dayInfo">
												<!-- 시간별 일정 제목& 내용 -->
												<span class="timeTxt"></span>			                        
												<span class="timeTxtSub"><p>--- 날짜 변경선 ---<br>
&nbsp;</p>

<p><strong>[17:45] 인천 국제공항 도착</strong></p>
</span>
												<!--  s: 20161110 -->
												<!-- 여행정보 Start -->
												<!-- 여행정보 end -->               	
												<!--  e: 20161110 -->
												</div>
										<!-- 일정정보 end -->
									
														
									<!-- 일정end -->	
							</div>
							<!--[[ 일정상세 daily End ]]-->
					</div>
					<!--[[ 일정표 schedule tab01 End ]]-->
					<div id="etcWrap"><!--[[ 기타정보 탭 etcWrap Start ]]-->
		                <div class="tab">
		                    <ul>
		                        <li class="t01 on">
		                            <a href="#submain02">링크</a>
		                            <p>필수사항</p>
		                        </li>
		                        <li class="t02">
		                            <a href="#submain02">링크</a>
		                            <p>보험</p>
		                        </li>
		                        <li class="t03">
		                            <a href="#submain02">링크</a>
		                            <p>약관(취소수수료)</p>
		                        </li>
		                        <li class="t04">
			                            	<a href="#submain02">링크</a>
			                            	<p>여권/비자</p>
			                            </li>
			                            <li class="t05">
				                            <a href="#submain02">링크</a>
				                            <p>입금계좌</p>
				                        </li>
				                        <li class="t06">
				                            <a href="#submain02">링크</a>
				                            <p>유의사항</p>
				                        </li>
				                        <li class="t07">
				                            <a href="#submain02">링크</a>
				                            <p>쇼핑안내</p>
				                        </li>	
		                        	</ul>
		                </div>
		
		                <div class="etc tab01"><!--[[ 필수사항 tab01 Start ]]-->
	                		<table class="type04">
	<thead>
	<tr>
		<th class="th01" scope="col"><span>항목</span></th>
		<th class="th02" scope="col"><span>내용</span></th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="td01">
			<span class="tit">항공 관련 안내			<span>
		</span></span></td>
		<td class="td02">
			<span class="txt">■ 항공 발권 후 사전 좌석 요청이 가능한 경우에는 해드리고 있으나 해당항공사 고유의 권한으로 원하시는 좌석으로 임의 배정이 불가합니다. 이 경우 탑승 수속 시 항공사에 말씀하셔서 좌석배정을 요청하시기 바랍니다.<br>
■  항공사는 손님이 사전고지 없이 탑승하지 않는 경우(NO-SHOW)로 인한 피해를 최소화하고자, 탑승인원의 약 10%정도 초과하여 예약을 받고 있습니다.(OVER BOOKING) 오버부킹은 여행사와는 관계가 없으며, 항공사에서 진행하고 있는 부분입니다. 오버부킹으로 인해 피해를 입지 않도록 출발 전 사전 웹체크인을 하시거나, 출발 당일 공항에서 일찍 체크인하시기 바랍니다.<br>
■  출국 이후, 중간 구간 등 일부 항공편을 임의로 이용하지 않으면 귀국편 역시 자동 취소됩니다. 중간 일정 변경의 경우 반드시 탑승 전 최소 1주일 전 담당자 및 항공사와 상의하셔서 진행해주시기 바랍니다. <br>
■ 수화물 분실이 일어날 경우, 항공사 직원에게 즉각 말씀해주십시오. 일반적인 경우, 수화물 분실 후 다음 날 고객님께서 투숙하고 계시는 호텔로 배송해드리나, 수화물의 위치를 항공사에서 파악하지 못하는 경우도 발생할 수 있습니다. 그러므로 수화물 분실이 걱정되는 경우에는 기내반입이 가능한 캐리어로 준비해주시고, 수화물을 부치게 될 경우에는 귀중품 등을 반드시 기내로 반입하셔서 소지하시기 바랍니다. <br>
■ 국제선 항공편 액체물질 휴대제한 안내<br>
2008년 3월1일 부터 항공보안상의 이유로 한국을 출발하는 모든 국제선 항공편에 용기 1개당 100 ㎖(cc) 를 초과하는 액체, 젤류 및 에어로졸 물질을 가지고 항공기에 타는 것을 금지합니다. 용기 1개당 100㎖(cc) 이하의 액체, 젤류 및 에어로졸을 가지고 항공기에 타는 것은 허용하지만 투명한 비닐 지퍼락 봉투(Zipper Lock, 규격 : 20㎝×20㎝)를 초과하지 않도록 포장하여 보안검색요원에게 보여 주셔야 하며, 비닐봉투는 1개만 가지고 탈 수 있습니다. <br>
<br>
다만, 아래의 경우에는 용량에 제한없이 가지고 탈 수 있지만 미리 검색요원에게 신고해야합니다.<br>
<br>
① 어린 아이와 함께 여행하는 경우 어린 아이가 마실 우유나 음료수<br>
② 여행 목적지에 도착할 때 까지 필요하다고 판단되는 의약품<br>
<br>
면세점에서 액체, 젤류 및 에어로졸 면세품을 사는 경우, 면세점에서는 별도로 투명한 비닐봉투를 제작하여 영수증을 봉투 안에 넣은 후 봉인 포장 해 드릴 것입니다. 손님께서 면세점의 포장 봉투를 뜯지만 않으시면 용량에 관계없이 기내에 가지고 탈 수 있으므로, 절대 포장을 뜯지 마십시오.<br>
<br>
※ 성냥, 라이터 등과 같은 화기성 물건은 기내반입 뿐만 아니라 수화물 처리도 안되오니 소지하지 마십시요.<br>
			</span>
		</td>
	</tr>
	</tbody>
</table></div>
						<div class="etc tab02"><!--[[ 보험 tab02 Start ]]-->
							<div class="left">
			                        <span class="pic"><img src="/images/detail/etc02_ing.png" alt="KB손해보험"></span>
			                        <span class="line"></span>
			                        <span class="tit">여행자 보험</span>
			                        </div>
			                <div class="right">
		                		■ 보험종류<br>
의료비를 실손 보상하는 보험에 다수 가입되어 각 보험계약에서 보장하는 금액의 합계가 지급보험금 (의료비)을 초과하였을 경우 보험금은 계약별로 비례분담하여 지급되며, 중복 지급이 불가합니다..<br>
<br>
■ 가입 대상자 / 보상한도 (나이는 출발일 기준)<br>
: 만15세 미만: 휴유장애 시 5천만원 (상해사망 시 보상없음)<br>
: 만15세 이상 ~ 만 69세 6개월미만: 1억원<br>
: 만 69세 6개월이상 ~ 만 79세 6개월미만: 5천만원<br>
: 만 79세 6개월 이상: 보험가입 불가<br>
<br>
■ 보상 제외<br>
: 질병으로 인한 사망시&nbsp;: 고객 부주의로 인한 물품의 분실, 방치의 건: 통화,유가증권, 신용카드,여권, 항공권에 대한 건: 지진, 분화, 해일 또는 이와 비슷한 천재지변<br>
기타 휴대품 도난발생시 현지 경찰서의 확인서(폴리스리포트)를 반드시 받아와야 보상이 가능합니다.</div>					
		                </div><!--[[ 유의사항 tab02 End ]]-->
		
		                <div class="etc tab03"><!--[[ 약관(취소수수료) tab03 Start ]]-->
		                	■ 약관<br>
상기 상품은 국외여행표준약관(소비자분쟁해결기준)과 달리 특별약관이 적용되어 별도로 아래와 같은 취소수수료 특약이 적용되며, 별도의 동의 절차를 거치게 됩니다.<br>
&nbsp;<br>
■ 예약금 규정<br>
① 여행 확정 후 익일 오전까지 예약금을 입금하셔야 하며, 미입금 시 예약은&nbsp;확정되지 않습니다.<br>
②&nbsp;예약금은 항공좌석 확보나 호텔 및 리조트 확보를 위하여 지불되는 비용입니다.<br>
③ 예약금 입금 후 개인사정으로 인한 취소 시에는 출발일 관계없이 예약금 전액&nbsp;및 ‘기간에 따른 환불규정’ 에 따른 패널티가 발생합니다.<br>
④&nbsp;기간별 취소료 규정과 상관없이 항공사 및 호텔의 자체 규정에 따라 별도의 취소료가 적용될될수 있습니다 (호텔 Surcharge 및 항공사 취소료규정 우선적용)&nbsp;<br>
⑤ 일부 그룹항공권 이용 상품의 경우 항공데파짓 비용을 선납하므로 취소 시 계약금과 별도로 환불이 불가합니다. 항공권 발권 이후 변경 및 취소 시 항공권 패널티가 추가 부가됩니다.<br>
&nbsp;<br>
■ 항공규정<br>
① 항공권 발권 후 예약 변경이나 재발행(영문변경)으로 인하여 발생되는 비용은&nbsp;항공사 규정에 따릅니다.<br>
② 전세기 및 일부 특가 항공권은 예약 확정 또는 항공권 발권 후 취소 시 100%&nbsp; 비용이 부과됩니다.<br>
③ 항공 사전좌석 배정은 항공편의 취소, 지연, 기종의 변경 등으로 인해 부득이한 사유로 인하여 예고없이 변경 될 수 있습니다.<br>
④ 항공 사전좌석배정은 출발전 해당항공사 홈페이지에서 본인 지정가능하며,&nbsp; 온라인상으로 배정한 좌석도 100% 개런티되지 않으니 보딩 시 공항에서&nbsp;재확인하시기 바랍니다.<br>
&nbsp;<br>
■ 기간에 따른 취소 환불 규정<br>
- 여행개시 30일전까지 취소 요청시 - 계약금 환불<br>
- 여행출발일 20일전까지 취소 요청시 - 여행요금의 10% 배상<br>
- 여행출발일 19~10일전까지 취소 요청시 - 여행요금의 15% 배상<br>
- 여행출발일 9~8일전까지 취소 요청시 - 여행요금의 20% 배상<br>
- 여행출발일 7~1일전까지 취소 요청시 - 여행요금의 30% 배상<br>
- 여행출발 당일 취소 요청시 - 여행요금의 50% 배상<br>
※ 항공권 발권이후는 기간에 따른 규정 외 항공권취소패널티 <strong>300,000원</strong>이 부가됩니다 (국재선)
<p>&nbsp;&nbsp; 국내선 구간 발권이후 항공료 <strong>전액 환불불가</strong></p>

<p>&nbsp;</p>
■ 최저출발인원 미충족 시 계약해제<br>
① 당사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.<br>
② 당사는 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급 받은 계약금 환급 외에 다음 각 항목의 1의 금액을 여행자에게 배상하여야 합니다.<br>
가. 여행개시 7일전까지 여행계약 해제 통지시 : 계약금 환급<br>
나. 여행출발 1일전까지 통지시 : 여행요금의 30% 배상<br>
다. 여행출발 당일 통지시 : 여행요금의 50% 배상<br>
&nbsp;<br>
■ 취소위약금 증빙 제공 및 계약해제<br>
고객은 계약취소와 관련하여 취소수수료(여행사 인건비 포함) 부과내역에 대한 구체적인 증빙과 설명을 여행사에 요구할 수 있으며, 여행사는 관련 설명과 증빙을 제시하고 취소수수료 규정과 차액이 있는 경우 환급합니다.&nbsp;<br>
<br>
※ 행사 진행 중 천재지변 및 불가피한 상황 발생으로 소요되는 비용은 고객님께서 부담하셔야 합니다.<br>
※ 취소기준일은 취소를 통지한 날로 여행사과 항공사의 업무특성 상 영업일(월~금-09:00~18:30, 공휴일 제외) 기준입니다.</div><!--[[ 약관(취소수수료) tab03 End ]]-->
                        <div class="etc tab04"><!--[[ 여권/비자 tab04 Start ]]-->
		                	</div><!--[[ 여권/비자 tab04 End ]]-->
		                	
		                <div class="etc tab05"><!--[[ 입금계좌 tab05 Start ]]-->
		                    <span class="bul mgt5">
		                    	<p>국민은행 815601-04-014543 예금주 : (주)노랑풍선<br>
예약금은 1인당 \300,000입니다. 단, 담당자와 예약 확인 후 입금 해 주십시오</p>
</span>
		                </div><!--[[ 입금계좌 tab06 End ]]-->
		
		                <div class="etc tab06"><!--[[ 유의사항 tab06 Start ]]-->
		                	<p>■ 예약금<br>
- 예약 후 3일 이내에 1인당 300,000원 예약금을 입금하셔야 합니다.<br>
예약금을 입금하지 않으실 경우, 예약이 확정되지 않습니다.<br>
이점 참고 말씀 드립니다.</p>

<p>&nbsp;</p>

<p>■ 여행자보험 안내 (분실시 제외)<br>
- 여행기간 동안은 1억원의 해외여행자 보험이 자동으로 가입됩니다.<br>
사고시 현지에서 진단서, 치료비 명세서 원본을 챙겨오십시오.<br>
휴대품 도난시에는 현지 경찰 확인서를 받으셔야합니다.<br>
&nbsp;(상해사망후유장애 최대 1억원, 휴대품 손해 최대 20만원, 질병치료 최대 100만원)<br>
※ 연장체류시에는 별도로 보험을 신청하세요.※</p>

<p>&nbsp;</p>

<p>&nbsp;■ 비행기는 인솔자 동행여부 상관없이 개별수속입니다.</p>

<p>&nbsp;</p>

<p>■ 차량은 행사인원을 고려하여 인원별 전용 차량을 이용합니다.</p>

<p>&nbsp;</p>

<p>■ 일정표의 호텔은 예정호텔입니다.<br>
동급 호텔로 변경될 수 있으니 확정일정표를 확인하여 주십시오.</p>

<p>&nbsp;</p>

<p>■ 미주지역은 소방 안전법에 의해 엑스트라 베드 추가가 불가합니다.<br>
보통 더블사이즈베드 2개입니다.<br>
간혹 호텔방사정이 어려울경우 킹베드1개와 엑스트라베드가 나올 수 있습니다.</p>

<p>&nbsp;</p>

<p>■ 호텔에 일회용품은 비치되어있지 않습니다.각자 슬리퍼, 세면도구 준비 부탁드립니다.</p>

<p>&nbsp;</p>

<p>■ 미국 표준전압은 110볼트입니다.필요시 별도의 플러그변환 어댑터를 준비해주세요.</p>

<p>&nbsp;</p>

<p>■ 호텔은 2인 1실 사용 기준입니다. (싱글룸 사용시 추가비용이 있습니다.)<br>
어린이 요금은 어른 2명과 같이 방 사용시에만 적용됩니다.<br>
어른 1명과 어린이 1명이 룸1개 사용시 성인 판매가에 어린이는 90% 요금입니다</p>
</div>
<!--[[ 유의사항 tab07 End ]]-->
		
		                <div class="etc tab07">
		                <!--[[ 쇼핑안내 tab07 Start ]]-->
		                	<span class="tit">본 상품에는 <p>총 3회의 쇼핑센터 방문 일정</p>이 있습니다.</span>
							<br>
		                    </div><!--[[ 쇼핑안내 tab08 End ]]-->
						</div>
						<div id="safeWrap">
			                <span class="titleBar"><span>해외여행 안전정보 안내</span></span>
			                <span class="txt">
			                  		  외교부에서는 [여행경보제도]를 운영하고 있으며, 노랑풍선은 고객님의 안전한 해외여행을 위하여 이 정보를 제공하고 있습니다. 여행경보단계는 여행유의/자제/철수권고/금지 4단계로 구분되며, 단기적인 위험상황이 발생하는 경우 특별여행주의보/경보 2단계로 추가 구분하고 있습니다. 외교부에서 국가별 상황에 따라 상시로 [여행경보제도]의 변경이 있을 수 있으므로, 당사에서 제공하는 안전정보가 시점에 따라 다소 차이가 발생할 수 있사오니, 반드시 출국 전 여행목적지의(국가 및 지역, <a href="http://www.0404.go.kr" target="_blank">www.0404.go.kr</a>) 안전정보를 확인하시어 [외교부의 권고]를 따라주시기 바랍니다.
			                </span>
			                <button type="button" name="" title="단계별 국가지정현황보기 버튼" onclick="window.open('about:blank').location.href='https://www.0404.go.kr/dev/issue_current.mofa'">단계별 국가지정현황보기</button>
						</div>
						
						<div id="reviewWrap"><!--[[ 고객상품평 reiewWrap Start ]]-->
		                <span class="titlebar"><span class="title">고객 상품평</span><span class="titlebg"></span></span>
						<span class="subtitle">본 상품을 이용하신 고객님들이 작성하신 상품평입니다.</span>
		                <div id="listWrap"><script type="text/javaScript" language="javascript">
$(document).ready(function(){	
	
	/* $("#btnAdd").click(function(){
		if("true" == "true"){
			alert("로그인 후 이용하실 수 있습니다.");	
			showLoginLayer();
			return;
		}else{			
		   $.ajax({
		    	url:"/product/rervPdtChk.do"
		    	,async:false
		    	,data:{
		    		"goodsCd" 		: "NCP5208"
		    	}        	
		    	,success:function(data){
		    		if(data>0){
		    			var url = "/product/addPdtRvw.do?pageIndex=1&goodsCd=NCP5208&evCd=NCP5208-170922OZ00&dspId=7423&mode=add";
		    			fnSelectIncRvw(url);
		    		}else{
		    			alert("상품평은 해당 여행상품을 이용하신 고객님의 경우 작성하실 수 있으며, 해당 상품의 여행 도착일부터 작성하실 수 있습니다.");
		    		}
		    	}
		    	,error:function(request,status,error){
		        }
		    });
		}
	}); */
	
	
	$("#btnAdd").click(function(){ //리스트 화면 상품평작성 버튼		
		
		if("true" == "true"){
			alert("로그인 후 이용하실 수 있습니다.");
			showLoginLayer();
			return;
			
		}else{
			if(fnRervGoodsYn()){
				$("#writeWrap").css("display", "block");	
			}			
		}

	});
	
	
	//평점, 건수
	$("#rCnt").html("0.0점(5점)");
	$("#rAvg").html("0건");

});


function fnRervGoodsYn(){
	$.ajax({
    	url:"/product/rervPdtChk.do"
    	,data:{
			"goodsCd"   : "NCP5208",
			"webCustNo" : ""
			
    	}        	
    	,success:function(data){   
    		
    		if(data == "EXIST"){
    			alert("이미 상품평을 작성하셨습니다.");
    			return false;
    		}
    		
    		if(data == 'Y'){
    			$(".board_btn").css("display", "none");

    			var url = "/product/addPdtRvw.do?pageIndex=1&goodsCd=NCP5208&evCd=NCP5208-170922OZ00&dspId=7423&mode=add";
    			fnSelectIncRvw(url);
    			//fnAddIncRvw(url);

    		}else if(data == 'N'){
    			//alert("상품평은 해당여행상품을 이용하신 고객분들이 작성하실 수 있습니다. \n해당여행 상품을 이용하셨다면 여행 도착일부터 작성하실 수 있습니다. ");
    					    			alert("상품평은 해당 여행상품을 이용하신 고객님의 경우 작성하실 수 있으며, 해당 상품의 여행 도착일부터 작성하실 수 있습니다.");
    			return false;
    		}
    	}
    	,error: function(data) {
			alert("fnRervGoodsYn 오류");
		}
    });
}


function fnMovePage(obj){
	var aObj = obj;
	fnSelectIncRvw($(aObj).attr('href'));
}

function fnView(obj){
	var aObj = obj;
	fnSelectIncRvw($(aObj).attr('href'));
}

</script>

	<!--[[ board area Start ]]-->
	<!--[[ board area End ]]-->
	
	<!-- [[ 고객상품평 20160825 추가 ]] -->
				<div id="listWrap">
					<table class="prdCommentList">
					<caption>내가 작성한 상품평</caption>
					<colgroup>
						<col width="*">
						<col width="130">
						<col width="120">
					</colgroup>
					<tbody>
						<tr>
							<td colspan="4" class="dataNone">등록된 상품평이 없습니다. 상품평을 작성해 주세요.</td>
						</tr>
						</tbody>
					</table>
					<div class="board_navi_area"><!--[[ board navi Start ]]-->
						<span class="paging">
						    <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class="next">다음</span><span class="last">&gt;</span></span>
						
						<span class="board_btn">
				             <button type="button" id="btnAdd" class="btnGray" title="상품평작성">상품평작성</button>
				         </span>
				     </div><!--[[ board navi End ]]-->
				</div>
                <!-- [[ 고객상품평 20160825 추가 ]] -->
	
	
					<script type="text/javascript">
						$(document).ready(function(){
							$('.prdCommentList tr .cmTit a').on('click', function(e){
								e.preventDefault();
								if ($(this).parent().parent().next('tr').hasClass('on') == true){
									$('.prdCommentList tr.on').removeClass('on').hide();
									$(this).removeClass('on');
								}else{
									$('.cmTit a').removeClass('on');
									$('.prdCommentList tr.viewCont').removeClass('on').hide();
									$(this).parent().parent().next('tr').addClass('on').show();
									$(this).addClass('on');
									
									var rvwNo = $(this).attr("id");
									$.ajax({
								    	url:"/product/updatePdtRvwReadCnt.do"
								    	,data:{
											"rvwNo"   : rvwNo
								    	}        	
								    	,success:function(data){   
								    	}
								    	,error: function(data) {
										}
								    });
								}
							});
							
						});
						
						function reviewUpd(rvwNo){
							var url = "/product/addPdtRvw.do?pageIndex=1&goodsCd=NCP5208&dspId=7423&evCd=NCP5208-170922OZ00&mode=modi&rvwNo="+rvwNo;
							fnSelectIncRvw(url);
						}
						
						function reviewDel(rvwNo){
							if(confirm("삭제하시겠습니까?"))
								$.ajax({
									  type:"POST"	
									, url:"/product/savePdtRvw.do"
									, data:{
										 "rvwNo" : rvwNo
										,"mode"   : "del"
									}
									, dataType: 'JSON'
									, async: false
								   
									, success:function(jsonResult) {
										alert("삭제되었습니다");
										var listUrl = "/product/selectPdtRvwList.do?pageIndex=1&goodsCd=NCP5208&dspId=7423";
										fnSelectIncRvw(listUrl);
									}
									, error: function() {
										//alert('Saving Error! ');
									}
								
							 	});
						}
					</script>
					</div>
					<!--[[ 고객상품평목록 listWrap End ]]-->
		
		            </div>
					<!--[[ 고객상품평 reiewWrap End ]]-->
						
						
						
			</div>
			<!--[[ 디테일 정보 dtlInfo End ]]-->
		</div>
		<!--[[ infoWrap End ]]-->
		
		<!--[[ asideWrap Start ]]-->
		
		<aside id="asideWrap" style="left: 550px; position: absolute; top: 19841px;">

            <div class="aside01">
                <span class="tit">담당자</span><span class="name">이기영</span><span class="phone">02-2022-7284</span><span class="info">총 
                
                		상품
                	
                가격 (성인 1인 기준) <button class="btn_calculator" type="button" name="btnCalculator" role-w="550" role-h="600" role-url="/product/calculator.do?evAdtPrice=2790000&amp;evChdPrice=2232000&amp;evInfPrice=558000"></button></span>
                <span class="pricedetailPackage fontWhite tip" role="3">2,790,000<span>원</span><img src="/images/productDetail/icon_questionB.png" alt="안내">
				<span class="tooltip asideTip" style="display: none;">
                <span class="price_child">아동: 2,232,000</span>
	                	<span class="price_child">유아: 558,000</span>
	                </span>
             </span>
                        
              
            </div>
            <div class="aside02">
                <span class="tit">상품번호</span><span class="pNum">[<span class="num">NCP5208-170922OZ00</span>]</span>
                
                <span class="txt">시애틀+록키완전일주 + 하와이 10일</span>
            </div>

            <div class="aside03">
                <span class="tit">
                	출발일 - 
                	OZ272</span>
                <button type="button" name="btnSchedule" role-w="1160" role-h="800" role-url="/product/unitListPop.do?menu=pkg&amp;did=7423&amp;goodsCd=NCP5208" class="btn" title="퀵메뉴 다른출발일보기">다른출발일보기</button>
                <span class="txt txt01">한국출발 2017년 09월 22일(금) 18:40</span>
                <span class="txt txt02">현지도착 2017년 09월 22일(금) 13:10</span>
            </div>

            <div class="aside04">
                <span class="tit">도착일 - OZ231</span>
                <span class="txt txt01">현지출발 2017년 09월 30일(토) 12:10</span>
                <span class="txt txt02">한국도착 2017년 10월 01일(일) 17:10</span>
            </div>

            <div class="aside05">
                <span class="tit">여행기간</span>
                <span class="txt">8박10일</span>
            </div>
       
            <div class="aside06">
                <span class="tit">교통</span>
                <div class="seletboxAir">
                    <input type="hidden" name="search_txt" id="search_txt">
                    <span id="inputAir">
         		    	<img src="/images/productDetail/KE.png" alt="아시아나항공">
	                   			아시아나항공</span>
                    <ul>
                    	<li onclick="goEvent('NCP5208-170922OZ00')" style="background: rgb(249, 251, 251);">
		                        <img src="/images/productDetail/KE.png" alt="아시아나항공">
			                   			<span class="airname">아시아나항공</span>
	                            <span class="mark"><span class="pie orange">예약가능</span></span>
		                          	<span class="date">2017년 09/22 (금) 18:40 - OZ272</span>
	                            <span class="price">2,790,000원</span>
	                        </li>
                        </ul>
                </div>
            </div>

            <div class="aside07">    
	           		<span class="tit">남은좌석</span>
								<span class="txt">10석&nbsp;(최소 출발인원: 8명)</span>
	               	</div>
	           	<div class="aside08">
                <!--  <button type="button" name="btnCalculator" id="btnCalculator" role-w="550" role-h="600" role-url="/product/calculator.do?evAdtPrice=2790000&evChdPrice=2232000&evInfPrice=558000" class="btnCalculator" title="요금계산기">요금계산기</button>-->
	<button type="button" onclick="fnSaveWishProc('E','/product/detailPackage.do?menu=pkg&amp;did=7423&amp;evCd=NCP5208-170922OZ00','NCP5208','NCP5208-170922OZ00','false'); return false;" class="btnCalculator">관심상품등록</button>
				<button type="button" name="btnReserves" id="btnReserves" class="btnReserveS" title="예약하기">예약하기</button>           			
		</div>

            <div class="aside09">
                <span class="quick01"><a href="http://www.facebook.com/sharer.php?u=" onclick="fnGoSns(this.href, 'facebook','시애틀+록키완전일주 + 하와이 10일'); return false;"><img src="/images/productDetail/quick_icon01.png" alt="페이스북"></a></span>
                <span class="quick02"><a href="http://twitter.com/home?status=" onclick="fnGoSns(this.href, 'twitter','시애틀+록키완전일주 + 하와이 10일'); return false;"><img src="/images/productDetail/quick_icon02.png" alt="트위터"></a></span>
                <span class="quick04"><a href="#" id="btnKakaoStory" target="_blank"><img src="/images/productDetail/quick_icon07.png" alt="카카오스토리"></a></span>
                <span class="quick03"><a href="#" onclick="fnSendEmail(); return false;"><img src="/images/productDetail/quick_icon03.png" alt="상품 추천 메일보내기"></a></span>
                <span class="quick04"><a href="#clipboard" onclick="fnCopyToClipboard(); return false;"><img src="/images/productDetail/quick_icon04.png" alt="링크 복사하기"></a></span>
                <!-- <span class="quick05"><a href="#wish"  onclick="fnSaveWishProc('E','/product/detailPackage.do?menu=pkg&did=7423&evCd=NCP5208-170922OZ00','NCP5208','NCP5208-170922OZ00','false'); return false;"><img src="/images/detail/quick_icon05.png" alt="관심상품 담기" /></a></span> -->
                <span class="quick06"><a href="#haedline" onclick="fnAllPrint('NCP5208-170922OZ00' ,'N')"><img src="/images/productDetail/quick_icon06.png" alt="인쇄하기"></a></span>
            </div>

            <div class="asideTop">
                <a href="#wrap"><img src="/images/productDetail/quick_top.png" alt="맨위로"></a>
            </div>

        </aside>
		
		
		
	
</div>
</div>
</div>