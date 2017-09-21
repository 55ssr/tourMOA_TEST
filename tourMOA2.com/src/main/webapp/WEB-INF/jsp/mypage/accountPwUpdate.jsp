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
	<meta name="autocomplete" content="off" >
	<link rel="stylesheet" type="text/css" href="/search/ark/css/ark.css" media="screen" >
	<link rel="shortcut icon" href="/images/yb.ico" />
	<link rel="stylesheet" href="/css/mypage.css" />
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
	<link rel="stylesheet" href="/css/jquery-ui.css" /> 
	<script src="/js/jquery-ui.js"></script>
	<script src="/js/jquery.cookie.js" type="text/javascript"></script>
	<script src="/js/ui.js" type="text/javascript"></script>
	<script type="text/javascript" src="/search/ark/js/beta.fix.js" ></script>
	<script type="text/javascript" src="/search/ark/js/ark.js" ></script>	
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
	<script>
		function fnMenuSelect() {
		    //여행내역
		    
		    
		    //관심내역
		    
		    
		    //참여내역
		    
		    
		    //추가결제수단
		    
		    
		    //개인정보
		     $('.lnb05').addClass('lnb05 on'); $("ul.sub_5").css("display","block");       $('.sub05_02').addClass('sub05_02 on'); $('#one').show();
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
                        <li class=""><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
                        <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                        <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                    </ul>
                </div>
            </div><!--[[ 메인상단 End ]]-->
       </section>
   <script type="text/javaScript" language="javascript" defer="defer">

$(document).ready(function(){
	
	
	$("#newPw1").focusout(function(){
		var cnt = 0;
		var format1 = /[0-9]/;
	    if(format1.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('숫자');
	    }
	    var format2 = /[a-z]/;
	    if(format2.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('소문자');
	    }
	    var format3 = /[A-Z]/;
	    if(format3.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('대문자');
	    }
	    var format4 = /[~?!@#$%<>^&*\()\-=+_\’\:\;\.\,\"\'\[\]\{\}\/\|\`]/gi;
	    if(format4.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('특수문자');
	    }
	    
		if(cnt < 3 || $(this).val().length < 8 || $(this).val().length > 16){
			$("#passSpan").css({color:"#ff0000"});
			$("#passSpan").html("8~16자리 영문 (소/대문자), 숫자, 특수문자 중 3종류를 조합한 최소 8자리 이상으로 사용해 주세요.");
			$("#custPassChk").val("N");
		} else {
			$("#passSpan").css({color:"#2F9D27"});
			$("#passSpan").html("사용 가능한 비밀번호 입니다.");
        	$("#custPassChk").val("Y");
		}
	});
	
	$("#frm").validate({
		submitHandler: function(){
			
			if($("#oldPw").val() == $("#newPw1").val()){
				alert("현재 비밀번호와 새 비밀번호가 같을 수 없습니다");
				return false;
			}
			
			
			if($("#custPassChk").val() == "N"){
				alert("8~16자리 영문 (소/대문자), 숫자, 특수문자 중 3종류를 조합한 최소 8자리 이상으로 사용해 주세요.");
				return false;
			}
						
			var result = confirm("변경하시겠습니까?");
			
			if(result){
				return true;
			}else{
				return false;
			}
		},		
		rules: {
			  //현재비번
			  oldPw : "required"
			  
			  //새비번
			, newPw1 : {
			 	 	 required: true
			}
			
			  //새비번확인
			, newPw2 : {
				 	 required: true
				   , equalTo: "#newPw1"
			}  
			
		}
	});
	
	$("#btncancel").click(function(){
		$("#frm")[0].reset();
 	});
});
</script>

<section id="content" class="contentSub"><!--[[ content Start ]]-->

		<div class="tit myinfo_tit" title="풍선머니"></div>
		
		<form name="frm" id="frm" method="post" action="/mypage/accountPwUpdateProc.do">
		<input type="hidden" name="custPassChk" id="custPassChk" 	value="" />
		<input type="hidden" name="custPassFg" id="custPassFg" 	value="Y" />
		
			<div class="passChangeBox">
				<div class="cont_area">
					<span class="pass_tit"><label for="txtpass">현재 비밀번호</label></span><span class="cont"><input type="password" id="oldPw" name="oldPw" class="input"></span>
					<span class="pass_tit"><label for="txtpassN">새로운 비밀번호</label></span><span class="cont"><input type="password" id="newPw1" name="newPw1" class="input"></span><span class="tooltip" id="passSpan"></span>
					<div class="txt_wrap_t">
						<span class="txt">8~16자리의 영문(대소문자), 숫자, 특수문자를 조합하여 사용하실 수 있습니다.</span><span class="txt">비밀번호 입력 시 우측 보안등급을 참조하여 안전한 비밀번호를 사용하시기 바랍니다.</span>
					</div>
					<span class="pass_tit"><label for="txtConfirm">비밀번호 확인</label></span><span class="cont"><input type="password" id="newPw2" name="newPw2" class="input"></span>
					<div class="txt_wrap_b">
						<span class="txt">재확인을 위해서 입력하신 비밀번호를 다시 한번 입력해 주세요.</span>
					</div>
				</div>
			</div>
			
	        <div class="btnarea">
	            <button type="submit" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
	            <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	        </div>  
	        
		</form>
		
		<div class="pass_infoBox">
			<span class="alert"></span><span class="info_tit">알려 드립니다.</span>
			<span class="info">쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같을 경우, 도용되기 쉬우므로 주기적으로 변경하여 사용하는 것이 좋습니다.</span>
			<span class="info">아이디와 주민등록번호, 생일, 전화번호 등 개인정보와 관련된 숫자, 연속된 숫자, 반복된 문자 등 다른사람이 쉽게 알아낼 수 있는 비밀번호는 개인정보 유출의 위험이 높으므로 사용을 자제해 주시기 바랍니다.</span>
		</div>
    </section>
    </div>
    </div>