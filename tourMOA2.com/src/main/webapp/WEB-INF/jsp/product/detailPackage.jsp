<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<!-- <script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.cookie.js"></script>
<script src="/fp/flowplayer.min.js"></script>
<script src="/js/ui.js"></script>
<script src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
 -->



<script>
function fnSaveWishProc(unq){
	var f =document.frm;
	f.unq.value=unq;
	f.submit();
}
</script>
<script>
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
		
	//상품평 호출
	fnInitRvw();	

	/* 숙박지 정보
	$("#daily .dayStay span.stayAccomInfo").each(function(){
		var accomId = $(this).attr('value');
		if(accomId != '' && accomId != undefined){
			$(this).css("cursor","pointer");
			$(this).css("text-decoration","underline");
			$(this).css("color","#00b6ad");
		}else{
			$(this).css("cursor","text");
			$(this).css("text-decoration","none");
			$(this).css("color","#5d636f");
		}
	});
	숙박지 정보 */
	
	/* 날씨 제어
	$("#realArea").change(function(){
	
		$(".clock, .weather").each(function(){
			$(this).css("display", "none");
		})
		var cityCd = $(this).val();
		$("#c"+cityCd).css("display", "block");
		$("#w"+cityCd).css("display", "block");
		
	});
	날씨 제어 */
});

//?
function fnScheAccom(accomInfoId){
	if(accomInfoId != "" && accomInfoId != undefined ){
		fnTourDtlInfo("accom",accomInfoId);
	}
}

//?
function fnTourDtlInfo(popDspNm,infoId){
	var newBtn = $("<button></button>");
	$(newBtn).attr("role-w",880);
	$(newBtn).attr("role-h",600);
	$(newBtn).attr("role-url", "/travelInfo/pdtTourInfo.do?popDspNm="+popDspNm+"&infoId="+infoId+"&isWeb=Y");
	showLayer($(newBtn));
}

/*****************
 * 일정표 일차 이동
 *****************/
function moveSchedule(target , id, dayno){
	var offset = $(target).offset().top; 
	$('body,html').animate({scrollTop:offset},1000);
	
	if( id != "" && dayno != ""){
		$("#"+id+" option[value="+dayno+"]").attr("selected", "selected");
	}
}
/******************************
 * 안전한 여행을 위한 주의사항 팝업
 ******************************/
function fnSafetyNotice(){
	var newBtn = $("<button></button>");
	$(newBtn).attr("role-w",550);
	$(newBtn).attr("role-h",546);
	$(newBtn).attr("role-url", "/product/safetyNotice.do");
	showLayer($(newBtn));
}
/******************************
 * 무료수하물 팝업
 ******************************/
function fnfreeBag(){
	var newBtn = $("<button></button>");
	$(newBtn).attr("role-w",550);
	$(newBtn).attr("role-h",520);
	$(newBtn).attr("role-url", "/html/common/other/freebag.html");
	showLayer($(newBtn));
}

/*상품평 function*/

function fnSelectIncRvw(vUrl){
	$("#listWrap").load(vUrl);
} 
  
</script>


<script type="text/javascript">


/* $(document).ready(function(){
	
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
		$("#localWrapOne").css({display:"inline-block"});
		$("div#detail_wrap").css({display:"none"});
	});
	$(".menuclose").click(function(){
		$("div#detail_wrap").css({display:"block"});
		$("#localWrapOne").css({display:"none"});
	});
	
}); */


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
});
</script>

