<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
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
	<meta name="autocomplete" content="off" >
	<link rel="stylesheet" type="text/css" href="/search/ark/css/ark.css" media="screen" >
	<title>노랑풍선 [거품없는 직판여행 NO.1]</title>
	<link rel="shortcut icon" href="/images/yb.ico" />
	<script src="/js/common.js"></script>
	<script src="/js/jquery-1.11.2.min.js"></script>
	
	<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(window).on('resize', function() {
			setMobileViewport();
		})
		.on('orientationchange', function(){
			setMobileViewport();
	// 		if(window.orientation == 0) {	// Portrait
	// 		} else {	// Landscape
	// 		}
		});
	
		//PC링크 클릭에 대한 파라미터
	   	var strPC = getParameterByName("pc");
		if(isMobile() && strPC == "Y") {
			setMobileViewport();
		}
	</script>

	<script type="text/javascript">
		var filter = "win16|win32|win64|mac|macintel";
		
		if( navigator.platform ) {
			if( filter.indexOf(navigator.platform.toLowerCase())<0 ) {
				goMobileVersion();
		    }
		}
	</script>
	<link rel="stylesheet" href="/css/jquery-ui.css" /> 
	<script src="/js/jquery-ui.js"></script>
	<!--[if lt IE 9]><script src="/js/html5.js"></script><![endif]-->
	<script src="/js/jquery.cookie.js" type="text/javascript"></script>
	
	<script src="/js/ui.js" type="text/javascript"></script>
	<script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
	<script type="text/javascript" src="/search/ark/js/ark.js" ></script>
	<link rel="stylesheet" href="/css/mypage.css" />
    <script src="/js/jquery.simplemodal-1.4.4.js"></script>
    <script src="/js/jquery.validate.js"></script>
    <script src="/js/additional-methods.js"></script>
    <script src="/js/localization/messages_ko.js"></script> 
    <script src="/js/common.js"></script> 
    <script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
    <script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
	<script src="/js/sessionCheck.js"></script><!-- 새벽 배포이후 빼기로 -->
	<script src="/js/naverLogin_implicit-1.0.2.js"></script><!-- Facebook Pixel Code --> 
	<script>
		!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod? 
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n; 
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0; 
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window, 
		document,'script','//connect.facebook.net/en_US/fbevents.js'); 
		
		fbq('init', '1352665691429381'); 
		fbq('track', "PageView");	
	</script>
	<script>
		function fnMenuSelect() {
		    //여행내역
		    
		    
		    //관심내역
		    
		    
		    //참여내역
		     $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");         $('.sub03_02').addClass('sub03_02 on'); $('#one').show();
		    
		    //추가결제수단
		    
		    
		    //개인정보
		    
		}
		
		$( document ).ready(function() {
		    fnMenuSelect();
		    $('#lnb').mouseleave(function(){
		        setTimeout(function() {
		            $("#one > li").removeClass('on'); // 1depth 초기화
		            $("ul.sub").css("display","none"); // 2depth 사라짐
		            fnMenuSelect();
		        }, 2000);
		    });
		});
	</script>
	<script type="text/javaScript" language="javascript" defer="defer">
		$(document).ready(function(){
			
			//검색
			$("#btnSearch").click(function(){
				fn_submit();
			});
			
			//기간별
			$("button[name='range']").click(function(){
				$("input:hidden[name='searchMonth']").val($(this).val());
				fn_submit();
			});				
		});			
		function fn_submit(){
		
		var fromYY = $("#fromYY option:selected").val();
		var fromMM = $("#fromMM option:selected").val();
		var fromDD = $("#fromDD option:selected").val();
		
		var toYY = $("#toYY option:selected").val();
		var toMM = $("#toMM option:selected").val();
		var toDD = $("#toDD option:selected").val();
		
		if ($.type(fromYY) == "undefined" )	fromYY = "";
		if ($.type(fromMM) == "undefined" )	fromMM = "";
		if ($.type(fromDD) == "undefined" )	fromDD = "";
		
		if ($.type(toYY) == "undefined" )	toYY = "";
		if ($.type(toMM) == "undefined" )	toMM = "";
		if ($.type(toDD) == "undefined" )	toDD = "";
		
		
		//시작일
		if(fromYY != "" && fromMM != "" && fromDD != ""){
			var searchStDt = "";
							
			fromMM = (fromMM.length == 1) ? "0" + fromMM : fromMM;
			fromDD = (fromDD.length == 1) ? "0" + fromDD : fromDD;
			
			searchStDt = fromYY + fromMM + fromDD;
			
			$("input:hidden[name='searchStDt']").val(searchStDt);
		}else{
			$("input:hidden[name='searchStDt']").val("");
		}
		
		//종료일
		if(toYY != "" && toMM != "" && toDD != ""){
			var searchEnDt = "";
							
			toMM = (toMM.length == 1) ? "0" + toMM : toMM;
			toDD = (toDD.length == 1) ? "0" + toDD : toDD;
			
			searchEnDt = toYY + toMM + toDD;
			
			$("input:hidden[name='searchEnDt']").val(searchEnDt);
		}else{
			$("input:hidden[name='searchEnDt']").val("");
		}
		
		$("#searchForm").submit();
	}
			
	</script>
