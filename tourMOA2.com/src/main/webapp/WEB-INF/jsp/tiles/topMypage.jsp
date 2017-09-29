<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

<%
	String plusInfo = request.getParameter("plusInfo");
	String agreeEss01 = request.getParameter("agreeEss01");
	String agreeEss02 = request.getParameter("agreeEss02");
	String agreeSav = request.getParameter("agreeSav");
	String agreePrv = request.getParameter("agreePrv");
	String agreeShr = request.getParameter("agreeShr");
	String agreeMkt = request.getParameter("agreeMkt");
	String custStatCd = request.getParameter("custStatCd");
%>
<style>
#mask {  
	  position:absolute;  
	  z-index:9000;  
	  background-color:#000;  
	  display:none;  
	  left:0;
	  top:0;
	  width:100%;
	  height:100%;
	}
	.window{
	  display: none;
	  position:absolute;  
	  left:0px;
	  top:0px;
	  z-index:10000;
	  margin-top:15%;
	  margin-left:30%;
	}
</style>
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
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javaScript" defer="defer">
function wrapWindowByMask(){
	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();  
	var maskWidth = $(window).width();  

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#mask').css({'width':maskWidth,'height':maskHeight});  

	//애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
	$('#mask').fadeIn(1000);      
	$('#mask').fadeTo("slow",0.8);    

	//윈도우 같은 거 띄운다.
	$('.window').show();
}

$(document).ready(function(){
	//검은 막 띄우기
	$('.btnCertCell').click(function(e){
		e.preventDefault();
		wrapWindowByMask();
	});

	//닫기 버튼을 눌렀을 때
	$('.layer_close').click(function () {  
	    //링크 기본동작은 작동하지 않도록 한다.
	    $(this).hide(); 
	    $("#mask").hide();
	    $('.window').hide();  
	});       

	//검은 막을 눌렀을 때
	$('#mask').click(function () {  
		$(this).hide();  
	    $('.window').hide();  
	});	
	
});

function mphon( obj ) { 
     obj.value =  PhonNumStr( obj.value ); 
  } 
  function _mphon( val ) { 
     document.write(PhonNumStr( val )); 
  } 

