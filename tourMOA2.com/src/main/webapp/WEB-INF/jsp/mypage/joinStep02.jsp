<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	String agreeEss01 = request.getParameter("agreeEss01");
	String agreeEss02 = request.getParameter("agreeEss02");
	String plusInfo = request.getParameter("plusInfo");
	String agreeSav = request.getParameter("agreeSav");
	String agreePrv = request.getParameter("agreePrv");
	String agreeShr = request.getParameter("agreeShr");
	String agreeMkt = request.getParameter("agreeMkt");
	String custStatCd = request.getParameter("custStatCd");
%>
<link rel="stylesheet" href="/css/mypage.css" />
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
	$("#memberJoinBtn").click(function(){
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
                	<input type="hidden" name="agreeEss01" 	value="<%=agreeEss01%>" />
                	<input type="hidden" name="agreeEss02" 	value="<%=agreeEss02%>" />
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
                    <div class="input02"><button type="button" id="memberJoinBtn">인증확인</button></div>
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

	<!--[[ content Start ]]-->
	<section id="content" class="contentSub">		
		<div class="tit join_tit" title="회원가입">
			<div class="join_tit_step">
				<span class="step_off">1</span>
				<span class="step_txt">약관동의</span>
				<span class="step_arr"></span>
				<span class="step_on">2</span>
				<span class="step_txt_on">본인인증</span>
				<span class="step_arr"></span>
				<span class="step_off">3</span>
				<span class="step_txt">정보입력</span>
				<span class="step_arr"></span>
				<span class="step_off">4</span>
				<span class="step_txt">입력확인</span>
				<span class="step_arr"></span>
				<span class="step_off">5</span>
				<span class="step_txt">가입완료</span>
			</div>
		</div>		
		<div class="join_step">
			<span class="h1">본인인증</span>
            <span class="h2"><br />안전한 회원가입을 위해 휴대폰 인증 또는 아이핀(I-PIN) 인증을 진행해 주세요.</span>
            <span class="h2Desc">㈜투어모아은 “정보통신망 이용촉진 및 정보보호 등에 관한 법률” 제23조의2 주민등록번호의 사용 제한에 의거 고객님의 주민등록번호를 수집 및 이용하지 않습니다.<br />따라서, 대체 인증수단으로 휴대폰 본인확인 서비스(한국모바일인증)와 아이핀 인증 서비스(서울신용평가정보)를 제공하며,<br />본인인증 시 이 업체들에 대한 개인정보의 취급위탁에 동의한 것으로 간주됩니다.</span>
             
            <div class="cert">
                <div class="cert_cell">
                    <div class="certDesc">
                        <span class="head">휴대폰으로 인증</span>
                        <span class="desc">본인 명의의 휴대폰으로만 인증이 가능하며, 휴대폰이 본인 명의가 아닐 시에는 아이핀을 이용해주세요.<br />휴대폰 인증 이용관련 문의: 한국모바일인증 02-2033-8500 <br/> 
                        	<font style="color:#ff5500; font-size:12px; letter-spacing:-1px;">팝업창을 띄워서 회원의 성명과 전화번호만 받고, 정규표현식을 이용하여 성명 전화번호 매칭만 시키고 값을 다음페이지에 넘겨주는 것 까지만 하자~!</font></span>
                    </div>
                    <button type="button" id="btnCertCell" name="btnCertCell" class="btnCertCell">휴대폰으로 인증하기</button>
                </div>               
                <div class="cert_ipin">
                    <div class="certDesc">
                        <span class="head">아이핀(I-PIN)으로 인증</span>
                        <span class="desc">개인 공인인증서를 통해 아이핀(I-PIN) 발급을 원하시면 공공 I-PIN 센터에서 발급하실 수 있습니다.  <a href="http://www.gpin.go.kr/center/main/index.gpin?" target="_blank">공공I-PIN 센터 바로가기</a>  ><br />아이핀 인증 이용관련 문의: 서울신용평가정보 1577-1006</span>
                    </div>
                    <button type="button" id="btnCertIpin" name="btnCertIpin" >아이핀(I-PIN)으로 인증하기</button>
                </div>
            </div>
		</div>
    </section>
