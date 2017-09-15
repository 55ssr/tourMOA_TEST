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
	<div id="wrap" style="margin-top:100px;">
	<section id="content" class="contentSub">
		<!--[[ content Start ]]-->
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
		<form name="frm" id="frm" method="post">
		<input type="hidden" name="plusInfo" 	value="" />
		<input type="hidden" name="agreeSav" 	value="" />
		<input type="hidden" name="agreePrv" 	value="" />
		<input type="hidden" name="agreeShr" 	value="" />
		<input type="hidden" name="agreeMkt" 	value="" />
		<input type="hidden" name="custStatCd"  value="" />			
		<div class="join_step">
			<span class="h1">본인인증</span>
            <span class="h2"><br />안전한 회원가입을 위해 휴대폰 인증 또는 아이핀(I-PIN) 인증을 진행해 주세요.</span>
            <span class="h2Desc">㈜투어모아은 “정보통신망 이용촉진 및 정보보호 등에 관한 법률” 제23조의2 주민등록번호의 사용 제한에 의거 고객님의 주민등록번호를 수집 및 이용하지 않습니다.<br />따라서, 대체 인증수단으로 휴대폰 본인확인 서비스(한국모바일인증)와 아이핀 인증 서비스(서울신용평가정보)를 제공하며,<br />본인인증 시 이 업체들에 대한 개인정보의 취급위탁에 동의한 것으로 간주됩니다.</span>
            <div class="cert">
                <div class="cert_cell">
                    <div class="certDesc">
                        <span class="head">휴대폰으로 인증</span>
                        <span class="desc">본인 명의의 휴대폰으로만 인증이 가능하며, 휴대폰이 본인 명의가 아닐 시에는 아이핀을 이용해주세요.<br />휴대폰 인증 이용관련 문의: 한국모바일인증 02-2033-8500</span>
                    </div>
                    <button type="button" id="btnCertCell" name="btnCertCell" >휴대폰으로 인증하기</button>
                </div>
                <div class="cert_ipin">
                    <div class="certDesc">
                        <span class="head">아이핀(I-PIN)으로 인증</span>
                    </div>
                    <button type="button" id="btnCertIpin" name="btnCertIpin" >아이핀(I-PIN)으로 인증하기</button>
                </div>
            </div>
		</div>
		</form>
    </section>
	</div>
</div>