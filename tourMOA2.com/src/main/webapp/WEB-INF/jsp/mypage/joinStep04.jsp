<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="-1" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="robots" content="noindex,nofollow" />
<meta name="subject" content="" />
<meta name="description" content="해외패키지, 자유여행, 허니문, 국내여행, 항공권 등 실시간예약">
<meta name="keywords" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />

<title>투어모아 [거품없는 직판여행 NO.1]</title>

<!-- style sheet 모음 s-->
<link rel="shortcut icon" href="/images/yb.ico" />
<link rel="stylesheet" href="/css/jquery-ui.css" /> 
<link rel="stylesheet" href="/css/mypage.css" />
<!-- style sheet 모음 e-->

<!-- js파일 모음 s -->
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.cookie.js" type="text/javascript"></script>	
<script src="/js/ui.js" type="text/javascript"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.validate.js"></script>
<script src="/js/additional-methods.js"></script>
<script src="/js/localization/messages_ko.js"></script> 
<script src="/js/common.js"></script> 
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
<script src="/js/sessionCheck.js"></script><!-- 새벽 배포이후 빼기로 -->
<script src="/js/naverLogin_implicit-1.0.2.js"></script>
<script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
<script type="text/javascript" src="/search/ark/js/ark.js" ></script>
<script src="//code.jquery.com/jquery-1.11.0.js"></script>

<div id="content">	
<div id="wrap">
   <script type="text/javaScript" language="javascript" defer="defer">
		$(document).ready(function(){			
			var cnt = 0;			
			$("#btnok").click(function(){
				if(cnt == 0){
					cnt++
		// 			checkUnload = false;
					$("#mbrFrm").submit();
				}else{
					alert("처리중입니다");
				}				
			});			
			$("#btncancel").click(function(){
				history.back(-1);
			});			
		});	
	</script>
<form name="mbrFrm" id="mbrFrm" method="post" action="/mypage/joinStep05.do">
<input type="hidden" name="custId" 			id="custId" 			value="gkingdom" /> 아이디
<input type="hidden" name="custPassEnc" 	id="custPassEnc" 		value="!~kim76036236" />비밀번호
<input type="hidden" name="custNmKor" 		id="custNmKor" 			value="김국진" />이름
<input type="hidden" name="genderCd" 		id="genderCd" 			value="M" />성별
<input type="hidden" name="email" 			id="email" 				value="gkingdom@naver.com" />FULL 이메일
<input type="hidden" name="email1" 			id="email1" 			value="gkingdom" />이메일 ID
<input type="hidden" name="email2" 			id="email2" 			value="naver.com" />이메일 도메인
<input type="hidden" name="emailYn" 		id="emailYn" 			value="N" />이메일 수신여부
<input type="hidden" name="mobileTel" 		id="mobileTel" 			value="010-9046-0003" />전화번호
<input type="hidden" name="mobileRcpYn" 	id="mobileRcpYn" 		value="N" />모바일 수신여부
<input type="hidden" name="homeTel" 		id="homeTel" 			value="02-2662-4498" />집전화번호
<input type="hidden" name="zipCd" 			id="zipCd" 				value="05532" />우편번호
<input type="hidden" name="custAddr" 		id="custAddr" 			value="서울특별시 송파구 풍성로20길 13 (풍납동)" />기본주소
<input type="hidden" name="custAddrDetail" 	id="custAddrDetail" 	value="삼성아트빌 B동 502호" />상세주소
<input type="hidden" name="jobCd" 			id="jobCd" 				value="25" />직업코드
<input type="hidden" name="birthDt" 		id="birthDt" 			value="19750815" />생년월일
<input type="hidden" name="marryYn" 		id="marryYn" 			value="Y" />결혼여부
<input type="hidden" name="marryDt" 		id="marryDt" 			value="20081116" />결혼일자
<input type="hidden" name="agreeSav" 		id="agreeSav" 			value="Y" /> 개인정보 수집 동의여부
<input type="hidden" name="agreePrv" 		id="agreePrv" 			value="Y" /> 개인정보 제3자 제공 및 공유에 대한 안내(선택)에 동의
<input type="hidden" name="agreeMkt" 		id="agreeMkt" 			value="Y" />마케팅동의여부
<input type="hidden" name="custCi" 			id="custCi" 			value="/2d5tE82Nfe9SimLsXI2udw3lcFDpjDPpSnHRyBjporp4MKOvzQzkFbUWGpXNRNrOTkcy7HLPM9BWQrU2bx5DA==" />개인정보 인증으로 받아 오는 값
<input type="hidden" name="custDi" 			id="custDi" 			value="MC0GCCqGSIb3DQIJAyEAd8PWVUq+if1c/C40N22vyjJol/EeI5urLtQRV7+FnRc=" />개인정보 인증으로 받아 오는 값
<input type="hidden" name="certDiviCd" 		id="certDiviCd" 	    value="M" />
<input type="hidden" name="fdCd"   			id="fdCd"   	    	value="D" />
<input type="hidden" name="custStatCd"   	id="custStatCd"   	    value="J" />
<input type="hidden" name="prtNm"			id="prtNm"				value=""/>
<input type="hidden" name="prtCustCi"		id="prtCustCi"			value=""/>
<input type="hidden" name="prtCustDi"		id="prtCustDi"			value=""/>
<input type="hidden" name="prtGenderCd"		id="prtGenderCd"		value=""/>
<input type="hidden" name="prtCertDiviCd"	id="prtCertDiviCd"		value=""/>
<input type="hidden" name="prtFdCd"			id="prtFdCd"			value=""/>
<input type="hidden" name="prtCustStatCd"	id="prtCustStatCd"		value=""/>
<input type="hidden" name="prtBirthDt"		id="prtBirthDt"			value=""/>
<input type="hidden" name="prtMobileTel"	id="prtMobileTel"		value=""/> 
<input type="hidden" name="prtEmail"		id="prtEmail"			value=""/> 
<input type="hidden" name="prtRelCd"		id="prtRelCd"			value=""/> 
<input type="hidden" name="prtRelAdd"		id="prtRelAdd"			value=""/>


