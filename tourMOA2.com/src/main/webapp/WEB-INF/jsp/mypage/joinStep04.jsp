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
<script type="text/javaScript" language="javascript" defer="defer">
	$(document).ready(function(){			
		var cnt = 0;			
		$("#btnok").click(function(){
			if(cnt == 0){
				cnt++
	// 			checkUnload = false;
				$("#mbrFrm").submit();
			}else{
				alert("처리중입니다");
			}				
		});			
		$("#btncancel").click(function(){
			history.back(-1);
		});			
	});	
</script>
<div id="content">	
<div id="wrap">   
<form name="mbrFrm" id="mbrFrm" method="post" action="/mypage/joinStep05.do">
	<input type="hidden" name="custId" 			id="custId" 			value="" /><!-- 아이디 -->
	<input type="hidden" name="custPassEnc" 	id="custPassEnc" 		value="" /><!-- 비밀번호 -->
	<input type="hidden" name="custNmKor" 		id="custNmKor" 			value="" /><!-- 이름 -->
	<input type="hidden" name="genderCd" 		id="genderCd" 			value="" /><!-- 성별 -->
	<input type="hidden" name="email" 			id="email" 				value="" /><!-- FULL 이메일 -->
	<input type="hidden" name="email1" 			id="email1" 			value="" /><!-- 이메일 ID -->
	<input type="hidden" name="email2" 			id="email2" 			value="" /><!-- 이메일 도메인 -->
	<input type="hidden" name="emailYn" 		id="emailYn" 			value="" /><!-- 이메일 수신여부 -->
	<input type="hidden" name="mobileTel" 		id="mobileTel" 			value="" /><!-- 전화번호 -->
	<input type="hidden" name="mobileRcpYn" 	id="mobileRcpYn" 		value="" /><!-- 모바일 수신여부 -->
	<input type="hidden" name="homeTel" 		id="homeTel" 			value="" /><!-- 집전화번호 -->
	<input type="hidden" name="zipCd" 			id="zipCd" 				value="" /><!-- 우편번호 -->
	<input type="hidden" name="custAddr" 		id="custAddr" 			value="" /><!-- 기본주소 -->
	<input type="hidden" name="custAddrDetail" 	id="custAddrDetail" 	value="" /><!-- 상세주소 -->
	<input type="hidden" name="jobCd" 			id="jobCd" 				value="" /><!-- 직업코드 -->
	<input type="hidden" name="birthDt" 		id="birthDt" 			value="" /><!-- 생년월일 -->
	<input type="hidden" name="marryYn" 		id="marryYn" 			value="" /><!-- 결혼여부 -->
	<input type="hidden" name="marryDt" 		id="marryDt" 			value="" /><!-- 결혼년월일 -->
	<input type="hidden" name="agreeSav" 		id="agreeSav" 			value="" /><!-- 개인정보 수집 동의여부 -->
	<input type="hidden" name="agreePrv" 		id="agreePrv" 			value="" /><!-- 개인정보 제3자 제공 및 공유에 대한 안내(선택)에 동의 -->
	<input type="hidden" name="agreeMkt" 		id="agreeMkt" 			value="" /><!-- 마케팅동의여부 -->
	<input type="hidden" name="custCi" 			id="custCi" 			value="" /><!-- 개인정보 인증으로 받아 오는 값 -->
	<input type="hidden" name="custDi" 			id="custDi" 			value="" /><!-- 개인정보 인증으로 받아 오는 값 -->
	<input type="hidden" name="certDiviCd" 		id="certDiviCd" 	    value="" /><!-- 구분코드인 듯 -->
	<input type="hidden" name="fdCd"   			id="fdCd"   	    	value="" /><!-- 모르겠음 -->
	<input type="hidden" name="custStatCd"   	id="custStatCd"   	    value="" /><!-- 회원셋팅코드인 듯 -->
	<input type="hidden" name="prtNm"			id="prtNm"				value=""/>
	<input type="hidden" name="prtCustCi"		id="prtCustCi"			value=""/>
	<input type="hidden" name="prtCustDi"		id="prtCustDi"			value=""/>
	<input type="hidden" name="prtGenderCd"		id="prtGenderCd"		value=""/>
	<input type="hidden" name="prtCertDiviCd"	id="prtCertDiviCd"		value=""/>
	<input type="hidden" name="prtFdCd"			id="prtFdCd"			value=""/>
	<input type="hidden" name="prtCustStatCd"	id="prtCustStatCd"		value=""/>
	<input type="hidden" name="prtBirthDt"		id="prtBirthDt"			value=""/>
	<input type="hidden" name="prtMobileTel"	id="prtMobileTel"		value=""/> 
	<input type="hidden" name="prtEmail"		id="prtEmail"			value=""/> 
	<input type="hidden" name="prtRelCd"		id="prtRelCd"			value=""/> 
	<input type="hidden" name="prtRelAdd"		id="prtRelAdd"			value=""/>
<section id="content" class="contentSub">
	<!--[[ content Start ]]-->
	<div class="tit join_tit" title="회원가입">
		<div class="join_tit_step">
			<span class="step_off">1</span>
			<span class="step_txt">약관동의</span>
			<span class="step_arr"></span>
			<span class="step_off">2</span>
			<span class="step_txt">본인인증</span>
			<span class="step_arr"></span>
			<span class="step_off">3</span>
			<span class="step_txt">정보입력</span>
			<span class="step_arr"></span>
			<span class="step_on">4</span>
			<span class="step_txt_on">입력확인</span>
			<span class="step_arr"></span>
			<span class="step_off">5</span>
			<span class="step_txt">가입완료</span>
		</div>
	</div>
    <div class="join_step"><!--[[ 정보입력 Start ]]-->
		<span class="h1">입력확인</span>
		<table class="step04">
			<caption>입력확인</caption>
			<tbody>
				<tr>
					<th scope="row">아이디<span class="chk"></span></th>
					<td>아이디표시</td>
				</tr>
				<tr>
					<th scope="row">성명<span class="chk"></span></th>
					<td>이름표시</td>
				</tr>
				<tr>
					<th scope="row">이메일<span class="chk"></span></th>
					<td>이메일표시</td>
				</tr>
				<tr>
					<th scope="row">휴대폰번호<span class="chk"></span></th>
					<td>휴대번호 표시</td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td>생년월일 표시</td> 
				</tr>
			</tbody>
		</table>			
	</div><!--[[ 정보입력 End ]]-->
	<div class="btnarea" style="margin-bottom:40px;">
	    <button type="button" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
	    <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	</div>
    </section><!--[[ content End ]]-->
	</form>
</div><!--[[ wrap End ]]-->
</div>

