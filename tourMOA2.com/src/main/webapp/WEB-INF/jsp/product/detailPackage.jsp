<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script>
$(document).ready(function(){
	$("#menuopen").click(function(){
		$("#locMapOpen").css({display:"block"});
	});
	$(".menuclose").click(function(){
		$("#locMapOpen").css({display:"none"});
	});
	$(".tip").hover(function(){
		var elem = document.getElementsByClassName("tip")
		var role = elem.getAttribute("role");
		alert(role);
		if(role == 1){
			$("role01").css({display:"block"});
		}else if(role==2){
			$("role02").css({display:"block"});
		}
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
	
	<!-- [[상품 상세정보 Start]] 상품 상세정보 들어감 -->
	
	<div id="detailWrap">
		<div id="infoWrap">
			<!-- [[상품 기본정보 Start]] -->
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
	                        <span class="tooltip" style="display: none; left:134px; top:45px;">
	                            <span class="period role01">2005.10.02 ~ 2015.10.01</span>
	                            <span class="period role02">2015.10.02 ~ 2017.10.01</span>
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
				
			</div>
			<!-- [[상품 기본정보 End]] -->
		</div>
	</div>
	<!-- [[상품 상세정보 End]] 상품 상세정보 들어감 -->
	
</div>
</div>