<div id="wrap">
<div id="content">	
<!-- [[headline Start]] title과 상품번호 들어감 -->
	<div id="headline">
		<div class="headBox">
			<div class="pNum">
				[상품번호 <span class="num">${vo.code}-171001QR00</span>]
				<span class="dev_comm">상품의 코드를 유닛과 어떻게 관계 지어야 할지 생각해야함.</span>
			</div>
			<div class="title">
				${vo.title}
			</div>
			
		</div>
	</div>
	<!-- [[headline Start]] title과 상품번호 들어감 -->
	
	<!-- [[상품 기본 정보 틀 Start]] 상품 상세정보 들어감 -->
	
	<div id="detailWrap">
		<div id="infoWrap">
			<!-- [[상품 기본 정보 Start]] -->
			<div id="basicInfo">
				<span class="subTitle">${vo.detail1}</span>
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
					<span class="dev_comm">평점과 상품평 계산!</span>
				</span>

				<div class="basicL">
					<ul class="basicL01">
						<li class="lineBlack h36"></li>
							<li>
								<span class="tit">출발일</span>
								<span class="txt txt01">한국 출발 
									<fmt:parseDate var="parsedDate" value="${vo.sdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
									 - ${vo.fno}
								</span>
								
								<span class="txt txt02">현지 도착 
									<fmt:parseDate var="parsedDate" value="${vo.sadate}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
								</span>
							</li>
							<li>
								<span class="tit">도착일</span>
								<span class="txt txt01">현지 출발 
									<fmt:parseDate var="parsedDate" value="${vo.edate}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
									 - ${vo.fno}
								</span>
								<span class="txt txt02">현지 도착 
									<fmt:parseDate var="parsedDate" value="${vo.eadate}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
								</span>
							</li>
							<li>
								<span class="tit">이용항공</span>
								<span class="txt txt03">
									<img alt="${vo.airline}" src="/images/air/${fn:substring(vo.fno,0,2)}.png">${vo.airline}
								</span>
							</li>
							<li>
								<span class="tit">예약</span>
								<span class="txt txt04">
									<span>예약</span>
									<span class="fontOrange">${vo.person}명</span>
									<span class="gray_bar">|</span>
									<span>남은좌석</span>
									<span class="fontOrange">${vo.rem}석</span>
									<span>( 최소 출발 </span>
									<span class="fontOrange">${vo.minp}명</span>
									<span>)</span>
								</span>
							</li>
							
							<li class="lineBlack dvide">  
								<span class="tit noLine">방문도시</span>
								<span class="txt txt05">${vo.schd}</span>
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
	                        <span class="txt txt07"><fmt:formatNumber value="${vo.price-vo.fuel}" groupingUsed="true" /><p class="won">원</p></span>
	                        <span class="txt txt07"><fmt:formatNumber value="${vo.pricech-vo.fuel}" groupingUsed="true" /><p class="won">원</p></span>
			                        <span class="txt txt07"><fmt:formatNumber value="${vo.pricein}" groupingUsed="true" /><p class="won">원</p></span>	                        	
	                        	</li>
	                    <li>
	                        <span class="tit">유류할증료</span>
	                        <span class="txt txt08"><fmt:formatNumber value="${vo.fuel}" groupingUsed="true" /><p class="won">원</p></span>
	                        <span class="txt txt08"><fmt:formatNumber value="${vo.fuel}" groupingUsed="true" /><p class="won">원</p></span>
			                        <span class="txt txt08"><fmt:formatNumber value="${vo.fuel}" groupingUsed="true" /><p class="won">원</p></span>
	                        	</li>
	                   	<li class="lineBlack">
	                        <span class="tit">총상품가격</span>
	                        <span class="txt txt09 price"><fmt:formatNumber value="${vo.price}" groupingUsed="true" /><p>원</p></span>
	                     	<span class="txt txt09 price"><fmt:formatNumber value="${vo.pricech}" groupingUsed="true" /><p>원</p></span>
									<span class="txt txt09 price"><fmt:formatNumber value="${vo.pricein}" groupingUsed="true" /><p>원</p></span>
								</li>
	                    <li class="lineNone">
	                        <span class="noti">유류할증료는 유가와 환율에 따라 변동될 수 있습니다.</span>
							<span class="noti">아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</span>
	                    </li>
                    </ul>
				</div>
				<form name="frm" method="post" action="/product/reserveStep01.do">
				<input type ="hidden" name="unq" id="unq" value="" />
				<input type ="hidden" name="code" id="code" value="${vo.code}" />
				</form>
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
								<img alt="${vo2.name}" src="/images/manager/${vo2.code}.png">
							</div>
							<div class="title">
								<span>담당자</span>
								<span>팀 대표번호</span>
								<span>이메일</span>
							</div>
							
							<div class="contact">
								<span>${vo2.name}</span>
								<span>${vo2.phone}</span>
								<span>${vo2.mail}</span>
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
							<input type="radio" name="air" id="aircord1" checked="checked"/>
						</span>
						<span class="air air01 typeAir"><label for="aircord1" style="cursor:default">${vo.airline}</label></span>
                           <span class="air air02">
								<fmt:parseDate var="parsedDate" value="${vo.sdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
								<fmt:formatDate value="${parsedDate}" type="time" pattern="HH:mm"/> -
                           </span>
                           <span class="air air03 price1"><fmt:formatNumber value="${vo.price}" groupingUsed="true" /><p>원</p></span>
                           <span class="air air04">
	                            <!-- class: mint , blue , yellow , pink , gold , green , red , purple -->
	                            
	                            <span class="mark">
	                            	
	                            	
									<jsp:useBean id="toDay" class="java.util.Date" />
									                                         
									<fmt:parseDate var="regDate" value="${vo.sdate}" pattern="yyyy-MM-dd HH:mm:ss" />                                         
									<fmt:parseNumber value="${toDay.time / (1000*60*60*24)}" integerOnly="true" var="nowDays" scope="request"/>
									<fmt:parseNumber value="${regDate.time / (1000*60*60*24)}" integerOnly="true" var="oldDays" scope="request" />
									
									<!-- 출발일 2일전부터 예약 마감 -->
									<c:if test="${oldDays - nowDays <= 2}">
										<span class="pie gray">예약마감</span>
									</c:if>
									<!-- 출발일 3일 이상 남았다면 예약 가능 -->
									<c:if test="${oldDays - nowDays >= 3}">
										<span class="pie orange1">예약가능</span>
									</c:if>
									
									
									
									
									
								</span>
		                    </span>		                        
	                </span>
					</li>
					
					 <li class="lineNone pdt30">
                        <button type="button" name="btnSchedule" role-w="1160" role-h="800" role-url="/product/unitListPop.do?menu=pkg&did=7423&goodsCd=NCP5208" class="btnStartdate" title="다른출발일보기">다른출발일보기</button>
						<span class="dev_comm" style="position:absolute;top:22px;">unitList.do 를 팝업으로 보여줌 코드 값 보내줌</span>
						
						<c:if test="${oldDays - nowDays <= 2}">
							<button type="button" name="btnClose" class="btnReserve reserveEnd" title="예약하기">예약마감</button>
						</c:if>
						<c:if test="${oldDays - nowDays >= 3}">
							<button type="button" name="btnReserve" class="btnReserve" title="예약하기">예약하기</button>
						</c:if>
						<span class="dev_comm" style="position:absolute;bottom:1px;">db에서 rsvable=Y 가 N 으로 바뀌도록 </span>
						
						
                     </li>
				</ul>
				<!-- [[상품 상세정보 Start]] 상품의 상세정보 include 된듯 -->
				
			</div>
			<!-- [[상품 기본정보 End]] -->
				<span class="dev_comm">국가별 디테일 슬라이더 이미지 등록 UI 만들어야 함, 국가2개 이상인 경우를 생각해봐야 함</span>
				<div id="dtInfo">
					<!--[[ 슬라이드 slideWrap Start ]]-->
					<div id="slideWrap">
						<div class="sliderkit photosgallery-vertical" style="display: block;">
							<div class="sliderkit-nav">
								<div class="sliderkit-nav-clip" style="width: 190px; height: 360px; top: 25px; margin: 0px;">
									<ul>
										<c:set var="filename" value="${fn:split(vo3.filename,'／')}" />
										<c:forEach var="fn" items="${filename}">
											<li style="width: 190px; height: 120px;" class="">
												<a href="#" rel="nofollow">
													<img src="/images/nation/${vo3.code}/${fn}" alt="이미지 설명">
												</a>
											</li>
										</c:forEach>
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
							
								<c:forEach var="fn" items="${filename}">
								<div class="sliderkit-panel">
									<img src="/images/nation/${vo3.code}/${fn}" alt="이미지 설명">
								</div>
								</c:forEach>
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
						
						${vo.dinfo}
						
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
							${vo.incinfo}
						</div>
					</div>
					
					<div class="info04">
					<!--[[ 불포함사항 info04 Start ]]-->
						<span class="titlebar"><span class="title">불포함사항</span><span class="titlebg"></span></span>
						<div class="cont04">
							${vo.nincinfo}
						</div>
						</div>
						
					
					<!--[[ 옵션사항 info05 Start ]]-->
					<div class="info05">
						
						<span class="titlebar">
							<span class="title">옵션사항</span>
							<span class="titlebg"></span>
						</span>
						<div class="cont05">
							<table class="type03">
								<thead>
									<tr>
										<th class="th01" scope="col">
											<span>선택관광</span>
										</th>
										<th class="th02" scope="col">
											<span>소요시간</span>
										</th>
										<th class="th03" scope="col">
											<span>비용</span>
										</th>
										<th class="th04" scope="col">
											<span>비고</span>
										</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="rs" items="${optList}">
									<tr>
										<td class="td01">
											<span class="pic">
												<img src="/images/opt/${rs.filename}" alt="${rs.title}">
											</span>
											<span class="choice w180">
												<span class="tit"></span>
												<span class="txt">${rs.title}</span>
											</span>
										</td>
										<td class="td02">
											<span class="txt">${rs.rtime}</span>
										</td>
										<td class="td03">
											<span class="txt">${rs.price}</span>
										</td>
										<td class="td04">
											<span class="tit"></span>
											<span class="txt">${rs.expl}</span>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!--[[ 옵션사항 info05 End ]]-->
					
					
					
					
					
					
					
					
					
						
						
						
						
						<div class="info06"><!--[[ 참고/전달사항 info06 Start ]]-->
								<span class="titlebar"><span class="title">참고/전달사항</span><span class="titlebg"></span></span>
								<div class="cont06">
									<!--StartFragment-->
									${vo.ref}
								</div>
						</div>
						<div id="tabWrap">
						<span class="dev_comm" style="position:absolute">일정표 만들어야 함</span>
						<!--[[ 탭 tabWrap Start ]]-->
						<div class="tab">
							<ul>
								<li class="t01 on"><a href="#submain02">일정표</a></li>
								<li class="t03"><a href="#submain02">관광지 정보</a></li>
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
										
										<c:set value="${vo.period2}" var="ped"/>
										<c:forEach var="i" begin="2" end="${ped}" step="1">
										
											<span class="" onclick="moveSchedule('#dayTitle${i}'); return false;">
												${i}일
											</span>
											
										</c:forEach>
										</div>
									</div>
									<button type="button" class="next on" title="다음">&gt;</button>
								</div>
								
							</div><!--[[ 일정차수 dateWrap End ]]-->
					
							<div class="scheduleNoti">
								<button type="button" class="print_new" onclick="fnAllPrint('NCP5208-170922OZ00','Y')"><img src="/images/detail/schedule_print.png" alt=" ">인쇄하기</button>
								<button type="button" class="safe" onclick="fnSafetyNotice()">안전한 여행을 위한 주의사항보기</button>
								 </div>
							
							<div id="daily">
								${vo.daily}
							</div>
								<!--[[ 일정상세 daily End ]]-->
						</div>
						
						
						
						
						
						<div id="tourInfo" class="tabview tab03" style="display: none;"><!--[[ 관광지정보 tab03 Start ]]-->
	            
			            <div class="etcInfo"><!--[[ 박스영역 Start ]]-->
		
								<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">베키오다리</span>
													<span class="hgName mrl5">:</span><span class="ctName">Ponte Vecchio</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000264');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/09/09984950e4be367601df7821f6575ea7.tn.410x280.jpg" alt="베키오다리" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/68/68ccb689ebf82f9e831121bd866d63c4.tn.410x280.jpg" alt="베키오다리" style="height: 140px;"></span>
														<span class=" txtBox">										
														아르노강 위의 다리 중에서 가장 오래된 것으로 1345년에 건설되었다. 로마시대의 마지막 다리로 알려져 있다. 1944년 연합군의 추격을 받던 독일군이 강 양쪽 기슭의 집을 모두 파괴했으나 베키오 다리만 남겨두었다고 한다. 원래 이 다리에는 푸줏간, 대장간, 가죽 처리장 등이 있었는데 1593년에 페르디난도 1세가 시끄럽고 악취가 난다며 모두 추방하였고 대신 금세공업자들이 다리 위의 상점에 세들었다. 이후로 지금까지 베키오 다리의 금세공 상점들은 다양한 보석을 판매하고 있으며, 이곳에서 판매하는 수공예 제품들은 여행자들에게 인기가 높다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">시뇨리아 광장</span>
													<span class="hgName mrl5">:</span><span class="ctName">Piazza della Signoria</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000266');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic">
																<img src="https://dimgcdn.ybtour.co.kr/TN/52/529a80b065e3f9a7cab1b945380d8ae0.tn.410x280.JPG" alt="시뇨리아 광장" style="height: 140px;">
																</span>
														<span class=" txtBox">										
														피렌체에서는 찾아보기 드문 널찍한 공간으로 13~14세기에 만들어져 도시의 구심점으로 시민들이 토론을 벌이거나 거수로 정사를 결정하던 곳이다. 주변에는 시청사로 쓰이고 있는 베키오 궁전, 피렌체를 대표하는 미술관인 우피치 미술관이 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">오르비에또 두오모성당</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1003654');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/9f/9fc4733c1fc6d01ae767ade70259a2bd.tn.410x280.jpg" alt="오르비에또 두오모성당" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/97/9768cc3cef8af8876100d805819eef73.tn.410x280.jpg" alt="오르비에또 두오모성당" style="height: 140px;"></span>
														<span class=" txtBox">										
														</span>
													</div>
												
												</div>	
																		
											<!-- 비고 -->															
												<div class="infoFoot">로마에서 북서쪽으로 96㎞ 떨어진 팔리아강(江)과 키아나강(江)의 합류점에 있다. 해발고도 195m의 바위산 위에 위치하며, 케이블카로 오르내린다. 주변의 비옥한 농업지대의 유통·산업·관광의 중심지이다. 부근의 농촌에서는 포도가 많이 생산되며, '오르비에토'라는 이름으로 생산되는 백포도주가 유명하다. 연철·도자기·레이스 등의 수공업이 이루어진다. </div>	                        	
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">피렌체 두오모 대성당</span>
													<span class="hgName mrl5">:</span><span class="ctName">Santa Maria del Fiore</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000263');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic">
																<img src="https://dimgcdn.ybtour.co.kr/TN/e1/e1796d23bb2c6a0eb7801f3852976fdf.tn.410x280.jpg" alt="피렌체 두오모 대성당" style="height: 140px;">
																</span>
														<span class=" txtBox">										
														정식 명칭은 ‘꽃의 성모 마리아’라는 뜻의 산타 마리아 델 피오레 대성당(Cattedrale di Santa Maria del Fiore)이다. 필리포 브루넬레스키가 설계한 돔으로 유명하며, 실외는 하얀색으로 윤곽선을 두른 초록색과 분홍색의 대리석 판으로 마감되어 있다.<br>