<section id="content" class="contentSub">
	<!--[[ content Start ]]-->
	<div class="tit join_tit" title="회원가입">
		<div class="join_tit_step">
			<span class="step_off">1</span>
			<span class="step_txt">약관동의</span>
			<span class="step_arr"></span>
			<span class="step_off">2</span>
			<span class="step_txt">본인인증</span>
			<span class="step_arr"></span>
			<span class="step_off">3</span>
			<span class="step_txt">정보입력</span>
			<span class="step_arr"></span>
			<span class="step_on">4</span>
			<span class="step_txt_on">입력확인</span>
			<span class="step_arr"></span>
			<span class="step_off">5</span>
			<span class="step_txt">가입완료</span>
		</div>
	</div>
    <div class="join_step"><!--[[ 정보입력 Start ]]-->
		<span class="h1">입력확인</span>
		<table class="step04">
			<caption>입력확인</caption>
			<tbody>
				<tr>
					<th scope="row">아이디<span class="chk"></span></th>
					<td>아이디표시</td>
				</tr>
				<tr>
					<th scope="row">성명<span class="chk"></span></th>
					<td>이름표시</td>
				</tr>
				<tr>
					<th scope="row">이메일<span class="chk"></span></th>
					<td>이메일표시</td>
				</tr>
				<tr>
					<th scope="row">휴대폰번호<span class="chk"></span></th>
					<td>휴대번호 표시</td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td>생년월일 표시</td> 
				</tr>
			</tbody>
		</table>			
	</div><!--[[ 정보입력 End ]]-->
	<div class="btnarea">
	    <button type="button" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
	    <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	</div>
    </section><!--[[ content End ]]-->
	</form><script src="/js/common.js"></script>
	<div id="sidemenu"  class="open"><!--[[ 우측 사이드메뉴 Start ]]-->
        <div class="sidemenuBtn"></div>
        <ul class="after">
            <li><img src="/images/common/quick/snb_nav1_m.gif" alt="통합검색" /></li>
            <li><img src="/images/common/quick/snb_nav2_m.gif" alt="출발확정상품" /></li>
            <li><img src="/images/common/quick/snb_nav3_m.gif" alt="기업/단체문의" /></li>
            <li class="to"><img src="/images/common/quick/snb_today.gif" alt="오늘본 상품" /><span class="today_view"></span></li>
            <li><img src="/images/common/quick/snb_nav4_m.gif" alt="예약확인/결제" /></li>
          	<li><img src="/images/common/quick/snb_nav5_m.gif" alt="결제방법안내 " /></li>
			<li><img src="/images/common/quick/snb_nav6_m.gif" alt="무이자할부" /></li>
			<li><img src="/images/common/quick/snb_nav7_m.gif" alt="계좌번호안내" /></li>
			<li><img src="/images/common/quick/snb_nav8_m.gif" alt="직통전화번호" /></li>
			<li><img src="/images/common/quick/snb_nav9_m.gif" alt="할인쿠폰" /></li>
			<li><img src="/images/common/quick/snb_nav10_m.gif" alt="대리점안내 " /></li>
			<li><img src="/images/common/quick/snb_nav11_m.gif" alt="고객만족도조사" /></li>
			<li><img src="/images/common/quick/snb_nav12_m.gif" alt="카카오톡" /></li>
			<li><img src="/images/common/quick/snb_nav13_m.gif" alt="우수여행상품" /></li>
           
        </ul>
        <ul class="before">
            <li><a href="/search/searchKeyword.do"><img src="/images/common/quick/snb_nav1.gif" alt="통합검색" /></a></li>
            <li><a href="/promotion/timeGather.do"><img src="/images/common/quick/snb_nav2.gif" alt="출발확정" /></a></li>
           <li><a href="/product/biztravel.do?menu=pkg"><img src="/images/common/quick/snb_nav3.gif" alt="기업/단체문의" /></a></li>
           <li class="today_goods">
				<div class="sidemenuLayer"><!--[[ 오늘본상품 레이어 Start ]]-->
                    <span class="layerTit"></span>
                    <span class="price"></span>
                    <img src="/images/sidemenu_layer.png" alt="icon"/>
                </div><!--[[ 오늘본상품 레이어 End ]]-->  
				<span class="stit"><img src="/images/common/quick/txt_today.png" alt="오늘 본 상품" /></span>
				<div class="today_img picWrap">
					<div class="today_box" >
						<ul class="today_list">
						</ul>
					</div>
				</div>
				<div class="page_today">
					<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic"></strong><a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>
				</div>
				
			</li>
			 
			<li>
			 <a href="javascript:showLoginPayLayer('/mypage/reserveList.do');" ><img src="/images/common/quick/snb_nav4.gif" alt="예약확인/결제" /></a>
	            </li>
			<li><a href="javascript:;" role-h="805" role-w="880" role-url="/mypage/payMethodPopup.do" onclick="showLayer(this);"><img src="/images/common/quick/snb_nav5.gif" alt="결제방법 안내" /></a></li>
			<li><a href="javascript:;" role-h="812" role-w="880" role-url='/mypage/openIntFree.do' onclick="showLayer(this);"><img src="/images/common/quick/snb_nav6.gif" alt="무이자 할부 " /></a></li>
			<li><a href="javascript:;" role-h="800" role-url='/mypage/accountNumber.do' onclick="showLayer(this);"><img src="/images/common/quick/snb_nav7.gif" alt="계좌번호안내" /></a></li>
			<li><a href="javascript:;" role-h="800" role-url='/mypage/directDial.do' onclick="showLayer(this);"><img src="/images/common/quick/snb_nav8.gif" alt="직통전화번호" /></a></li>
			<li><a href="/promotion/coupon.do"><img src="/images/common/quick/snb_nav9.gif" alt="할인쿠폰" /></a></li>
			<li><a href="http://company.ybtour.co.kr/agent/about.do"><img src="/images/common/quick/snb_nav10.gif" alt="대리점안내" /></a></li>
			<li><a href="/customer/survey.do"><img src="/images/common/quick/snb_nav11.gif" alt="고객만족도 조사 " /></a></li>
			<li><a href="/promotion/event/2016/0502_ev_kakao/"><img src="/images/common/quick/snb_nav12.gif" alt="카카오톡" /></a></li>    
			<li><a href="/promotion/event/2017/0828_ev_pmawards/"><img src="/images/common/quick/snb_nav13.gif" alt="우수여행상품" /></a></li>        
        </ul>
    </div><!--[[ 우측 사이드메뉴 End ]]-->

	<script src="/js/jquery.cookie.js" type="text/javascript"></script>    
    <script>
    	var todayX = 0;
		var totPicCnt = 0;
		var todayPage = 1;
		var pageUrlSplit = $(location).attr('pathname').split('/')[1];
		/************************
	    *긴급모객 건수 구하기 - 2017.05.09 : 불필요한 소스로 확인되어 주석처리함. 추후 운영중 문제 없으면 아애 삭제 요망.
	    *************************/
