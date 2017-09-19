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
<script src="/js/sessionCheck.js"></script>
<script src="/js/naverLogin_implicit-1.0.2.js"></script>
<script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
<script type="text/javascript" src="/search/ark/js/ark.js" ></script>
<script src="//code.jquery.com/jquery-1.11.0.js"></script>
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
   <!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
<script type="text/javaScript">

$(document).ready(function(){	
	$(".cat > tbody > tr > th").on('click',function(){
		$(location).attr("href", $(this).children("a").attr("href"));
	});
	
	if ("false" =="true"){
		$(this).attr("role-w",550);
		$(this).attr("role-h",600);
		$(this).attr("role-url", "/mypage/findIdPwPop.do?custId=");
		showLayer($(this));
	}
	
	$("#btnCell").click(function(){
		
		var UserAgent = navigator.userAgent;
	    /* 모바일 접근 체크*/
	    // 모바일일 경우 (변동사항 있을경우 추가 필요)
	    if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
	   		 document.reqKMCISForm.target = '';
		}
	    // 모바일이 아닐 경우
	    else {	
	    	var kmcis = $('#frm').ybKmcis({
	    		returnUrl : '/mypage/findIdProc.do' 
	 		});
	 		kmcis.open();
	    }
		
	});	
	
	$("#btnIpin").click(function(){
		var UserAgent = navigator.userAgent;
	    /* 모바일 접근 체크*/
	    // 모바일일 경우 (변동사항 있을경우 추가 필요)
	    if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
	   		 document.reqKMCISForm.target = '';
		}
	    // 모바일이 아닐 경우
	    else {
	    	 var iPin = $('#frm').ybipin({ 
	 				returnUrl : '/mypage/findIdProc.do' 
	 		   });
	 		   iPin.open();
	    }
	});	
});

</script>
<script>
	function fnMenuSelect() {	    
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
<section id="content" class="contentSub">
<!--[[ content Start ]]-->
	<!-- <div class="tit findId_tit" title="아이디/비밀번호찾기"></div> -->	
	<table class="cat"><!--[[ tab Start ]]-->
	  <caption>아이디/비밀번호찾기</caption>
	    <tbody>
	        <tr>
	            <th scope="col" class="on"><a href="/mypage/findId.do">아이디찾기</a></th>
	            <th scope="col"><a href="/mypage/findPw.do">비밀번호찾기</a></th>
	        </tr>
	    </tbody>
	</table><!--[[ tab End ]]-->
	<!-- <form name="frm" id="frm" method="post" action="/icert/kmcisStep02.do"> -->
	<form name="frm" id="frm" method="post" >
	<input type="hidden" name="plusInfo" value="2" />
	<div class="certWrap"><!--[[ 인증방법선택 Start ]]-->
	    <div class="certType">
	        <div class="txt01">
	            <span class="sbj">휴대폰인증으로 찾기</span>
	            <span class="txt">본인 명의의 휴대폰으로만 인증이 가능하며,</span>
	            <span class="txt">휴대폰이 본인명의가 아닐 시에는 아이핀을 이용해주세요.</span>
	            <button type="button" name="btnCell" id="btnCell">휴대폰 인증하기</button>
	        </div>
	    </div>
	    <div class="certType no-bdr">
	        <div class="txt01">
	            <span class="sbj">아이핀(I-PIN)으로찾기</span>
	            <span class="txt">회원 가입 시 아이핀(I-PIN)으로 가입하신 회원님은</span>
	            <span class="txt">아이핀 인증을 통해 아이디 찾기를 진행해주세요.</span>
	            <button type="button" name="btnIpin" id="btnIpin">아이핀(I-PIN) 인증하기</button>
	        </div>
	    </div>
	</div><!--[[ 인증방법선택 End ]]-->
	</form>
</section>
<!--[[ content End ]]-->
</div>
<!--[[ wrap End ]]--> 
</div>

