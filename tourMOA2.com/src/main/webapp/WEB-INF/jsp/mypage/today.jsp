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
	<title>노랑풍선 [거품없는 직판여행 NO.1]</title>
	<meta name="autocomplete" content="off" >
	<link rel="stylesheet" type="text/css" href="/search/ark/css/ark.css" media="screen" >
	<link rel="shortcut icon" href="/images/yb.ico" />	
	<script src="/js/jquery-1.11.2.min.js"></script>	
	<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(window).on('resize', function() {
			setMobileViewport();
		})
		.on('orientationchange', function(){
			setMobileViewport();
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
	<link rel="stylesheet" href="/css/mypage.css" />
	<script src="/js/jquery.simplemodal-1.4.4.js"></script>
	<script src="/js/jquery.validate.js"></script>
	<script src="/js/additional-methods.js"></script>
	<script src="/js/localization/messages_ko.js"></script> 
	<script src="/js/common.js"></script> 
	<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
	<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
	<script src="/js/sessionCheck.js"></script><!-- 새벽 배포이후 빼기로 -->
	<script src="/js/naverLogin_implicit-1.0.2.js"></script>
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
	<script src="/js/common.js"></script>
	<script src="/js/jquery.cookie.js" type="text/javascript"></script>    
    <script>
    	var todayX = 0;
		var totPicCnt = 0;
		var todayPage = 1;
		var pageUrlSplit = $(location).attr('pathname').split('/')[1];
		
	    $(document).ready(function(){
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
<div id="content">
<div id="wrap">
<!--[[ wrap Start ]]-->
	<header>	
	<script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
	<script type="text/javascript" src="/search/ark/js/ark.js" ></script>
    <script>
		function fnMenuSelect() {
		    //여행내역
		    
		    
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
                    <li class=""><p>여행상품<br />예약내역<br /><a href="/mypage/reserveList.do">0</a>건</p></li>                        
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
        <div class="tit today_tit" title="오늘 본 상품"><!-- [[ 오늘 본 상품 Start ]] -->
            <div class="t_btn_w">
            	<button type="button" name="btnCompare" id="btnCompare" role-w="1160" role-h="870" role-url="/mypage/compareMaster.do"  title="선택상품비교하기" class="t_btn">선택상품비교하기</button>
                <button type="button" id="btnDelete" class="t_btn mgr0" onclick="fnDelTodayList()">선택상품삭제</button>
            </div>
        </div> 
        <div class="intlist">
        	<ul class="dataNone">
                <li class="odd">
                    	오늘 본 상품이 없습니다.
                </li>
            </ul>
        </div><!--[[ 오늘 본 상품 End ]]-->
    </section><!--[[ content End ]]-->    
</div>
</div>