// 	    function fn_getTotCnt(){
   			
//    			var subUrl = pageUrlSplit=="mypage"?"mypage":"promotion";
// 		 	$.ajax({
// 		 		type: "POST"
// 		 		, url		:"/"+subUrl+"/selectTotCnt.do"
// 				,success:function(data){
// 					var cnt = '';
// 					if(data>100){
// 						cnt = '99 +';
// 					}else{
// 						cnt = data
// 					}

// 					$("#sidemenu ul.before li.menu02 p.promCnt").html(cnt);
// 					$("#sidemenu ul.after li.menu02 p.promCnt").html('<span>'+cnt+'</span>');
// 		    	}
// 		    	,error:function(request,status,error){
// 		        }
// 			}); 
//     	}
    	
		
	    $(document).ready(function(){

// 			fn_getTotCnt(); 
		    $("#sidemenu p.promCnt").html();
	    	/************************
		    *오늘본 상품
		    *************************/
	  		var todayPdt = $.cookie('todayPdt'); //쿠키값 가져옴
			var todaySlide = "";
			var totPic="";
			if(todayPdt != '' && todayPdt != undefined ){//쿠키값 있음
				if(todayPdt!= '[]'){
					var cookieJson = JSON.parse(todayPdt);
					totPicCnt = cookieJson.length;
					totPicPage = cookieJson.length;
					for(var i = cookieJson.length-1; i>=0; i--){
						var pdtUrl = "";;
						if(cookieJson[i].pdtWebCd == 'A'){
							pdtUrl="/product/detailPackage.do?"+cookieJson[i].splUrl+"&evCd="+cookieJson[i].evCd;
						}else{
							pdtUrl="/product/detailFit.do?"+cookieJson[i].splUrl+"&goodsCd="+cookieJson[i].goodsCd;;
						}
						todaySlide = todaySlide + '<li><a href="'+pdtUrl+'"><img src="'+cookieJson[i].imageThum+'" alt="'+cookieJson[i].pdtNm+'"  onmouseout="fnSideMouseout();" onmouseover="fnSideMouseover(\''+cookieJson[i].pdtNm+'\','+cookieJson[i].pdtPrice+');"/></a></li>'
					}
					totPic='<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic">'+1+'</strong> / '+totPicCnt+'<a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>'				
				}else{
					todaySlide = '<p>오늘 본<br /> 상품이<br /> 없습니다.</p>';
					totPic='<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic">0</strong> / 0<a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>'				
				}
			}else{
				todaySlide = '<p>오늘 본<br /> 상품이<br /> 없습니다.</p>';
				totPic='<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic">0</strong> / 0<a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>'
			}
		
			$("#sidemenu ul.before .picWrap .today_box ul.today_list").html(todaySlide); 		
			$("#sidemenu ul.before .page_today").html(totPic); 	
			if(totPicCnt>100){
				$("#sidemenu ul.after li.to .today_view").html('99+'); 
			}else{
				$("#sidemenu ul.after li.to .today_view").html('<span>'+totPicCnt+'</span>'); 
			}
				
		});
	    	/************************
		    *오늘본 상품
		    *************************/
		/* $(document).ready(function(){

			fn_getTotCnt(); 
		    $("#sidemenu p.promCnt").html();
	  		var todayPdt = $.cookie('todayPdt'); //쿠키값 가져옴
			var todaySlide = "";
			var totPic="";
			if(todayPdt != '' && todayPdt != undefined ){//쿠키값 있음
				if(todayPdt!= '[]'){
					var cookieJson = JSON.parse(todayPdt);
					totPicCnt = cookieJson.length;
					totPicPage = cookieJson.length;
					for(var i = cookieJson.length-1; i>=0; i--){
						var pdtUrl = "";;
						if(cookieJson[i].pdtWebCd == 'A'){
							pdtUrl="/product/detailPackage.do?"+cookieJson[i].splUrl+"&evCd="+cookieJson[i].evCd;
						}else{
							pdtUrl="/product/detailFit.do?"+cookieJson[i].splUrl+"&goodsCd="+cookieJson[i].goodsCd;;
						}
						todaySlide = todaySlide + '<span class="pic"><a href="'+pdtUrl+'"><img src="'+cookieJson[i].imageThum+'" alt="'+cookieJson[i].pdtNm+'"  onmouseout="fnSideMouseout();" onmouseover="fnSideMouseover(\''+cookieJson[i].pdtNm+'\','+cookieJson[i].pdtPrice+');"/></a></span>'
					}
					totPic='<p class="curPic">'+1+'</p>/<p class="totPic">'+totPicCnt+'</p>';
				}else{
					todaySlide = '<span class="pic"><span class="nonPic">오늘 본<br> 상품이 없습니다.</span></span>';
					totPic='<p class="curPic">0</p>/<p class="totPic">0</p>';					
				}
			}else{
				todaySlide = '<span class="pic"><span class="nonPic">오늘 본<br> 상품이 없습니다.</span></span>';
				totPic='<p class="curPic">0</p>/<p class="totPic">0</p>';
			}
		
			$("#sidemenu ul.before .todayWrap .picWrap").html(todaySlide); 		
			$("#sidemenu ul.before .today.cnt").html(totPic); 	
			if(totPicCnt>100){
				$("#sidemenu ul.after li.menu10 p.totPic").html('99+'); 
			}else{
				$("#sidemenu ul.after li.menu10 p.totPic").html('<span>'+totPicCnt+'</span>'); 
			}
				
		});	 */
		
		
		function fnTodayL(){
	        if ( todayPage > 1 )
	        {
	            todayPage = todayPage - 1;
	        }
			$('.today_list li').each(function(idx, itm){
				if(todayPage == idx+1)
					$(itm).show();
				else 
					$(itm).hide();
			});
			$("#sidemenu .curPic").text(todayPage);
		}
		

		function fnTodayR(){
	        if (  todayPage < totPicCnt )
	        {
	            todayPage = todayPage + 1;
	        }
			$('.today_list li').each(function(idx, itm){
				if(todayPage == idx+1)
					$(itm).show();
				else
					$(itm).hide();
			});
			$("#sidemenu .curPic").text(todayPage);
		}
		
		function fnSideMouseover(pdtNm, pdtPrice){
			$("#sidemenu ul.before li.today_goods > div.sidemenuLayer span.layerTit").html("<a href='#none'>"+pdtNm+"</a>");
			$("#sidemenu ul.before li.today_goods > div.sidemenuLayer span.price").html(comma(pdtPrice)+"<p>원</p>");
			
			$("#sidemenu .sidemenuLayer").stop(false, false).fadeIn(600);

		}	
		
		function fnSideMouseout(){
			$("#sidemenu .sidemenuLayer").stop(false, false).fadeOut(100);
		}
    </script>
