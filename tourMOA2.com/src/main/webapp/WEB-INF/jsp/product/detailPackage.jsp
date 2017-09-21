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
<script>
$(document).ready(function(){
	
	//이미지 액박처리start
	$(".txt.txt03 img").error(function(){
		$(this).replaceWith('');
	}); 
	
	
	$(".aside06 .seletboxAir #inputAir img").error(function(){
		$(this).replaceWith('');
	}); 
	
	$(".aside06 .seletboxAir ul li img").error(function(){
		$(this).replaceWith('');
	}); 
	//이미지 액박처리end

	
	$("#menuopen").click(function(){
		$("#locMapOpen").css({display:"block"});
	});
	$(".menuclose").click(function(){
		$("#locMapOpen").css({display:"none"});
	});
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
});

</script>
<div id="wrap">
<!-- [[detailPackage_selectlocWrap start]]   --> 
<div id="detailPackage_selectlocWrap">
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
</div>
<!-- [[detailPackage_selectlocWrap End]]   -->
<div id="content">

	<!-- [[locMapOpen START]] : 펼치기 눌렀을 때 나오는 메뉴   -->
	<div id="locMapOpen">
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
	</div>
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
									<img alt="대한항공" src="/images/RYUTEST/KE.png">대한항공
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
	                        <span class="txt txt06 txt06-2 tip" role="1">아동<span>만12세미만<img src="/images/RYUTEST/icon_question.png" alt="안내" /></span></span>
	                        <span class="txt txt06 txt06-3 tip" role="2">유아<span>만2세미만<img src="/images/RYUTEST/icon_question.png" alt="안내" /></span></span>
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
								<img alt="담당자이름" src="/images/RYUTEST/youngyou.png">
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
										<img src="/images/RYUTEST/detail_package_slider.jpg" alt="이미지 설명">
									</a>
									</li>
									<li style="width: 190px; height: 120px;" class="">
									<a href="#" rel="nofollow">
										<img src="/images/RYUTEST/spain_detailPackage_slider.png" alt="이미지 설명">
									</a>
									</li>
									<li style="width: 190px; height: 120px;" class="">
									<a href="#" rel="nofollow">
										<img src="/images/RYUTEST/spain_detailPackage_slider2.png" alt="이미지 설명">
									</a>
									</li>
									<li style="width: 190px; height: 120px;" class="">
									<a href="#" rel="nofollow">
										<img src="/images/RYUTEST/spain_detailPackage_slider3.png" alt="이미지 설명">
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
									<img src="/images/RYUTEST/detail_package_slider.jpg" alt="이미지 설명">
								</div>
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/RYUTEST/spain_detailPackage_slider.png" alt="이미지 설명">
								</div>
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/RYUTEST/spain_detailPackage_slider2.png" alt="이미지 설명">
								</div>
								<div class="sliderkit-panel" style="display: block;">
									<img src="/images/RYUTEST/spain_detailPackage_slider3.png" alt="이미지 설명">
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
							<img alt="예약 Process" src="/images/RYUTEST/detailPackage_res_process.png">
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
							<img alt="예약 Process" src="/images/RYUTEST/detail_package_product_1.png">
						</p>
						<p>&nbsp;</p>
						<p>
							<img alt="예약 Process" src="/images/RYUTEST/detail_package_product_2.png">
						</p>
						<p>
							<img alt="예약 Process" src="/images/RYUTEST/detail_package_product_3.png">
						</p>
						</div>
					</div>
					<!--[[ 상품안내 info01 End ]]-->
		</div>
	</div>
	<!-- [[상품 기본정보 틀 End]] -->
	
	
	
</div>
</div>
</div>