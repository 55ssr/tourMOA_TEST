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
	<meta name="autocomplete" content="off" />
	<link rel="stylesheet" type="text/css" href="/search/ark/css/ark.css" media="screen" />
	<link rel="shortcut icon" href="/images/yb.ico" />
	<link rel="stylesheet" href="/css/jquery-ui.css" />
	<link rel="stylesheet" href="/css/mypage.css" />
	<script src="/js/common.js"></script> 
	<script src="/js/jquery-ui.js"></script>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(window).on('resize', function() {
			setMobileViewport();
		})
		.on('orientationchange', function(){
			setMobileViewport();
		});
	
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
	<!-- Facebook Pixel Code --> 
	<script>
		!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod? 
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n; 
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0; 
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window, 
		document,'script','//connect.facebook.net/en_US/fbevents.js'); 
		
		fbq('init', '1352665691429381'); 
		fbq('track', "PageView");		
	</script> 
	<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1352665691429381&ev=PageView&noscript=1" /></noscript> 
	<!-- End Facebook Pixel Code --> 
	<!-- Google Analytics -->
	<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		ga('create', 'UA-38764293-1', 'auto');
		ga('send', 'pageview');
	
	</script>
	<!-- Google Analytics -->
	<script type="text/javascript">
		$(document).ready(function(){
				popRecommendStr(); // 추천검색어 호출
				
				$(".top_banner_close").on('click', function(){
					mainTodayChk();
				});
				
				// 쿠키설정에 따른 웹상단배너 노출여부 결정
				var cookiedata = document.cookie;
			    if( cookiedata.indexOf("ybtourMainPopup=done") < 0 ) { 
			    	$(".top_main_banner").show();
			    } else {
			    	$(".top_main_banner").hide();
			    }
			
			});
	
			function setMainCookie(name, value, expiredays){
				var todayDate = new Date(); 
				todayDate.setDate(todayDate.getDate() + expiredays); 
				document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
			}
	
			function mainTodayChk(){
				setMainCookie('ybtourMainPopup', 'done', 1); 
				$(".top_main_banner").hide();
			}
	</script>
	<script>
			function fnMenuSelect() {
	    //여행내역
	            $('.lnb01').addClass('lnb01 on'); $("ul.sub_1").css("display","block");
	            $('.sub01_01').addClass('sub01_01 on'); $('#one').show();
	    
	    //관심내역
	    
	    
	    //참여내역
	    
	    
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
			$(".cat_area > tbody > tr > th").click(function(){
				$(location).attr("href", $(this).children("a").attr("href"));
			});
			//검색
			$("#btnSearch").click(function(){
				fn_submit();
			});
			
			//기간별
			$("button[name='range']").click(function(){
				$("input:hidden[name='searchMonth']").val($(this).val());
				//$(location).attr('href','/mypage/reserveList.do?searchMonth='+$(this).val());
				
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
	
		function goView(rervNo, rervFlag){
			//수정 2017.01.31 GET -> POST
				$("	#rervNo").val(rervNo);
				$("	#rervFlag").val(rervFlag);
				
				if (rervFlag == "R"){
					$("#searchForm").attr("action", "/mypage/reserveView.do").submit();	
				}else{
					$("#searchForm").attr("action", "/mypage/reserveCancelView.do").submit();
				}
		}
	
		function modalPopup(url){
		
			var path = ($(location).attr('pathname')).split('/');
			if(path[1].indexOf('mypage') > -1 ){
				"http://" + $(location).attr('host') + "/" + url
			}
			//window.showModalDialog(url, window,  "dialogWidth:520px; dialogHeight:1100px; center:yes; help:no; status:no; scroll:yes; resizable:no;" );
			window.open(url, window,  "width=500px, height=1000px, center=yes, help=no, status=no, scroll=yes, resizable=no");
		}	
	</script>
<div id="content">
<div id="wrap"><!--[[ wrap Start ]]-->
	<header><!--[[ header Start ]]-->
	<!--[[ skip navigation Start ]]-->
        <p id="skipNavi"><a href="#content" >메뉴 건너뛰고 본문 바로가기</a></p>    

    <nav id="lnb_mp"><!--[[ LNB Start ]]-->
           <ul id="one">
               <li class="tit"><span><a href="/mypage/main.do"></a></span></li>
               <li class="lnb01"><a href="#wrap" >여행내역</a>
                   <ul class="sub sub_1">
                       <li class="sub01_01"><a href="/mypage/reserveList.do" >여행상품예약</a></li>
                       <li class="sub01_02"><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_blank'); return false;" >해외항공권 예약내역 </a></li>
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
                    <li class=" sel"><p>여행상품<br />예약내역<br /><a href="/mypage/reserveList.do">0</a>건</p></li>                        
                  	<li><p>해외항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">0</a>건</p></li>
                    <li><p>국내항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;" >0</a>건</p></li>
                    <li class=""><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
                    <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                    <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                </ul>
            </div>
        </div><!--[[ 메인상단 End ]]-->
   </section>
   <section id="content" class="contentSub"><!--[[ content Start ]]-->
   		<div class="tit res_tit" title="여행예약내역"></div>

		<form name="searchForm" id="searchForm" action="/mypage/reserveList.do" method="post">
		<input type="hidden" name="searchMonth" id="searchMonth" value="" />
		<input type="hidden" name="searchStDt" id="searchStDt" value="" />
		<input type="hidden" name="searchEnDt" id="searchEnDt" value="" />
		<input type="hidden" name="rervFlag"  id="rervFlag" value="R" />
		<input type="hidden" name="nonCustYn" id="nonCustYn" value="N" />
		<input type="hidden" name="rervNo" id="rervNo" value="" />
		
        <table class="cat_area"><!--[[ tab Start ]]-->
          <caption>여행예약내역 카테고리</caption>
            <tbody>
                <tr>
                    <th scope="col" class="on">
	                    <a href="/mypage/reserveList.do?searchMonth=&searchStDt=&searchEnDt=&rervFlag=R" >여행상품 예약내역 (0건)</a>
                    </th>
                    <th scope="col" >
	                    <a href="/mypage/reserveList.do?searchMonth=&searchStDt=&searchEnDt=&rervFlag=F" >여행상품 취소내역 (0건)</a>
                    </th>
                      <th scope="col" >
	                    <a href="#" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">해외항공권 예약내역(0건)
	                    </a>
                    </th>
                   <th scope="col" >
	                    <a href=" #" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;">
	                    	국내항공권 예약내역 (0건)
	                    </a>
                    </th>
                </tr>
            </tbody>
        </table><!--[[ tab End ]]-->
		
        <div class="search_area"><!--[[ 문의내역검색 Start ]]-->
            <ul>
            <span class="floatR">
                <li class="head"><label for="1m">기간별</label></li>
                <li class="control">
                    <button type="button" name="range" id="1m" title="1개월" value="30" >1개월</a></button>
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
                	<button type="button" name="btnSearch" id="btnSearch" class="cmd">검색</button>
               	</li>
            </span>
            </ul>
        </div><!--[[ 예약내역검색 Start ]]-->
        
        </form>

        <div class="board_area"><!--[[ board area Start ]]-->

            <table>
                <caption>여행예약내역</caption>
                <colgroup>
					<col style="width: 110px;">
					<col style="width: 310px;">
					<col style="width: 90px;">
					<col style="width: 60px;">
					<col style="width: 120px;">
					<col style="width: 120px;">
					<col style="width: 130px;">
					<col style="width: 140px;">
					<col style="width: 140px;"> 
                </colgroup>
                <tbody>
                <tr>
	                <th scope="col">예약일자</th>
	                <th scope="col">상품명</th>
	                <th scope="col">출발일</th>
	                <th scope="col">인원</th>
	                <th scope="col">총금액</th>
	                <th scope="col">남은금액</th>
	                <th scope="col">진행상황</th>
	                <th scope="col">면세점 교환번호</th>
			        <th scope="col">선불카드 교환권</th>                
                </tr>
                <tr>
			      	<td colspan="9" >예약(취소)하신 여행 내역이 없습니다. 거품없는 여행 노랑풍선과 즐거운 여행을 함께하세요.</td>     
		        </tr>      
			     </tbody>
            </table>
        </div><!--[[ board area End ]]-->
        
        <div class="board_navi_area"><!--[[ board navi Start ]]-->
	        <span class="paging">
	            <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class="next">다음</span><span class="last">&gt;</span></span>
    	</div><!--[[ board navi End ]]-->
    </section>
</div>
</div>