<footer><!--[[ footer Start ]]-->

	<div class="footer_info">
			<div class="tour_info">
				<h3>여행상담 대표 전화번호</h3>
				<p class="norang_tel">1544-2288</p>
				<p class="tel_num"><span>1번 해외여행</span> <span>2번 자유여행</span> <span>3번 국내여행</span> <span>4번 법인단체</span> <span>0번 기타문의</span>
				</p>
			</div>
			<div class="air_info">
				<h3>해외항공상담 대표 전화번호</h3>
				<p class="norang_tel">1644-3399</p>
				<p class="tel_num"><span>1번 항공권 변경문의 </span><span>2번 환불 및 취소문의	</span><span>3번 기타문의</span></p> 
			</div>
			<p class="tel_local">부산지사 : 051-710-7744&nbsp;&nbsp;&nbsp;대구지사 : 053-720-7744</p>
			<p class="info_time">평일: 오전 9시부터 오후 6시 30분까지 / 토요일: 오전9시부터 오후3시까지(일요일 및 공휴일 휴무)</p>
		</div>
		<div class="local_tel_info">
			<h3>지역별 직통 전화번호 안내 </h3>
			<div class="num_block">
				<div class="num_device">
					<h4>해외패키지 상품</h4>
					<dl>
						<dt>유럽</dt>
						<dd>02-2022-7285</dd>
						<dt>동남아1</dt>
						<dd>02-2022-7282</dd>
						<dt>필리핀/푸켓</dt>
						<dd>02-2022-7283</dd>
						<dt>동남아2</dt>
						<dd>02-2022-7273</dd>
						<dt>중국</dt>
						<dd>02-2022-7287</dd>
						<dt> 일본 </dt>
						<dd>02-2022-7286</dd>
						<dt>괌/사이판</dt>
						<dd>02-2022-7289</dd>	
						<dt>홍콩/대만</dt>
						<dd> 02-2022-2408 </dd>
						<dt>미주/특수</dt>
						<dd>02-2022-7284</dd>
						<dt>호주/뉴질랜드</dt>
						<dd> 02-2022-7288 </dd>					
						<dt>인도/아프리카 </dt>
						<dd>02-2022-7297</dd>
					</dl>
				</div>
				<div class="num_device">
					<h4>패키지 외 상품</h4>
					<dl>
						<dt>자유여행</dt>
						<dd>1544-2288(2번)</dd>
						<dt>허니문</dt>
						<dd>02-2022-7293</dd>
						<dt>골프</dt>
						<dd>02-2022-7291</dd>
						<dt>기업단체</dt>
						<dd>02-2022-7299</dd>
						<dt>국내여행</dt>
						<dd>02-2022-7290</dd>	
						<dt>성지순례</dt>
						<dd>02-2022-7299</dd>	
						<dt>국내항공</dt>
						<dd>02-2022-7290</dd>
						<dt>크루즈</dt>
						<dd>02-2022-7297</dd>
					</dl>
				</div>
			</div>
		</div>
        

        <div id="bottomWrap"><!--[[ bottomWrap Start ]]-->

            <div id="footmenu"><!--[[ footmenu Start ]]-->
                <ul>
                    <li><a href="http://company.ybtour.co.kr" >회사소개</a></li>
                    <li><a href="http://company.ybtour.co.kr/info/headOffice.do" >오시는길</a></li>
                    <li><a href="/common/internetAgree.do" >인터넷회원약관</a></li>
                    <li class="yellow"><a href="/common/privacy.do" >개인정보처리방침</a></li>
                    <li><a href="/common/travelAgree.do" >여행약관</a></li>
                    <li><a href="/common/insu01.do" >여행자보험</a></li>
                    <li><a href="http://company.ybtour.co.kr/agent/about.do" >대리점안내</a></li>
                    <li><a href="/common/paperCalendar.do" >신문광고</a></li>
                    <li><a href="/common/siteMap.do" >사이트맵</a></li>
                    <li class="pd0"><a href="/customer/main.do" >고객센터</a></li>
                </ul>
            </div><!--[[ footmenu End ]]-->

            <div id="bottom"><!--[[ bottom Start ]]-->
                <ul id="bottomL">
                    <li class="tit">INFOMATION<span class="yellow_line"></span></li>
                    <li>
                        <span class="company">(주)노랑풍선</span> &nbsp;|&nbsp; 대표자 고재경. 최명일<br />
                        본사 사업자등록번호 104-81-64440<br />
                        관광사업자등록증번호 제2006-000003호 <br /> 
                        통신판매업신고번호 제2008-서울중구-0278<br />
                        <span class="licence"><a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blink" >사업자정보확인</a></span>
                    </li>
                    <li>
                        부산지사 사업자등록번호 605-85-38384<br />
                        대구지사 사업자등록번호 504-85-41062
                    </li>
                    <li>
                        영업배상책임보험가입 총 20억원,<br />
                        인허가보증보험가입 5억원,<br />
                        한국관광협회중앙회 여행공제회 공제영업보증가입 10억원
                    </li>
                </ul>
                <ul id="bottomM">
                    <li class="tit pdt0">ADDRESS<span class="yellow_line"></span></li>
                    <li class="line pdt0">
                        <span class="phone">1544-2288</span><span class="email">master@ybtour.co.kr</span>
                    </li>
                    <li class="line">
                        <span class="txt">본사 : 서울특별시 중구 수표로 31, 노랑풍선빌딩</span>
                    </li>
                    <li class="line">
                        <span class="txt">부산지사 : 부산광역시 진구 중앙대로 708 부산 파이낸스센터 13층</span>
                    </li>
                    <li>
                        <span class="txt">대구지사 : 대구광역시 중구 달구벌대로 2095 11층 (삼성생명빌딩)</span>
                    </li>
                    <li class="copyright">
                        Copyright &copy; 2015 YBTOUR. All rights reserved.
                    </li>
                </ul>
                <ul id="bottomR">
                    <li class="tit">노랑풍선 SNS<span class="yellow_line"></span></li>
                    <li class="sns">
                        <span><a href="http://plus.kakao.com/home/dv8xogt8" target="_blank"><img src="/images/bottom_sns_cacao.png" alt="옐로아이디 (카카오톡)" /></a></span>                        
                        <span><a href="https://story.kakao.com/ch/ybtour" target="_blank"><img src="/images/bottom_sns03.png" alt="카카오스토리 바로가기" /></a></span>
                        <span><a href="https://ko-kr.facebook.com/yellowballoontour" target="_blank"><img src="/images/bottom_sns01.png" alt="페이스북 바로가기" /></a></span>
                        <span><a href="https://www.instagram.com/ybtour_official/" target="_blank"><img src="/images/bottom_sns06.png" alt="인스타그램 바로가기" /></a></span>					
                        <span><a href="http://blog.naver.com/yb_tour" target="_blank"><img src="/images/bottom_sns04.png" alt="블로그 바로가기" /></a></span>						
						<span><a href="http://post.naver.com/_ybtour" target="_blank"><img src="/images/bottom_sns_naver.png" alt="네이버포스트"  class="no" /></a></span>
                    </li>
                    <li class="selectBox">
						<div id="select_box">						
							<span class="blinds"></span>
							<select name="" id="sites"  title="여행시 꼭 참고할 사이트 링크">
								<option value="">여행시 꼭 참고할 사이트</option>
								<option value="http://www.0404.go.kr/">외교부 해외안전여행</option>
								<option value="http://www.ftc.go.kr">공정거래위원회</option>
								<option value="https://www.kca.go.kr/index.do">한국소비자원</option>
								<option value="http://www.kata.or.kr">한국여행업협회</option>
							</select> 
							<button id="gopage" type="button"  class="btn_gosite" title="새창으로 사이트 열기"></button>          
						</div>
						
                    </li>
                    
                </ul>

                <script type="text/javascript">
                	$( "#gopage" ).bind( "click", function( event ) {
	 					var url = $("#sites option:selected").val();
	 					window.open(url);			
					});
				</script>
               

                <ul id="mark">
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup1.html" onclick="showLayer(this);"><img src="/images/bottom_img01.png" alt="CCM" /></a></li>
                    <li><a href="http://www.kmac.co.kr/certify/cert_sys06.asp" target="_blank"><img src="/images/bottom_img09.png" alt="고객가치 최우수 상품" /></a></li>
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup2.html" onclick="showLayer(this);"><img src="/images/bottom_img02.png" alt="KS-WCI" /></a></li>
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup3.html" onclick="showLayer(this);"><img src="/images/bottom_img03.png" alt="KS-QEI" /></a></li>
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup4.html" onclick="showLayer(this);"><img src="/images/bottom_img07.png" alt="SCSI 대한민국 소셜미디어대상 1위" /></a></li>
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup5.html" onclick="showLayer(this);"><img src="/images/bottom_img06.png" alt="경영혁신형 중소기업 선정" /></a></li>
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup6.html" onclick="showLayer(this);"><img src="/images/bottom_img04.png" alt="서울특별시 일자리창출 우수기업선정 마크" /></a></li>
                    <li><a href="javascript:;" role-h="610" role-url="/html/awards_popup7.html" onclick="showLayer(this);"><img src="/images/bottom_img05.png" alt="취업하고 싶은 기업 정 마크" /></a></li>
               		<li><a href="http://www.smartoutbound.or.kr/guide/html/guideInfo4.do?menu_code=0000000016" target="_blank"><img src="/images/bottom_img08.png" alt="국외여행상품 정보제공 표준안 참여여행사 마크" /></a></li>
                </ul>

            </div><!--[[ bottom End ]]-->

        </div><!--[[ bottomWrap End ]]-->

    </footer><!--[[ footer End ]]-->