function PhonNumStr( str ){ 
     var RegNotNum  = /[^0-9]/g; 
     var RegPhonNum = ""; 
     var DataForm   = ""; 
     // return blank     
     if( str == "" || str == null ) return ""; 
     // delete not number
     str = str.replace(RegNotNum,''); 
     /* 4자리 이하일 경우 아무런 액션도 취하지 않음. */
     if( str.length < 4 ) return str; 
     /* 지역번호 02일 경우 10자리 이상입력 못하도록 제어함. */
     if(str.substring(0,2)=="02" && str.length > 10){
         str = str.substring(0, 10);
     } 
     if( str.length > 3 && str.length < 7 ) { 
         if(str.substring(0,2)=="02"){
             DataForm = "$1-$2"; 
             RegPhonNum = /([0-9]{2})([0-9]+)/; 
         } else {
             DataForm = "$1-$2"; 
             RegPhonNum = /([0-9]{3})([0-9]+)/; 
         }
     } else if(str.length == 7 ) {
         if(str.substring(0,2)=="02"){
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{2})([0-9]{3})([0-9]+)/; 
         } else {
             DataForm = "$1-$2"; 
             RegPhonNum = /([0-9]{3})([0-9]{4})/; 
         }
     } else if(str.length == 9 ) {
          if(str.substring(0,2)=="02"){
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{2})([0-9]{3})([0-9]+)/; 
         } else {
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{3})([0-9]{3})([0-9]+)/; 
         }
     } else if(str.length == 10){ 
         if(str.substring(0,2)=="02"){
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{2})([0-9]{4})([0-9]+)/; 
         }else{
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{3})([0-9]{3})([0-9]+)/;
         }
     } else if(str.length > 10){ 
         if(str.substring(0,2)=="02"){
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{2})([0-9]{4})([0-9]+)/; 
         }else{
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{3})([0-9]{4})([0-9]+)/; 
         }
     } else {	 
         if(str.substring(0,2)=="02"){
             DataForm = "$1-$2-$3"; 

             RegPhonNum = /([0-9]{2})([0-9]{3})([0-9]+)/; 
         }else{
             DataForm = "$1-$2-$3"; 
             RegPhonNum = /([0-9]{3})([0-9]{3})([0-9]+)/;
         }
     }
     while(RegPhonNum.test(str) ) {  
         str = str.replace(RegPhonNum, DataForm);  
     } 
     return str; 
} 
$(document).ready(function(){
	var f = document.frmJoinPop;
	$("#testBtn").click(function(){
		if($("span input#username").val()==''){
			alert("이름을 입력해 주세요.");
			return;
		}
		if($("span input#phone").val()==''){
			alert("핸드폰번호를 입력해 주세요.");
			return;
		}
		
	var custNmKor =$("input:hidden[name='custNmKor']").val($("span input#username").val());
	var custphone =$("input:hidden[name='custphone']").val($("span input#phone").val());
	$('#mask, .window').hide();
	$("#frmJoinPop").submit();
		
	});
});
</script>
<!-- 레이어 팝업 -->
<div id="mask"></div>
<div class="window">
	<div id="login_layer"><!--[[ 로그인 레이어 Start ]]-->
    <div class="layer_top">
        <span class="layer_tit">회원가입</span>
        <span class="layer_close"><a class="modalCloseImg" id="modalCloseImg"></a></span>
    </div>
    <div class="layer_body">
        <div class="loginBox_01">
            <div class="box_top">
                <form name="frmJoinPop" id="frmJoinPop" method="post" action="/mypage/joinStep03.do">
                	<input type="text" name="agreeEss01" 	value="<%=agreeEss01%>" />
                	<input type="text" name="agreeEss02" 	value="<%=agreeEss02%>" />
                	<input type="hidden" name="plusInfo" 	value="<%=plusInfo%>" />
					<input type="hidden" name="agreeSav" 	value="<%=agreeSav%>" />
					<input type="hidden" name="agreePrv" 	value="<%=agreePrv%>" />
					<input type="hidden" name="agreeShr" 	value="<%=agreeShr%>" />
					<input type="hidden" name="agreeMkt" 	value="<%=agreeMkt%>" />
					<input type="hidden" name="custStatCd"  value="<%=custStatCd%>" />		
					<input type="hidden" name="custNmKor"  value="" />
					<input type="hidden" name="custphone"  value="" />
                    <div class="input01">
                        <span class="sbj mgb10"><label for="username">성명</label></span><span class="cont mgb10" >
                        <!--<input type="text" id="custNmKor" name="custNmKor" maxlength="20"> -->
                        <input type="text" id="username" name="username" />
                        </span>
                    	<span class="sbj"><label for="custPassEnc">전화번호</label></span><span class="cont">
                    		<input type="text" name="phone"  id="phone" value="" placeholder="핸드폰 번호 입력" maxlength="13" onKeyDown="mphon(this);" onKeyUp="mphon(this);">
                    	</span>
                    </div>
                    <div class="input02"><button type="button" id="testBtn">인증확인</button></div>
                	<!-- <span class="chk"><input type="checkbox" id="chkSave" name="chkSave"><label for="chkSave">아이디저장</label></span> -->
                </form>
            </div>
            <div class="box_btm">
                <div class="para">
                    <span>회원가입 시 입력하신 회원정보를 통해<br> 아이디와 비밀번호를 찾으실 수 있습니다.</span>
                    <button type="button" name="btnIdPw" id="btnIdPw">아이디/비밀번호찾기</button>
                </div>
                <div class="para">
                    <span>아직 투어모아 회원이 아니신가요?<br> 투어모아 회원이 되시면 급이 다른 혜택을<br> 누리실 수 있습니다.</span>
                    <button type="button" name="btnJoin" id="btnJoin">회원가입</button>
                </div>
            </div>
        </div>
        <div class="loginBox_02">
            <span class="head">투어모아 회원혜택</span>
            <span class="hypo"></span>
            <span class="sub_head">01. 최신 여행 정보를 쉽고 빠르게!</span>
            <span class="txt">이메일과 SMS를 통해<br>최신 여행정보와 할인소식을 알려드립니다.</span>
            <span class="sub_head">02. 365일 즐거운 투어모아</span>
            <span class="txt">다양하고 풍성한<br>이벤트와 혜택을 놓치지 마세요.</span>
            <span class="sub_head">03. 무엇이든 물어보세요!</span>
            <span class="txt">회원 전용 맞춤상담으로 여행에 대한<br>궁금증을 해결해 드립니다.</span>
        </div>
    </div>
</div>	
</div>			
 	
<!-- 레이어팝업 끝 -->
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
   	</header>
</div>
   	