두오모의 쿠폴라는 '냉정과 열정사이' 영화에서 아오이와 준세이의 10년의 약속을 했던 장소로 유명하다. 두오모의 쿠폴라는 올라가면<br>
피렌체의 아름다운 모습을 볼 수 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">탄식의 다리</span>
													<span class="hgName mrl5">:</span><span class="ctName">Bridge of Sighs</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000362');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/bc/bc01d0789844703aa1c8b3f98888b59d.tn.410x280.jpg" alt="탄식의 다리" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/7f/7ffe8526755449eaf1475c231784f468.tn.410x280.jpg" alt="탄식의 다리" style="height: 140px;"></span>
														<span class=" txtBox">										
														두칼레 궁전과 작은 운하를 사이에 두고 동쪽으로 나 있는 감옥을 잇는 다리이다. 죄수들이 이 다리를 건너 프리지오니 지하 감옥으로 들어가면서 다시는 햇빛을 볼 수 없다는 생각에 한숨을 지으며 건넜다고 해서 지금의 이름이 붙여졌다. 이곳을 더욱 유명하게 만든 인물은 바로 작가이자 역사에 길이 남을 바람둥이였던 카사노바로, 그는 바로 이곳에 위치한 감옥에 투옥되었다가 탈옥을 시도하였다고 한다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">아레나 원형극장</span>
													<span class="hgName mrl5">:</span><span class="ctName">Arena theater</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000379');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/47/476d6ce6255c5c25f2c4959297f7b245.tn.410x280.jpg" alt="아레나 원형극장" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/85/858773da0fc325036f22ade1cef3486e.tn.410x280.jpg" alt="아레나 원형극장" style="height: 140px;"></span>
														<span class=" txtBox">										
														원형 경기장으로는 세계에서 3번째로 큰 규모를 갖는 "베로나의 마돈나"로 불리는 14세기 분수가 있는 구시가의 중심이다. 로마제국이 멸망한 뒤에는 사형장, 기사들의 결투 장소 등으로 이용되다가 19세기 이후부터 역사 유적으로 보호 받았다. 최대 2만 2000명까지 수용 가능하며, 해마다 여름이면 이곳에서 베로나 오페라축제가 열린다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">산마르코 광장</span>
													<span class="hgName mrl5">:</span><span class="ctName">San Marco Piazza</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000375');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/88/88f3bd06aa42831d72ceb635ab0cd93e.tn.410x280.jpg" alt="산마르코 광장" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/26/26cdac956f2808124dc824231d4cd4db.tn.410x280.jpg" alt="산마르코 광장" style="height: 140px;"></span>
														<span class=" txtBox">										
														베네치아 정치, 경제, 문화의 중심지로 건물들이 광장을 'ㄷ'자로 둘러싸고 있다. 나폴레옹은 이를 두고 세계에서 가장 아름다운 응접실이라 불렀다. 광장의 가운데에는 베네치아의 수호신인 날개 달린 사자상과 성테오도르상이 있고 동쪽으로 산 마르코 대성당, 두칼레 궁전이 있다. 광장을 둘러싼 건물은 16세기 경 정부청사로 건립된 것으로 나폴레옹의 날개라고도 불리며, 현재는 박물관을 비롯해 오래된 카페, 살롱들이 들어서 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">두칼레 궁전</span>
													<span class="hgName mrl5">:</span><span class="ctName">Palazzo Ducale</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000371');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/61/61569e6db41f35eff573ea39b67a6223.tn.410x280.jpg" alt="두칼레 궁전" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/a5/a5f23d077c2904b313d801ad131cca33.tn.410x280.jpg" alt="두칼레 궁전" style="height: 140px;"></span>
														<span class=" txtBox">										
														베네치아 공국의 정부청사로 9세기에 처음 만들어졌다. 하지만 몇 차례의 화재를 겪으며 재건을 반복해 지금의 건물은 15세기에 완성됐다. 북방의 고딕 양식과 베네치아의 동방적 양식과 장식이 어우러진 모습을 베네치아 고딕이라고 부르기도 한다. 두칼레 궁전에서는 산 마르코 광장과 베네치아 석호를 동시에 바라보며 즐길 수 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">베니스 전경</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1004425');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/4b/4b65ffc2a8b867fe936f71137b92c027.tn.410x280.jpg" alt="베니스 전경" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/5b/5bef3bdc12f56446a5b88fefff5c2ce5.tn.410x280.jpg" alt="베니스 전경" style="height: 140px;"></span>
														<span class=" txtBox">										
														영어로는 베니스(Venice)라고 한다. 베네치아만 안쪽의 석호 위에 흩어져 있는 118개의 섬들이 약 400개의 다리로 이어져 있다. 섬과 섬 사이의 수로가 중요한 교통로가 되어 독특한 시가지를 이루며, 흔히 ‘물의 도시’라고 부른다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">친퀘테레</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1003745');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="picB"><img src="https://dimgcdn.ybtour.co.kr/TN/57/57d6683c7cc4a71a1d8c82df90655285.tn.900x657.jpg" alt="친퀘테레" style="width: 690px;"></span>
														<span class=" txtBoxB">										
														20세기에 이탈리아의 지역 중 외국의 관광객에 의해서 가장 대중적으로 인기 있는 곳으로 발견되었고 해안과 5개 마을, 주변의 언덕은 친퀘테레 국립 공원으로 보호되고 있으며 유네스코 세계문화 유산으로 지정되어 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">친퀘테레</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1003745');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/ca/caa672254dc11e7792639462b93c7127.tn.410x280.jpg" alt="친퀘테레" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/d0/d07fbd60383c383582844b9bd54c9670.tn.410x280.jpg" alt="친퀘테레" style="height: 140px;"></span>
														<span class=" txtBox">										
														20세기에 이탈리아의 지역 중 외국의 관광객에 의해서 가장 대중적으로 인기 있는 곳으로 발견되었고 해안과 5개 마을, 주변의 언덕은 친퀘테레 국립 공원으로 보호되고 있으며 유네스코 세계문화 유산으로 지정되어 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">피사의 사탑</span>
													<span class="hgName mrl5">:</span><span class="ctName">Leaning Tower of Pisa</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000290');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/72/72024fdf385595547b2a4f3cd40595f6.tn.410x280.jpg" alt="피사의 사탑" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/e1/e108eba54d1518185f9d07c47a875926.tn.410x280.jpg" alt="피사의 사탑" style="height: 140px;"></span>
														<span class=" txtBox">										
														매년 1mm씩 남쪽으로 기울고 있어 보는 이로 하여금 안타까움과 위태로움을 동시에 느끼게 한다. 최상층부를 기준할 때 중심축으로부터 약 3.6m, 수직에서 10도 이상 기울어져 있다. 중세의 세계 7대 불가사의 중 하나로 불리고 있다. 이탈리아 정부는 경사각을 수정하기 위해 보수공사를 착수한 뒤 2001년 6월 일반인에게 다시 공개되었으나 보존을 위해 입장객의 수를 제한하고 있다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">폼페이 유적지</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1003653');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="picB"><img src="https://dimgcdn.ybtour.co.kr/TN/91/91854500b7598ed535304cc05dba6d22.tn.900x657.jpg" alt="폼페이 유적지" style="width: 690px;"></span>
														<span class=" txtBoxB">										
														AD 79년 8월 24일 베수비오 화산의 폭발로 한순간에 멸망한 폼페이의 유적이 19세기에 들어 발굴된 곳이다. 드러난 유적은 고대 로마의 생활상을 생생하게 재현하고 있다. </span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">소렌토 해안가</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1003651');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/f0/f0bd898945208aaf3ef1a6298d9cc005.tn.410x280.jpg" alt="소렌토 해안가" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/59/5916311b9da45d4245e98f5ffbe9daf1.tn.410x280.jpg" alt="소렌토 해안가" style="height: 140px;"></span>
														<span class=" txtBox">										
														그리스인에 의해 건설된 것으로 추정되며, 고대 로마제국 시대에는 수렌툼이라는 휴양지였다. 7세기에는 자치 공작령의 수도였으며, 1137년에노르만족(族)에 정복당해 시칠리아 왕국에 편입되었다(族)에 정복당해 시칠리아 왕국에 편입되었다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">나폴리 해안가</span>
													<span class="ctName"></span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1003650');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/45/45054e5b8e5ae31962d187cdf7b3bed3.tn.410x280.jpg" alt="나폴리 해안가" style="height: 140px;"></span>
															<span class="pic"><img src="https://dimgcdn.ybtour.co.kr/TN/e9/e9edda9b4cfa8b9373cc3cd156f5572b.tn.410x280.JPG" alt="나폴리 해안가" style="height: 140px;"></span>
														<span class=" txtBox">										
														나폴리는 로마·밀라노 다음가는 이탈리아 제3의 도시로 영어명은 네이플스(Naples)라고 한다. 세계 3대 미항으로 꼽히는 나폴리 항은 예로부터 '나폴리를 보고 죽어라'라는 말이 있을 정도로 경치가 아름답다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">콜로세움</span>
													<span class="hgName mrl5">:</span><span class="ctName">Colosseum</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000301');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic">
																<img src="https://dimgcdn.ybtour.co.kr/TN/39/39fb263eb3e2cdb29c589e7e6a02451e.tn.410x280.jpg" alt="콜로세움" style="height: 140px;">
																</span>
														<span class=" txtBox">										
														정식 명칭은 '플라비우스 원형경기장(Amphitheatrum Flavium)'이라고 한다. 플라비우스 왕조 때 세워진 것으로 베스파시아누스 황제가 착공하여 80년 그의 아들 티투스 황제 때에 완성하였다. 본래는 비공식 이름이었던 콜로세움(Colosseum)의 유래에 대해서는 원형 경기장 근처에 있던 네로 황제의 거대한 청동상(Colossus Neronis)과 명칭이 혼동되었다는 설과 '거대하다'는 뜻의 이탈리아어 콜로살레(Colossale)와 어원이 같다는 설이 있는데 중세에는 그 자체가 ‘거대한 건축물’이란 뜻으로 쓰이기도 했다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">바티칸박물관</span>
													<span class="hgName mrl5">:</span><span class="ctName">Vatican Museums</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000306');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic">
																<img src="https://dimgcdn.ybtour.co.kr/TN/2a/2a2e4c8f882be604d423a9f697e86333.tn.410x280.jpg" alt="바티칸박물관" style="height: 140px;">
																</span>
														<span class=" txtBox">										
														로마 교황청 바티칸궁전 내의 기념물, 미술관, 회화관 등의 종합적 명칭. 이 곳은 원래 교황의 바티칸 궁전이었으나 14세기 프랑스 아비뇽의 유폐를 마치고 바티칸으로 돌아온 후 박물관이나 미술관, 도서관으로 사용되었다. 박물관의 소장품은 16세기 초 추기경 줄리아노 델라 로베레의 개인수집에서 시작되어 역대 교황 에 의한 기증품과 시설의 증설에 의하여 풍성하게 되었다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">트레비 분수</span>
													<span class="hgName mrl5">:</span><span class="ctName">Fontana de Trevi</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000345');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic">
																<img src="https://dimgcdn.ybtour.co.kr/TN/6b/6b2669fb9902d4238ae5c4a3db05da54.tn.410x280.jpg" alt="트레비 분수" style="height: 140px;">
																</span>
														<span class=" txtBox">										
														방문객들이 물속에 동전을 던지고 소원을 비는 바로크 양식의 분수이다. 높이 26m, 너비 20m로 우뚝 서 있는 폰타나 디 트레비(트레비 분수)는 로마의 트레비 구역에 있는 자그마한 폴리 궁전을 온통 지배하고 있다. 하얀 대리석으로 이루어진 이 분수는 폴리 궁전의 파사드를 배경으로 하여 웅장하게 위치하고 있는 그 극적인 형태로 바로크 양식을 보여 주는 훌륭한 예이다. 분수에서 흘러나오는 물은 로마에서 22㎞ 떨어진 살로네 샘으로부터 오는데, 기원전 19년에 세워진 '아쿠아 비르고' 수도교를 통해 운반된다.</span>
													</div>
												
												</div>	
																		
											</div>
									<div class="infoTxt template">
											<div class="infoBar ">
												<span class="head mint">관광지</span>
				                                <span class="tit">
													<span class="hgName mrl5">스페인 광장</span>
													<span class="hgName mrl5">:</span><span class="ctName">Piazza di Spagna</span>
													<span class="btn" onclick="javascript:fnTourDtlInfo('tour','T1000321');">자세히보기<p>+</p></span></span>                										
											</div>
											<div class="infoBody">
												<div class="picWrap">
												
													<!-- 템플릿 -->												
													<span class="pic">
																<img src="https://dimgcdn.ybtour.co.kr/TN/03/03c9d12cdc5445d037a0efca36e1f86e.tn.410x280.jpg" alt="스페인 광장" style="height: 140px;">
																</span>
														<span class=" txtBox">										
														17세기에 교황청 스페인 대사가 이곳에 본부를 두면서 스페인 광장이라고 불리게 되었다. 영화 '로마의 휴일'에 등장하여 유명해졌으며 이탈리아 사람들과 관광객들로 항상 붐빈다. 계단에 철쭉꽃이 심어져 꽃이 피는 시기에는 적색, 분홍색 꽃들이 만발한다. 계단을 올라가면 트리니타 데이 몬티 교회가 있다. 스페인 계단은 17세기에 트리니타 데이 몬티의 프랑스인 주민들이 교회와 스페인 광장을 계단으로 연결시키기 시작하면서 만들어졌다. 광장 중앙에는 베르니니와 그의 아버지가 설계한 바르카치아 분수가 있다. 물에 반쯤 잠겨 있는 물이 새는 배는 베르니니가 만든 것이다. 바르카치아는 '쓸모 없는 오래된 배'를 의미한다.</span>
													</div>
												
												</div>	
																		
											</div>
									</div><!--[[ 박스영역 End ]]-->
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
		                	<c:if test="${vo.shop > 0 }">
		                		<span class="tit">본 상품에는 <p>총 ${vo.shop}회의 쇼핑센터 방문 일정</p>이 있습니다.</span>
		                	</c:if>
		                	<c:if test="${vo.shop == 0 }">
		                		<span class="tit">본 상품에는 <p>쇼핑센터 방문 일정이 없습니다.</p></span>
		                	</c:if>
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
		
		<aside id="asideWrap" style="left: 550px; position: absolute;">

            <div class="aside01">
                <span class="tit">담당자</span>
                <span class="name">${vo2.name}</span>
                <span class="phone">${vo2.phone}</span>
                <span class="info">총 상품 가격 (성인 1인 기준) 
                	<button class="btn_calculator" type="button" name="btnCalculator" role-w="550" role-h="600" role-url="/product/calculator.do?evAdtPrice=2790000&amp;evChdPrice=2232000&amp;evInfPrice=558000"></button>
                </span>
                <span class="pricedetailPackage fontWhite tip" role="3"><fmt:formatNumber value="${vo.price}" groupingUsed="true" /><span>원</span><img src="/images/productDetail/icon_questionB.png" alt="안내">
				<span class="tooltip asideTip" style="display: none;">
                <span class="price_child">아동: <fmt:formatNumber value="${vo.pricech}" groupingUsed="true" /></span>
	                	<span class="price_child">유아: <fmt:formatNumber value="${vo.pricein}" groupingUsed="true" /></span>
	                </span>
             </span>
                        
              
            </div>
            <div class="aside02">
                <span class="tit">상품번호</span><span class="pNum">[<span class="num">${vo.code}-170922OZ00</span>]</span>
                
                <span class="txt">${vo.title}</span>
            </div>

            <div class="aside03">
                <span class="tit">출발일 - ${vo.fno}</span>
                <button type="button" name="btnSchedule" role-w="1160" role-h="800" role-url="/product/unitListPop.do?menu=pkg&amp;did=7423&amp;goodsCd=NCP5208" class="btn" title="퀵메뉴 다른출발일보기">다른출발일보기</button>
				<span class="txt txt01">한국출발 
                	<fmt:parseDate var="parsedDate" value="${vo.sdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
				</span>
				<span class="txt txt02">현지도착 
					<fmt:parseDate var="parsedDate" value="${vo.sadate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
				</span>
                
            </div>

            <div class="aside04">
                <span class="tit">도착일 - ${vo.fno}</span>
				<span class="txt txt01">현지출발 
					<fmt:parseDate var="parsedDate" value="${vo.edate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
				</span>
				<span class="txt txt02">한국도착 
					<fmt:parseDate var="parsedDate" value="${vo.eadate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy년 MM월 dd일(E) HH:mm"/>
				</span>
            </div>

            <div class="aside05">
                <span class="tit">여행기간</span>
                <span class="txt">${vo.period}</span>
            </div>
       
            <div class="aside06">
                <span class="tit">교통</span>
                <div class="seletboxAir">
                    <input type="hidden" name="search_txt" id="search_txt">
                    <span id="inputAir">
         		    	<img src="/images/air/${fn:substring(vo.fno,0,2)}.png" alt="${vo.airline}">
	                   			아시아나항공</span>
                    <ul>
                    	<li style="background: rgb(249, 251, 251);">
		                        <img src="/images/air/${fn:substring(vo.fno,0,2)}.png" alt="${vo.airline}">
			                   			<span class="airname">${vo.airline}</span>
			                   			
	                            <span class="mark">
	                            	
									<!-- 출발일 2일전부터 예약 마감 -->
									<c:if test="${oldDays - nowDays <= 2}">
										<span class="pie gray">예약마감</span>
									</c:if>
									<!-- 출발일 3일 이상 남았다면 예약 가능 -->
									<c:if test="${oldDays - nowDays >= 3}">
										<span class="pie orange">예약가능</span>
									</c:if>
										                            
	                            </span>
		                          	<span class="date">
		                          	<fmt:parseDate var="parsedDate" value="${vo.sdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${parsedDate}" type="both" pattern="yyyy-MM-dd (E) HH:mm"/>
					 				- ${vo.fno}</span>
	                            <span class="price"><fmt:formatNumber value="${vo.price}" groupingUsed="true" />원</span>
	                        </li>
                        </ul>
                </div>
            </div>

            <div class="aside07">    
	           		<span class="tit">남은좌석</span>
								<span class="txt">${vo.rem}석&nbsp;(최소 출발인원: ${vo.minp}명)</span>
	               	</div>
	           	<div class="aside08">
                <!--  <button type="button" name="btnCalculator" id="btnCalculator" role-w="550" role-h="600" role-url="/product/calculator.do?evAdtPrice=2790000&evChdPrice=2232000&evInfPrice=558000" class="btnCalculator" title="요금계산기">요금계산기</button>-->
	<button type="button" onclick="fnSaveWishProc('E','/product/detailPackage.do?menu=pkg&amp;did=7423&amp;evCd=NCP5208-170922OZ00','NCP5208','NCP5208-170922OZ00','false'); return false;" class="btnCalculator">관심상품등록</button>
				<button type="button" name="btnReserves" id="btnReserves" class="btnReserveS" title="예약하기" onclick="fnSaveWishProc('${vo.unq}'); return false;">예약하기</button>           			
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


