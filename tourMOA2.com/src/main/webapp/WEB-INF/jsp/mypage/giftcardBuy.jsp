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
	<meta name="autocomplete" content="off" >
	<link rel="stylesheet" type="text/css" href="/search/ark/css/ark.css" media="screen" >
	<title>투어모아 [거품없는 직판여행 NO.1]</title>
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
	<link rel="stylesheet" href="/css/mypage.css" />

    <script src="/js/jquery.simplemodal-1.4.4.js"></script>
    <script src="/js/jquery.validate.js"></script>
    <script src="/js/additional-methods.js"></script>
    <script src="/js/localization/messages_ko.js"></script> 
    <script src="/js/common.js"></script> 
    <script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
    <script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
    <script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
	<script type="text/javascript" src="/search/ark/js/ark.js" ></script>
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
		<script>	
			$(document).ready(function(){
				
				$(".cat_area > tbody> tr > th").click(function(){
					
					$(".cat_area > tbody> tr > th").removeClass("on");
					$(this).addClass("on");
				})
				
			});
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
                    <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                </ul>
            </div>
        </div><!--[[ 메인상단 End ]]-->
   	</section>   	
   	<section id="content" class="contentSub"><!--[[ content Start ]]-->

       <div class="tit gift_tit" title="여행상품권안내"></div>

       <div class="giftcert_info">
           <p class="para01">가장특별한 사람에게 품격있는 선물을<br />투어모아이 준비한 여행 상품권으로 설레임과 소중한 마음을 전달하세요</p>
           <span class="yl_box">문의처 (02)2022-7212</span>

           <table class="cat_area"><!--[[ tab Start ]]-->
               <caption>여행상품권탭</caption>
               <tbody>
               <tr>
                   <th scope="col" class="on"><a href="#wrap">구입안내</a></th>
                   <th scope="col" class=""><a href="#wrap">사용안내</a></th>
                   <th scope="col" class="last"><a href="#wrap">표준약관</a></th>
               </tr>
               </tbody>
           </table>

           <div id="gift_info_1" class="gift_info_tab">
               <span class="mTit">구입안내</span>
               <span class="mparTit">상품권 소개</span>
               <ul>
                   <li><span class="para01">투어모아 여행상품권은 여행만의 설레고 특별한 경험을 전달하는 뜻 깊은 상품권으로 ㈜투어모아의 다양한 여행상품에 사용하실 수 있습니다.<br />투어모아 여행상품권은 10만원, 50만원, 100만원 총 3종이 준비되어 있습니다.
                   </span></li>
                   <li><img src="/images/customer/gift_cert.jpg" alt="여행상품권"></li>
               </ul>
               <span class="mparTit">상품권 구입처</span>
               <ul>
                   <li>- 직접구매 : 투어모아본사</li>
                   <li>- 전화주문 : 02-2038-7902 (담당자 투어모아 경영지원본부 황혜지)</li>
                   <li>- 온라인구매는 불가능합니다.</li>
               </ul>
               <span class="mparTit">개인회원</span>
               <ul>
                   <li>입금은 현금 및 수표만 가능합니다. (현금 입금 시 당일발급/수표 입금 시 익일 발급)상품권은 개인카드결제가 불가능합니다.</li>
               </ul>
               <span class="mparTit">법인회원</span>
               <ul>
                   <li>입금은 현금, 수표, 법인카드 결제가 가능합니다. (현금 입금 시 당일발급/수표 입금 시 익일발급)</li>
               </ul>
               <span class="mparTit">상품권 수령</span>
               <ul>
                   <li>투어모아 본사를 통한 내방 수령을 원칙으로 하고 있습니다.</li>
               </ul>
           </div>
           <div id="gift_info_2" class="gift_info_tab">
               <span class="mTit">사용안내</span>
               <span class="parTit">상품권 사용 안내</span>
               <ul>
                   <li><span class="para01">투어모아 여행상품권은 ㈜투어모아 상품 구매 시 사용하실 수 있습니다. 단, 투어모아 홈페이지에 연동된 타사 상품은 사용불가)<br /> 다양한 상품권 사용시에는 상품권 원본을 전달해주셔야 합니다. (상품권 번호, 유효기간 확인)
                   </span></li>
               </ul>
               <span class="parTit">상품권 사용방법</span>
               <div class="gift_diagram">
                   <ul class="icon_wrap">                                                                                                                         
                       <li class="st01"><span>원하시는 상품을 예약하시고<br />담당자 상담 시 상품권여부<br />및 금액을 제시합니다.</span></li>     
                       <li class="arr"></li>                                                                                                    
                       <li class="st02"><span>담당자 상담 후 직접방문<br />혹은 우편으로 상품권 원본을<br />담당자에게전달합니다.</span></li>      
                       <li class="arr"></li>                                                                                                    
                       <li class="st03"><span>수령된 상품권 정보를 바탕으로<br />담당자에게 고객님의<br />최종 결제금액 및 관련사항에 대한<br />안내를 받으실 수 있습니다.</span></li>
                   </ul>                                                                                                                        
               </div>
               <span class="parTit">상품권 사용시 유의사항</span>
               <ul>
                   <li>투어모아 상품권은 할인 판매를 하지 않으며, 당사 할인쿠폰 및 각종 할인이벤트가 적용되지 않습니다.<br />
                   	투어모아 상품권의 유효기간은 발행일로부터 5년(증정용의 경우 1년)입니다.
                   </li>
               </ul>
           </div>
           <div id="gift_info_3" class="gift_info_tab">
               <span class="subTit">표준약관</span>
               <span class="pol_head">제 1 조 목적</span>
               <span class="pol_desc">이 약관은 ㈜투어모아(이하 ‘갑’이라고 한다)이 발행한 상품권을 그 소지자(이하 ‘을’이라고 한다)가 사용함에 있어 을과 갑 및 갑과 대리점 계약을 맺은 자(이하 ‘병’이라고 한다) 간에 준수할 사항을 규정한다.</span>
               <span class="pol_head">제 4 조 상품권의 사용</span>
               <span class="pol_desc">①을이 상품권 금액 또는 수량의 범위 내에서 상품 등의 제공을 요구하는 경우 갑 또는 병은 즉시 해당 상품을 제공한다.</span>
               <span class="pol_desc">②을은 갑 또는 병의 매장에서 판매하는 상품 등에 대하여 이벤트기간을 포함하여 언제든지 상품권을 사용할 수 있으며, 단 사전 상품권면에 기재한 특정 대리점 또는 이벤트  상품 등에 대하여 상품권의 사용을 제한할 수 있다.</span>
               <span class="pol_desc">③갑의 모든 여행상품(항공권 포함)에 대해서는 현금구매 고객과 동등한 입장에서 상품판매를 한다.</span>
               <span class="pol_desc">④갑이 발행하는 ‘상품권’은 성수기 및 비수기 등의 사용 제약을 할 수 있다.</span>                  
               <span class="pol_head">제 5 조 상품권의 훼손 및 분실</span>
               <span class="pol_desc">①을이 상품권 금액 또는 수량의 범위 내에서 상품 등의 제공을 요구하는 경우 갑 또는 병은 즉시 해당 상품을 제공한다.</span>
               <span class="pol_desc">②을은 갑 또는 병의 매장에서 판매하는 상품 등에 대하여 이벤트기간을 포함하여 언제든지 상품권을 사용할 수 있으며, 단 사전 상품권면에 기재한 특정 대리점 또는 이벤트 상품 등에 대하여 상품권의 사용을 제한할 수 있다.</span>
               <span class="pol_desc">③갑의 모든 여행상품(항공권 포함)에 대해서는 현금구매 고객과 동등한 입장에서 상품판매를 한다.</span>
               <span class="pol_desc">④갑이 발행하는 ‘상품권’은 성수기 및 비수기 등의 사용 제약을 할 수 있다.</span>
               <span class="pol_head">제 6 조 사용기간</span>
               <span class="pol_desc">갑을 통해 발행되는 상품권의 유효기간은 다음과 같다.</span>
               <span class="pol_desc">①상품권 : 발행일로부터 만 05년으로 한다.</span>
               <span class="pol_desc">②증정용 : 발행일로부터 만 01년으로 한다.</span>
               <span class="pol_desc">③여행권 : 발행일로부터 만 05년으로 한다. 다만 무상 교부하는 ‘여행권’은 만 01년으로 한다.</span>
               <span class="pol_head">제 7 조 상품권의 환불처리</span>
               <span class="pol_desc">①상품권(증정용, 여행권 포함)은 현금으로 환불하지 않는다.</span>
               <span class="pol_desc">②상품권(증정용은 제외)의 차액 환불은 액면 가격의 60% 이상(1만원권의 경우 80% 이상)사용 시 그 잔액을 현금으로 반환한다.</span>
               <span class="pol_head">제 10 조 기타</span>
               <span class="pol_desc">①본 약관에 명시되지 아니한 사항 또는 약관 해석 상 다름이 있는 경우에는 을과 갑 또는 병의 합의에 의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따른다.</span>
               <span class="pol_desc">②재판관할은 갑의 관할 법원으로 한다.</span>
               <span class="pol_desc">③상품권 구매 시 세금계산서, 계산서, 현금영수증은 발행하지 않는다.다만 상품권 소지자가 사용할 때 소지자에게 현금영수증을 발행할 수 있다.</span>
               <span class="pol_desc">④상품권 구매 시 개인은 현금으로만 구매가 가능하고, 법인의 경우 현금 또는 법인카드로 구매가 가능하다.</span>
           </div>
       </div>
   </section><!--[[ content End ]]-->
</div>
</div>