</div><!--[[ wrap End ]]-->  <script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 967993111;
var google_conversion_label = "XXSqCJHb4QgQl87JzQM";
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<div style="display: none">
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
</div>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/967993111/?value=1.00&amp;currency_code=KRW&amp;label=XXSqCJHb4QgQl87JzQM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
<!-- 2014.04.02 푸터 구글 스크립트 추가 --></body>
<!-- AceCounter Log Gathering Script -->
<!-- This script is for AceCounter START -->
<!-- AceCounter END -->

<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtp1.acecounter.com','8080','AM3A34627437260','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
<noscript><img src='http://gtp1.acecounter.com:8080/?uid=AM3A34627437260&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End --> 

<!-- AceClick script 추가  -->
<!-- AceClick WebSite Gathering Script V0.9.20131114 -->
<script language='javascript'>
	if(typeof(AMRS_GC)=='undefined'){
	 	var AMRS_O=[];var AMRS_CK = new Image();var AMRS_GC='AG5A385326230';var AMRS_GD='mrsg.aceclick.co.kr';var AMRS_GP='8080';var AMRS_TI=(new Date()).getTime();
	 	var AMRS_PR = location.protocol=="https:"?"https://"+AMRS_GD+":843":"http://"+AMRS_GD+":"+AMRS_GP; AMRS_CK.src = AMRS_PR+'/?cookie'; 
	 	if(typeof(Array.prototype.push)!='undefined'){ AMRS_O.push(AMRS_CK);}
	 	document.writeln("<scr"+"ipt type='text/Javascript' src='"+location.protocol+"//mrss.aceclick.co.kr/aceclick.js?rt="+AMRS_TI+"'></scr"+"ipt>");
	}
</script>
<!-- AceClick WebSite Gathering Script End V0.9.20131114 -->
<!-- AceCounter Log Gathering Script -->
<!-- Emforce ROI General Tag Start -->
<script type="text/javascript" src="/js/general_gd.js"></script>
<!-- Emforce ROI General Tag End -->

<script>
/* Facebook 앱등록 스크립트 */
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '604430829738046',
      xfbml      : true,
      version    : 'v2.7'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script></html>