<div id="content">
<div id="wrap"><!--[[ wrap Start ]]-->
	<header><!--[[ header Start ]]-->
    <nav id="lnb_mp"><!--[[ LNB Start ]]-->
       <ul id="one">
           <li class="tit"><span><a href="/mypage/main.do"></a></span></li>
           <li class="lnb01"><a href="#wrap" >여행내역</a>
               <ul class="sub sub_1">
                   <li class="sub01_01"><a href="/mypage/reserveList.do" >여행상품예약</a></li>
                   <li class="sub01_02"><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_blank'); return false;" >해외항공권 예약내역 </a></li>
                   <!-- <li class="sub01_02"><a href="http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00" target="_blank">항공권예약</a></li> 개발 -->
              	   <li class="sub01_03"><a href="#" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_blank'); return false;" >국내항공권 예약내역</a></li>	
               </ul>
           </li>
           <li class="lnb02"><a href="#wrap" >관심내역</a>
               <ul class="sub sub_2">
                   <li class="sub02_01"><a href="/mypage/wishList.do" >관심상품</a></li>
                   <li class="sub02_02"><a href="/mypage/today.do" >오늘 본 상품</a></li>
               </ul>
           </li>
           <li class="lnb03"><a href="#wrap" >참여내역</a>
               <ul class="sub sub_3">
                   <li class="sub03_01"><a href="inquiryList.do" >상담문의</a></li>
                   <li class="sub03_02"><a href="/mypage/myPostList.do" >커뮤니티</a></li>
                   <li class="sub03_03 none"><a href="/mypage/myEventList.do" >이벤트참여</a></li>
               </ul>
           </li>
           <li class="lnb04"><a href="#wrap" >추가결제수단</a>
               <ul class="sub sub_4">
                   <li class="sub04_01"><a href="/mypage/giftcardBuy.do" >여행상품권</a></li>
               </ul>
           </li>
           <li class="lnb05"><a href="#wrap" >개인정보</a>
               <ul class="sub sub_5">
                   <li class="sub05_01"><a href="/mypage/accountPwReaffirm.do" >개인정보관리</a></li>
                   <li class="sub05_02"><a href="/mypage/accountPwUpdate.do" >비밀번호변경</a></li>
                   <li class="sub05_03"><a href="/mypage/accountWithdrawal.do" >회원탈퇴</a></li>
               </ul>
           </li>
       </ul>
   </nav><!--[[ LNB End ]]-->
   </header><!--[[ header End ]]-->   
   <!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
   <section id="content" class="contentSub"><!--[[ content Start ]]-->
   <div class="sec_wrap sec_01"><!--[[ 메인상단 Start ]]-->
       <div class="para_01">
           <p>안녕하세요. 즐거운 여행 되세요.</p>
           <div class="btnArea">
               <span class="btn"><a href="/mypage/accountPwReaffirm.do">개인정보관리</a></span>
               <span class="btn"><a href="/mypage/accountPwUpdate.do">비밀번호변경</a></span>
           </div>
       </div>
       <div class="para_02">
           <ul> 
               <li class=""><p>여행상품<br />예약내역<br /><a href="/mypage/reserveList.do">0</a>건</p></li>                        
             	<li><p>해외항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">0</a>건</p></li>
               <li><p>국내항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;" >0</a>건</p></li>
               <li class=""><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
               <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
               <li class="last sel"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
           </ul>
       </div>
   	</div><!--[[ 메인상단 End ]]-->
	</section>
	<section id="content" class="contentSub"><!--[[ content Start ]]-->
    <div class="tit community_tit" title="나의 커뮤니티"><span class="community_tit_txt">(총 <span class="mint14">0</span>건)</span></div>

	<form name="searchForm" id="searchForm" action="/mypage/myPostList.do" method="post"">
	<input type="hidden" name="searchMonth" id="searchMonth" value="" />
	<input type="hidden" name="searchStDt" id="searchStDt" value="" />
	<input type="hidden" name="searchEnDt" id="searchEnDt" value="" />	
    <div class="search_area"><!--[[ 문의내역검색 Start ]]-->
        <ul>
            <li class="head"><label for="selType">구분</label></li>
            <li class="control">
				<select name="searchReviewCd" id="searchReviewCd" class="selType">
	                <option value="">전체보기</option>
	                <option value="AFTER" >다녀온 여행후기</option>
	                <option value="BEFORE" >여행수다</option>
			   	</select>
            </li>
            <li class="head"><label for="1m">기간별</label></li>
            <li class="control">
	            <button type="button" name="range" id="1m" title="1개월" value="30" >1개월</button>
	            <button type="button" name="range" id="3m" title="3개월" value="90" >3개월</button>
	            <button type="button" name="range" id="mAll" class="last on" title="전체보기" value="" >전체보기</button>
            </li>
            <li class="head"><label for="fromYY">일자별</label></li>
            <li class="mmdd">            
               	<select name="fromYY" id="fromYY" class="selYY">
					<option value="" >선택</option>
					<option value="2017" >2017</option>
					<option value="2016" >2016</option>
					<option value="2015" >2015</option>
					<option value="2014" >2014</option>
					<option value="2013" >2013</option>
					<option value="2012" >2012</option>
					<option value="2011" >2011</option>
					<option value="2010" >2010</option>
					<option value="2009" >2009</option>
					<option value="2008" >2008</option>
					<option value="2007" >2007</option>
					<option value="2006" >2006</option>
					<option value="2005" >2005</option>
					<option value="2004" >2004</option>
					<option value="2003" >2003</option>
					<option value="2002" >2002</option>
					<option value="2001" >2001</option>
					<option value="2000" >2000</option>
					<option value="1999" >1999</option>
					<option value="1998" >1998</option>
					<option value="1997" >1997</option>
					<option value="1996" >1996</option>
					<option value="1995" >1995</option>
					<option value="1994" >1994</option>
					<option value="1993" >1993</option>
					<option value="1992" >1992</option>
					<option value="1991" >1991</option>
					<option value="1990" >1990</option>
				</select>
				<select name="fromMM" id="fromMM" class="selMD" title="검색시작월">
					<option value="" >선택</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
					<option value="10" >10</option>
					<option value="11" >11</option>
					<option value="12" >12</option>
				</select>
				<select name="fromDD" id="fromDD" class="selMD" title="검색시작일">
					<option value="" >선택</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
					<option value="10" >10</option>
					<option value="11" >11</option>
					<option value="12" >12</option>
					<option value="13" >13</option>
					<option value="14" >14</option>
					<option value="15" >15</option>
					<option value="16" >16</option>
					<option value="17" >17</option>
					<option value="18" >18</option>
					<option value="19" >19</option>
					<option value="20" >20</option>
					<option value="21" >21</option>
					<option value="22" >22</option>
					<option value="23" >23</option>
					<option value="24" >24</option>
					<option value="25" >25</option>
					<option value="26" >26</option>
					<option value="27" >27</option>
					<option value="28" >28</option>
					<option value="29" >29</option>
					<option value="30" >30</option>
					<option value="31" >31</option>
				</select> 
				~
				
				<select name="toYY" id="toYY" class="selYY" title="검색종료년">
					<option value="" >선택</option>
					<option value="2017" >2017</option>
					<option value="2016" >2016</option>
					<option value="2015" >2015</option>
					<option value="2014" >2014</option>
					<option value="2013" >2013</option>
					<option value="2012" >2012</option>
					<option value="2011" >2011</option>
					<option value="2010" >2010</option>
					<option value="2009" >2009</option>
					<option value="2008" >2008</option>
					<option value="2007" >2007</option>
					<option value="2006" >2006</option>
					<option value="2005" >2005</option>
					<option value="2004" >2004</option>
					<option value="2003" >2003</option>
					<option value="2002" >2002</option>
					<option value="2001" >2001</option>
					<option value="2000" >2000</option>
					<option value="1999" >1999</option>
					<option value="1998" >1998</option>
					<option value="1997" >1997</option>
					<option value="1996" >1996</option>
					<option value="1995" >1995</option>
					<option value="1994" >1994</option>
					<option value="1993" >1993</option>
					<option value="1992" >1992</option>
					<option value="1991" >1991</option>
					<option value="1990" >1990</option>
				</select>
				<select name="toMM" id="toMM" class="selMD" title="검색종료월">
					<option value="" >선택</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
					<option value="10" >10</option>
					<option value="11" >11</option>
					<option value="12" >12</option>
				</select>
				<select name="toDD" id="toDD" class="selMD" title="검색종료일">
					<option value="" >선택</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
					<option value="10" >10</option>
					<option value="11" >11</option>
					<option value="12" >12</option>
					<option value="13" >13</option>
					<option value="14" >14</option>
					<option value="15" >15</option>
					<option value="16" >16</option>
					<option value="17" >17</option>
					<option value="18" >18</option>
					<option value="19" >19</option>
					<option value="20" >20</option>
					<option value="21" >21</option>
					<option value="22" >22</option>
					<option value="23" >23</option>
					<option value="24" >24</option>
					<option value="25" >25</option>
					<option value="26" >26</option>
					<option value="27" >27</option>
					<option value="28" >28</option>
					<option value="29" >29</option>
					<option value="30" >30</option>
					<option value="31" >31</option>
				</select>
            </li>
			<li class="control mg0">
            <button type="button" name="btnSearch" id="btnSearch" class="cmd">검색</button></li>
        </ul> 
    </div><!--[[ 문의내역검색 End ]]-->       
    </form>

    <div class="board_area"><!--[[ board area Start ]]-->
        <table>
            <caption>여행이야기내역</caption>
            <colgroup>
                <col class="type">
                <col class="subject">
                <col class="dt">
                <col class="aq">
            </colgroup>
            <tbody>
            <tr>
            <th scope="col">구분</th>
            <th scope="col">제목</th>
            <th scope="col">등록일</th>
            <th scope="col">조회수</th>
            </tr>
            </tbody>
        </table>
    </div><!--[[ board area End ]]-->
    <div class="board_navi_area"><!--[[ board navi Start ]]-->
        <span class="paging">
            <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class="next">다음</span><span class="last">&gt;</span></span>         
    </div><!--[[ board navi End ]]-->
    <div class="footBox">
        <div class="paraW01">
            <span>베스트 여행이야기에 도전하세요!</span>
            <span>월 1회 베스트 여행이야기를 선정하여 소정의 상품을 드립니다.</span>
        </div>
        <div class="paraW02"><a href="/customer/episodeList.do">여행이야기 바로가기</a>&nbsp;&gt;</div>
    </div>
</section>
</div>
</div>