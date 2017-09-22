<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />
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
                        <span class="desc">본인 명의의 휴대폰으로만 인증이 가능하며, 휴대폰이 본인 명의가 아닐 시에는 아이핀을 이용해주세요.<br />휴대폰 인증 이용관련 문의: 한국모바일인증 02-2033-8500 <br/> 
                        	<font style="color:#ff5500; font-size:12px; letter-spacing:-1px;">팝업창을 띄워서 회원의 성명과 전화번호만 받고, 정규표현식을 이용하여 성명 전화번호 매칭만 시키고 값을 다음페이지에 넘겨주는 것 까지만 하자~!</font></span>
                    </div>
                    <button type="button" id="btnCertCell" name="btnCertCell" class="btnCertCell">휴대폰으로 인증하기</button>
                </div>               
                <div class="cert_ipin">
                    <div class="certDesc">
                        <span class="head">아이핀(I-PIN)으로 인증</span>
                        <span class="desc">개인 공인인증서를 통해 아이핀(I-PIN) 발급을 원하시면 공공 I-PIN 센터에서 발급하실 수 있습니다.&nbsp;&nbsp;<a href="http://www.gpin.go.kr/center/main/index.gpin?" target="_blank">공공I-PIN 센터 바로가기</a>&nbsp;&nbsp;&gt;<br />아이핀 인증 이용관련 문의: 서울신용평가정보 1577-1006</span>
                    </div>
                    <button type="button" id="btnCertIpin" name="btnCertIpin" >아이핀(I-PIN)으로 인증하기</button>
                </div>
            </div>
		</div>
		</form>
    </section>
	</div>
</div>