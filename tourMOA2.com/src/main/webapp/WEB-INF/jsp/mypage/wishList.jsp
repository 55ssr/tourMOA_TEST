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
	<title>노랑풍선 [거품없는 직판여행 NO.1]</title>
	<link rel="shortcut icon" href="/images/yb.ico" />
	
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
	<script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
	<script type="text/javascript" src="/search/ark/js/ark.js" ></script>
	<script src="/js/jquery.cookie.js" type="text/javascript"></script>
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
		     $('.lnb02').addClass('lnb02 on'); $("ul.sub_2").css("display","block");          $('.sub02_01').addClass('sub02_01 on'); $('#lnb').show();
		    
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
	<script language="javascript">
		function fn_goDetail(wishUrl){
			$(location).attr("href", wishUrl );
		}
		
		$(document).ready(function(){	
			
			//선택상품삭제 하기
			$("#btnDelete").click(function(){
				
				var inputNum = $("input:checkbox[name='chk']").length;
				if(inputNum > 0){
					
					var checkedVal = "";
					var cnt = 0;
					
					$("input:checkbox[name='chk']:checked").each(function(){
						cnt++;
						checkedVal += ((checkedVal == "" ? "" : ",") + $(this).val());
					});			
					
					if(cnt == 0 ){
						alert("삭제할 상품을 선택하세요");
					}else{
						if(confirm("선택하신 상품을 삭제하시겠습니까?")){
							$(location).attr("href","/mypage/updateWishList.do?wishSepStr="+checkedVal);
						}					
					}
				}else{
					alert("삭제할 상품이 없습니다.");
				}
			});
			
			$("button[name='btnSchedule']").click(function(){
				var btnVal = $(this).attr('value');
				var webCls = btnVal.split(",")[0];
				
				if(webCls == 'B'){
					document.location.href='/product/detailFit.do?'+ btnVal.split(",")[1];
				}else{
					showLayer($(this));
				}			
			});		
			
			//예약마감
			$("button[name='btnClose").click(function(){
				alert("감사합니다. 예약이 마감되었습니다. \n담당자에게 전화문의바랍니다.");	
			});
		});
		
		//예약하기
		function doReserve(url){
			var starStrIndex = url.indexOf('?');
			var urlLength = url.length;
			var rervEvent = url.substring(parseInt(starStrIndex)+1, parseInt(urlLength)+1);
			
			
					document.location.href='/product/reserveStep01.do?'+rervEvent+'&nonCustYn=N';
				 
		}
	</script>
<div id="content">
<div id="wrap">
<!--[[ wrap Start ]]-->
	<header>
	<!--[[ header Start ]]-->
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
                    <li class=" sel"><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
                    <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                    <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                </ul>
            </div>
        </div><!--[[ 메인상단 End ]]-->
   	</section>
    <section id="content" class="contentSub"><!--[[ content Start ]]--> 
        <div class="tit interest_tit" title="관심상품"><!--[[ 관심상품 Start ]]-->
            <div class="t_btn_w">
                <!-- <button type="button" id="btnCompare" class="t_btn" >선택상품비교</button> -->
                <button type="button" id="btnDelete" class="t_btn mgr0">선택상품삭제</button>
            </div>
        </div>
        
        <div class="intlist">
       		<ul class="dataNone">
                <li class="odd">
                    	등록된 관심상품이 없습니다.
                </li>
            </ul>	    	
    	</div><!--[[ 관심상품 End ]]-->
		<!-- <div class="morelist"><button>더보기 +</button></div> -->
    </section><!--[[ content End ]]--><script src="/js/common.js"></script>  
</div>
</div> 
