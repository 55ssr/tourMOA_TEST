<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />
<script type="text/javaScript" language="javascript" defer="defer">
$(document).ready(function(){
	
	$("#btnok, #child").click(function(){
		
		var btnId = $(this).attr("id");
		
		if(!$("#chk_agree01").prop("checked")){
			alert("인터넷 회원 약관에 동의하셔야 합니다.");
			return false;
		}
		
		if(!$("#chk_agree02").prop("checked")){
			alert("개인정보 수집 및 이용에 동의하셔야 합니다.");
			return false;
		}

		if($("#chk_agree03").prop("checked"))	$("input:hidden[name='agreeSav']").val("Y");
		else									$("input:hidden[name='agreeSav']").val("N");
		if($("#chk_agree04").prop("checked"))	$("input:hidden[name='agreePrv']").val("Y");
		else									$("input:hidden[name='agreePrv']").val("N");
		if($("#chk_agree05").prop("checked"))	$("input:hidden[name='agreeShr']").val("Y");
		else									$("input:hidden[name='agreeShr']").val("N");
		if($("#chk_agree06").prop("checked"))	$("input:hidden[name='agreeMkt']").val("Y");
		else $("input:hidden[name='agreeMkt']").val("N");
		
		
		if(btnId == "child"){
			if (!confirm("만14세 미만 아동의 경우 가족증명서 및 법정대리인 본인 인증 서류  제출 이후 관리자의 승인 절차를 거쳐야 노랑풍선 회원 서비스 이용이 가능합니다. \n\n진행하시겠습니까?")){
				return false;	
			}else{
				$("input:hidden[name='custStatCd']").val("C");
				$("input:hidden[name='plusInfo']").val("5");
				return true;
			}
		}else{
			$("input:hidden[name='custStatCd']").val("J");
			$("input:hidden[name='plusInfo']").val("1");
			return true;
		}		
	});	
	/***************
	* 전체클릭
	****************/
	$("#chkAll").click(function(){
		if(!$("#chkAll").prop("checked")){
			$("#chk_agree01").prop("checked", false);
			$("#chk_agree02").prop("checked", false);
			$("#chk_agree03").prop("checked", false);
			$("#chk_agree04").prop("checked", false);
			$("#chk_agree05").prop("checked", false);
			$("#chk_agree06").prop("checked", false);
		}else{
			$("#chk_agree01").prop("checked", true);
			$("#chk_agree02").prop("checked", true);
			$("#chk_agree03").prop("checked", true);
			$("#chk_agree04").prop("checked", true);
			$("#chk_agree05").prop("checked", true);
			$("#chk_agree06").prop("checked", true);
		}
	});	
});
</script>
<div id="content">
<!-- js파일 모음 e -->
	<div id="wrap">
		<!--[[ wrap Start ]]-->	
	<form name="mbrFrm" id="mbrFrm" method="post" action="/mypage/joinStep02.do">
		<input type="hidden" name="agreeSav" 	value="">
		<input type="hidden" name="agreePrv" 	value="">
		<input type="hidden" name="agreeShr" 	value="">
		<input type="hidden" name="agreeMkt" 	value="">
		<input type="hidden" name="custStatCd"  value="">
		<input type="hidden" name="plusInfo"    value="">	
		<section id="content" class="contentSub">
			<!--[[ content Start ]]-->	
			<div class="tit join_tit" title="회원가입">
				<div class="join_tit_step">
					<span class="step_on">1</span>
					<span class="step_txt_on">약관동의</span>
					<span class="step_arr"></span>
					<span class="step_off">2</span>
					<span class="step_txt">본인인증</span>
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
				<span class="h1">약관동의</span>
	            <div class="h2">
	                <span class="sbj">01. 인터넷 회원 약관(필수)</span>
	            </div>
	            <div class="yakgwan">
	                <span class="pol_head">제1장 총칙</span>
	                <span class="pol_head">제1조(목적)</span>
	                <span class="pol_head2">1. 이 약관은 (주)투어모아(이하 '당사') 및 관련 부가 서비스의 이용 조건, 절차, 그리고 회원규칙에 관한 사항과 기타 필요한 사항을 규정함을 목적으로 합니다.</span>
	                <span class="pol_head">제2조(약관의 효력과 변경)</span>
	                <span class="pol_head2">1. 회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 사이트 초기 화면에 게시합니다.</span>
	                <span class="pol_head2">2. 회사는 이 규정을 변경할 수 있으며, 변경된 규정은 제1항과 같은 방법으로 공지함으로써 효력을 발생합니다.</span>
	                <span class="pol_head2">3. 회사는 약관을 개정하는 경우 개정 사유 및 시행일자를 명시하여 현행약관과 함께 시행일로부터 최소 7일 전에 제1항의 방법으로 공지합니다. 단, 회원의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 30일전에 공지하고 개정약관을 회원이 등록한 메일(e-mail)로 발송하여 통지합니다.</span>
	                <span class="pol_head2">4. 회사의 제3항에 따른 개정약관 공지 또는 통지 후 회원이 약관 변경 적용일까지 명시적으로 거부의사를 표시하지 않은 경우 회원이 개정약관에 동의한 것으로 봅니다. 단, 회원은 변경된 약관에 동의하지 않는 경우 서비스의 이용을 중단하고 이용계약을 해지할 수 있습니다.</span>
	                <span class="pol_head2">5. 회원은 약관의 변경에 대하여 주의의무를 다하여야 하며, 변경된 약관의 부지로 인한 회원의 피해는 회사가 책임지지 않습니다.</span>
	                <span class="pol_head">제3조(약관의 준칙)</span>
	                <span class="pol_head2">1. 이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관계법령의 규정에 따릅니다.</span>
	                <span class="pol_head">제4조(용어의 정의)</span>
	                <span class="pol_head2">1. 이 규정에서 사용하는 용어의 정의는 다음과 같습니다.</span>
	                <span class="pol_desc">1) 회원 : 회사와 서비스 이용 계약을 체결한 자</span>
	                <span class="pol_desc">2) 아이디(ID) : 회원식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인한 문자 또는 숫자로 이루어진 조합</span>
	                <span class="pol_desc">3) 이메일 : 회원의 인터넷 메일 계정</span>
	                <span class="pol_desc">4) 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합</span>
	                <span class="pol_desc">5) 운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 사람</span>
	                <span class="pol_desc">6) 해지 : 회사 또는 회원이 서비스 개통 후 이용계약을 해약하는 것</span>
	                <span class="pol_head">제2장 계약</span>
	                <span class="pol_head">제5조(이용 계약의 성립)</span>
	                <span class="pol_head2">1. 이용 계약은 이용자의 이용 신청에 대한 회사의 이용 응낙과 이용자의 약관 내용에 대한 동의로 성립됩니다.</span>
	                <span class="pol_head2">2. 회원에 가입하여 서비스를 이용하고자 하는 희망자는 회사에서 요청하는 개인신상정보를 제공해야 합니다.</span>
	                <span class="pol_head2">3. 회사는 다음 각 호에 해당하는 이용 계약신청에 대하여는 이를 응낙하지 아니할 수 있습니다.</span>
	                <span class="pol_desc">1) 이름이 실명이 아닌 경우</span>
	                <span class="pol_desc">2) 다른 사람의 명의를 사용하여 신청한 경우</span>
	                <span class="pol_desc">3) 이용 신청 시 필요 내용을 허위로 기재하여 신청한 경우</span>
	                <span class="pol_desc">4) 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청한 경우</span>
	                <span class="pol_desc">5) 기타 회사가 정한 이용 신청요건이 미비 된 경우</span>
	                <span class="pol_head">제6조(계약 사항의 변경)</span>
	                <span class="pol_head2">1. 회원은 이용 신청 시 기재한 사항이 변경 되었을 경우에는 즉시 온라인 수정을 해야 합니다.</span>
	                <span class="pol_head">제7조(개인 정보 보호)</span>
	                <span class="pol_head2">1. 당사는 이용자의 정보 수집 시 커뮤니티 활성화를 위한 최소한의 정보를 수집합니다. 다음 사항을 필수 사항으로 하며 그 외 사항은 선택 사항으로 합니다.</span>
	                <span class="pol_desc">1) 성명(국/영문)</span>
	                <span class="pol_desc">2) 생년월일</span>
	                <span class="pol_desc">3) 주소</span>
	                <span class="pol_desc">4) 전화번호</span>
	                <span class="pol_desc">5) 이메일</span>
	                <span class="pol_desc">6) 회원ID</span>
	                <span class="pol_desc">7) I-PIN정보</span>
	                <span class="pol_head2">2. 커뮤니티가 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.</span>
	                <span class="pol_head2">3. 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며 이에 대한 모든 책임은 회사가 집니다. 다만 다음의 경우에는 예외로 합니다.</span>
	                <span class="pol_desc">1) 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별 할 수 없는 형태로 제공되는 경우</span>
	                <span class="pol_head2">4. 이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집 목적 및 이용 목적, 제3자에 대한 정보 제공 관련 사항(제공 받는 자, 제공 목적 및 제공할 정보의 내용), 수탁업체에 대한 정보제공 관련사항(수탁자, 위탁업무 내용 및 정보제공 항목) 등 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ‘정보통신망법’이라 함) 제22조 및 제24조의2, 제25조에 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.</span>
	                <span class="pol_head2">5. 이용자는 언제든지 커뮤니티가 가지고 있는 자신의 개인정보에 대해 열람 및 오류 정정을 요구할 수 있으며 커뮤니티는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구할 경우에는 커뮤니티는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.</span>
	                <span class="pol_head2">6. 커뮤니티는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.</span>
	                <span class="pol_head2">7. 커뮤니티 또는 그로부터 개인정보를 제공 받는 제3자는 개인 정보의 수집목적 또는 제공 받는 목적을 달성할 때에는 당해 개인정보를 지체 없이 파괴합니다.</span>
	                <span class="pol_head">제3장 서비스 이용</span>
	                <span class="pol_head">제8조(서비스 이용 시간)</span>
	                <span class="pol_head2">1. 서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다.</span>
	                <span class="pol_head2">2. "1"항의 이용시간에 관련하여 정기점검 등의 필요로 인하여 커뮤니티 운영자가 임의로 날짜와 시간을 정해 서비스를 중단할 수 있습니다.</span>
	                <span class="pol_head2">3. 커뮤니티는 시스템 등의 보수점검, 교체, 시스템의 고장, 통신의 두절, 기타 불가항력적 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</span>
	                <span class="pol_head">제9조(회원 ID, 이메일 관리에 대한 의무)</span>
	                <span class="pol_head2">1. 회원 ID, 이메일에 관한 모든 관리책임은 회원에게 있습니다. 회원에게 부여된 회원ID, 이메일과 비밀번호의 관리 소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</span>
	                <span class="pol_head2">2. 자신의 회원ID, 이메일과 비밀번호가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 통보해야 합니다.</span>
	                <span class="pol_head2">3. 이용자는 이 약관 및 관계법령에서 규정한 사항을 준수하여야 합니다.</span>
	                <span class="pol_head">제10조(정보의 제공)</span>
	                <span class="pol_head2">1. 회사는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보에 대하여 전자우편, 유선매체, 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.</span>
	                <span class="pol_head">제11조(회원의 게시물)</span>
	                <span class="pol_head2">1. 회사는 회원이 게시하거나 등록하는 서비스 내의 내용물이 다음 각 호의 1에 해당한다고 판단되는 경우에 사전 통지 없이 삭제할 수 있습니다.</span>
	                <span class="pol_desc">1) 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우</span>
	                <span class="pol_desc">2) 공공질서 및 미풍양속에 위반되는 내용인 경우</span>
	                <span class="pol_desc">3) 범법적 행위에 결부된다고 인정되는 내용인 경우</span>
	                <span class="pol_desc">4) 회사나 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우</span>
	                <span class="pol_desc">5) 회사에서 규정한 게시기간을 초과한 경우</span>
	                <span class="pol_desc">6) 해당 게시판의 주제에 관계 없는 광고성 내용을 기재한 경우</span>
	                <span class="pol_desc">7) 회사의 운영과 관련하여 근거 없는 사실 또는 허위 사실을 적시하거나 유포하여 회사의 명예를 실추시키고나 신뢰성을 해하는 경우</span>
	                <span class="pol_desc">8) 회사의 운영과정에서 회사의 직원에게 폭언, 협박 또는 음담패설로 업무환경을 심각하게 해하는 경우</span>
	                <span class="pol_desc">9) 기타 관계법령에 위반 된다고 판단되는 경우</span>
	                <span class="pol_head">제12조(게시물의 저작권 및 사용권)</span>
	                <span class="pol_head2">1. 서비스에 대한 권리와 책임은 게시자에게 있으며, 회사는 각 게시물에 대한 사용권을 갖습니다(콘텐츠 및 홍보용으로 사용할 수 있습니다).</span>
	                <span class="pol_head2">2. 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 기재된 자료를 상업적으로 사용 할 수 없습니다. 단, 비상업적 목적으로 사용하고자 할 경우에는 회사의 동의를 얻어 사용할 수 있습니다.</span>
	                <span class="pol_desc">제13조(서비스 제공의 중지)</span>
	                <span class="pol_head2">1. 회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.</span>
	                <span class="pol_desc">1) 서비스용 설비의 보수 등 공사로 인한 부득이한 경우</span>
	                <span class="pol_desc">2) 전기 통신 사업법에 규정된 기간 통신사업자가 전기 통신 서비스를 중지 했을 경우</span>
	                <span class="pol_head2">2. 회사는 국가 비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스는 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 정지 할 수 있습니다.</span>
	                <span class="pol_head">제4장 책임</span>
	                <span class="pol_head">제14조(회사의 의무)</span>
	                <span class="pol_head2">1. 회사는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시 일에 서비스를 이용 할 수 있도록 합니다.</span>
	                <span class="pol_head2">2. 회사는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.</span>
	                <span class="pol_head2">3. 회사는 서비스 제공과 관련해서 알고 있는 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신 기본법 등 법률의 규정에 의해 국가 기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보 통신 윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우에는 그리하지 않습니다.</span>
	                <span class="pol_head">제15조(회원의 의무)</span>
	                <span class="pol_head2">1. 회원은 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다.</span>
	                <span class="pol_desc">1) 다른 회원의 이메일을 부정하게 사용하는 행위</span>
	                <span class="pol_desc">2) 서비스에서 얻은 정보를 회사의 사전 승낙 없이 회원의 이용 외의 목적으로 복제하거나 이를 출판 및 방송 등에 사용하거나 제3자에게 제공하는 행위</span>
	                <span class="pol_desc">3) 제3자의 저작권 등 기타 권리를 침해하는 행위</span>
	                <span class="pol_desc">4) 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위</span>
	                <span class="pol_desc">5) 범죄와 결부된다고 객관적으로 판단되는 행위</span>
	                <span class="pol_desc">6) 기타 관계법령에 위배되는 행위</span>
	                <span class="pol_head2">2. 회원은 이 규정에서 규정하는 사항과 서비스 이용 안내 또는 주의사항을 준수하여야 합니다.</span>
	                <span class="pol_head2">3. 회원은 내용별로 회사가 공지사항에 게시하거나 별도로 공지한 이용제한 사항을 준수하여야 합니다.</span>
	                <span class="pol_head2">4. 회원은 회사의 사전 승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 영업활동의 결과와 회원이 규정에 위반한 영업활동을 이용하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다.</span>
	                <span class="pol_head">제5장 계약 해지 및 서비스 이용 제한</span>
	                <span class="pol_head">제16조(계약 해지 및 서비스 이용 제한)</span>
	                <span class="pol_head2">1. 회원이 이용 계약을 해지하고자 하는 때에는 회원 본인이 온라인을 통해 회사에 해지 신청을 하여야 합니다.</span>
	                <span class="pol_head2">2. 회사는 회원이 다음 각 호의 1에 해당하는 행위를 하였을 경우 사전통지 없이 이용 계약을 해지 하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.</span>
	                <span class="pol_desc">1) 타인의 서비스 아이디(ID), 이메일 및 비밀번호를 도용한 경우</span>
	                <span class="pol_desc">2) 서비스 운영을 고의로 방해한 경우</span>
	                <span class="pol_desc">3) 가입한 이름이 실명이 아닌 경우</span>
	                <span class="pol_desc">4) 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우</span>
	                <span class="pol_desc">5) 회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행하는 경우</span>
	                <span class="pol_desc">6) 회사나 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</span>
	                <span class="pol_desc">7) 제11조1항에서 규정하는 게시물이나 자료를 게시, 등록하는 경우</span>
	                <span class="pol_head">제17조(이용 제한 및 해제 절차)</span>
	                <span class="pol_head2">1. 회사는 제1조의 규정에 의하여 이용 제한을 하고자 하는 경우에는 그 사유, 일시 및 기타사항을 정하여 이메일 또는 기타 방법에 의하여 해당 이용자 또는 대리인에게 통지 합니다. 다만, 회사가 긴급하게 이용을 정지할 필요가 있다고 인정하는 경우에는 그러하지 아니 합니다.</span>
	                <span class="pol_head2">2. 제1항의 규정에 의하여 이용 정지의 통지를 받은 이용자 또는 그 대리인은 그 이용 정지의 통지에 대하여 이의가 있을 때에는 이의 신청을 할 수 있습니다.</span>
	                <span class="pol_head2">3. 회사는 제2항의 규정에 의한 이의 신청에 대하여 그 확인을 위한 기간까지 이용 정지를 일시 연기 할 수 있으며, 그 결과를 이용자 또는 그 대리인에게 통지합니다.</span>
	                <span class="pol_head2">4. 회사는 이용정지 기간 중에 그 이용 정지 사유가 해소된 것이 확인된 경우에는 이용 정지 조치를 즉시 해제 합니다.</span>
	                <span class="pol_head">제6장 손해배상 등</span>
	                <span class="pol_head">제18조(손해배상)</span>
	                <span class="pol_head2">1. 회사는 일체의 무료로 제공되는 서비스의 이용과 관련하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다.</span>
	                <span class="pol_head">제19조(면책조항)</span>
	                <span class="pol_head2">1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</span>
	                <span class="pol_head2">2. 회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.</span>
	                <span class="pol_head2">3. 회사는 회원이 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.</span>
	                <span class="pol_head2">4. 회사는 회원이 서비스에 기재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.</span>
	                <span class="pol_head">제20조(관할 법원)</span>
	                <span class="pol_head2">1. 서비스의 이용으로 발생한 분쟁에 대해 소송이 제기 될 경우 회사의 본사 소재지를 관할하는 법원을 관할 법원으로 합니다.</span>
	                <span class="pol_head">[부칙]</span>
	                <span class="pol_head2">본 약관은 2013년 2월 15일부터 적용됩니다.</span>
	                <span class="pol_head2">2013년 2월 15일 이전에 시행되던 종전의 약관은 본 약관으로 대체합니다.</span>	            
	            </div>
				<div class="agree">
					<input type="checkbox" name="chk_agree01" class="chk_agree" id="chk_agree01"><span class="agree_txt"><label for="chk_agree01">투어모아 회원약관(필수)에 동의합니다.</label></span>
				</div>
			</div>
			<div class="join_step">
	            <div class="h2"><span class="sbj">02. 개인정보 수집 및 이용에 대한 안내(필수)</span></div>
	                <div class="yakgwan">
	                <span class="pol_head">1. 개인정보 수집 항목 및 방법</span>
	                <span class="pol_head2">투어모아은 여행 서비스의 제공에 필요한 최소한의 개인정보만을 수집하며, 수집항목, 수집목적 및 보유기간은 다음과 같습니다.</span>
	                <span class="pol_head2">가. 개인정보 수집항목</span>
	                <span class="pol_head2">① 필수항목</span>
	                    <table>
	                        <caption>필수항목</caption>
	                        <tr>
	                            <th scope="col">수집항목</th>
	                            <th scope="col">수집목적</th>
	                            <th scope="col" class="last">보유기간</th>
	                        </tr>
	                        <tr>
	                            <td>ID/PW, 성명, 개인 I-PIN정보, 연락처(휴대폰, e-mail), 생년월일</td>
	                            <td>회원제서비스 제공, 당사 약관변경 안내, 마케팅 정보제공 등의 회원관리</td>
	                            <td class="last">회원탈퇴 시까지</td>
	                        </tr>
	                        <tr>
	                            <td>ID/PW, 성명(국영문), 주소,</td>
	                            <td>연락처(휴대폰, e-mail)</td>
	                            <td class="last">여행상품 상담 및 예약, 물품배송 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
	                        </tr>
	                        <tr>
	                            <td>성명(국영문), 생년월일, 성별, 주소, 연락처(휴대폰, e-mail)</td>
	                            <td>여행자보험 가입</td>
	                            <td class="last">개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
	                        </tr>
	                        <tr>
	                            <td>여권사본, 생년월일, 성명(국영문), 연락처(휴대폰, e-mail)</td>
	                            <td>항공권예약 및 발권, 호텔예약, 비자발급, APIS</td>
	                            <td class="last">개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
	                        </tr>
	                        <tr>
	                            <td>법정대리인의 정보(성명, 연락처, 가족관계 증빙서류)가입자의 정보(ID/PW, 성명(국영문), 주소, 개인 I-PIN정보, 연락처(휴대폰, e-mail), 생년월일, 성별)</td>
	                            <td>만 14세 미만 가입자에게 회원제서비스 제공</td>
	                            <td class="last">회원탈퇴 시까지</td>
	                        </tr>
	                        
	                        <tr>
	                            <td>휴대폰 번호</td>
	                            <td>현금영수증 발급(소득공제용)</td>
	                            <td class="last">개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
	                        </tr>
	                        <tr>
	                            <td>휴대폰 번호, 사업자등록번호</td>
	                            <td>현금영수증 발급(지출증빙용)</td>
	                            <td class="last">개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
	                        </tr>	                     
	                    </table>
	            </div>     
	            <div class="agree mg0">
	              <input type="checkbox" name="chk_agree02" class="chk_agree" id="chk_agree02"><span class="agree_txt"><label for="chk_agree02">개인정보 수집 및 이용에 대한 안내(필수)에 동의합니다.</label></span>           
	            </div>
	            <span class="warning">※ 여행서비스 제공을 위해 필요한 최소한의 정보이므로 동의를 해 주셔야만 원활한 서비스를 이용하실수 있습니다. </span>
	        </div> 
	        <div class="join_step">
	  		    <div class="h2"><span class="sbj">03. 개인정보 수집 및 이용에 대한 안내(선택)</span></div>
	            <div class="yakgwan">
	      		      <span class="pol_head2">② 선택항목</span>
	                    <table>
	                        <caption>선택항목</caption>
	                        <tr>
	                            <th scope="col">수집항목</th>
	                            <th scope="col">수집목적</th>
	                            <th scope="col" class="last">보유기간</th>
	                        </tr>
	                        <tr>
	                            <td>성별, 생년월일, 주소, 직업, 직장정보(상호, 전화번호, 주소), 결혼정보(결혼여부, 결혼기념일), SMS∙Mailing∙DM 수신여부, SNS관리</td>
	                            <td>마케팅 활동, 경품행사, 이벤트 정보제공, 이용고객 통계자료 작성 및 서비스 개발</td>
	                            <td class="last">회원탈퇴 시까지</td>
	                        </tr>
	                    </table>
	                <span class="pol_head2">단, 개인정보의 수집 및 이용목적이 달성된 경우에도 관계 법령에 따라 보존이 필요한 경우, 사전에 보유∙이용기간을 고객에게 고지한 경우는 그에 따라 위의 필수∙선택 개인정보를 보관합니다.</span>         
	            </div>        
		        <div class="agree">
	                <input type="checkbox" name="chk_agree03" class="chk_agree" id="chk_agree03"><span class="agree_txt"><label for="chk_agree03">개인정보 수집 및 이용에 대한 안내(선택)에 동의합니다.</label></span>
	            </div>
	        </div>     
	        
	        <div class="join_step">
	            <div class="h2"><span class="sbj">04. 개인정보 제 3자 제공 및 공유 안내(선택)</span></div>
	            <div class="yakgwan">
	           	<span class="pol_head">4. 개인정보의 제3자 제공 및 공유</span>
                <span class="pol_head2">투어모아에서는 원칙적으로 고객님의 개인 정보를 여행서비스업과 무관한 기업 및 기관에 공개하지 않습니다. 단, 여행 서비스와 관련하여 고객님의 개인정보를 공유하는 경우는 아래와 같으며, 이용목적에 따른 개인정보 제공 시부터 이용목적 달성 시(제휴업체는 제휴계약 종료 시) 및 관계법령에 따른 보관기간까지 보유∙이용합니다.</span>
                   <table>
                        <caption>개인정보의 제3자 제공 및 공유</caption>
                        <tr>
                            <th scope="col">제공받는자</th>
                            <th scope="col">제공 목적</th>
                            <th scope="col" class="last">제공 항목</th>
                            <th scope="col" class="last">보유기간</th>
                        </tr>
                        <tr>
                            <td class="center">정부관계기관<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Gov"  onclick="showLayer(this);">상세보기</button></td>
                            <td rowspan="7">항공권 및 기타운송업체 탑승예약, 숙박예약, 현지 행사 진행 및 고객관리 목적, 서비스 제공, 구매 및 요금 결제, 개인 식별, 불만처리 등 민원처리, 고지사항 전달, 마일리지 적립∙전환, 사용확인, 회원할인, 비자발급 등</td>
                            <td rowspan="7" >성명(국/영문),여권 및 비자 사본,전화번호,주소,투어마일리지 정보,회원 종류</td>
                            <td rowspan="12" class="last">정보보유 및 이용기간 : 이용목적에 따른 개인정보 제공시, 이용목적 달성 및 관계 법령에 따른 보관기간까지. (제휴업체는 제휴계약 종료시까지)
                        </td>
                        </tr>
                        <tr>
                            <td class="center">항공사<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Air" onclick="showLayer(this);">상세보기</button></td>
                        </tr>
                        <tr>
                            <td class="center">크루즈<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Crs" onclick="showLayer(this);">상세보기</button></td>
                        </tr>
                        <tr>
                            <td class="center">호텔 및 숙박시설<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Accm" onclick="showLayer(this);">상세보기</button></td>
                        </tr>
                        <tr>
                            <td class="center">랜드사<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Land" onclick="showLayer(this);">상세보기</button></td>
                        </tr>
                        <tr>
                            <td class="center">비자발급대행사<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Visa" onclick="showLayer(this);">상세보기</button></td>
                        </tr>
                        <tr>
                            <td class="center">인솔자</td>
                        </tr>
                        <tr>
                            <td class="center">대리점<br /><button type="button" title="새창으로" role-url="/mypage/prvOffer.do?offer=Agt" onclick="showLayer(this);">상세보기</button></td>
                            <td>여행상담 및 예약확인, 일반 및 제휴 서비스 제공, 구매 및 요금 결제, 마일리지 적립∙전환, 사용확인, 제휴 서비스 이용안내, 이벤트 안내 등</td>
                            <td>성명(영문이름포함), 여권 및 비자 사본, 연락처, 이메일, 마일리지 정보, 회원종류</td>
                        </tr>
                        <tr>
                            <td class="center">KB손해보험</td>
                            <td>여행자 보험가입</td>
                            <td>성명, 생년월일, 성별, 연락처</td>
                        </tr>
                        <tr>
                            <td class="center">에이스손해보험</td>
                            <td>여행자 보험가입, 결제 및 환불, 보험금 지급<br />서비스 제공 </td>
                            <td>영문명, 생년월일, 성별, 연락처(이메일) </td>
                        </tr>
                        <tr>
                            <td class="center">LG U+</td>
                            <td>신용카드 안전결제</td>
                            <td>성명, 카드번호, 카드유효기간</td>
                        </tr>
                        <tr>
                            <td class="center">이니시스</td>
                            <td>신용카드 안전결제</td>
                            <td>성명, 카드번호, 카드유효기간</td>
                        </tr>
                    </table>
                    </div>
            <div class="agree mg0">
                <input type="checkbox" name="chk_agree04" class="chk_agree" id="chk_agree04"><span class="agree_txt"><label for="chk_agree04">개인정보 제3자 제공 및 공유에 대한 안내(선택)에 동의합니다.</label></span>
            </div>
            <span class="warning mgb10">※ 미동의 시 여행상품 계약 및 계약 후 추가 업무 진행에 있어 재동의 절차가 필요합니다.</span>
            <span class="warning">※ 동의를 하지 않으셔도 검색 및 조회, 상담 서비스는 이용하실수 있습니다.  </span>
        	</div> 
               
           <div class="join_step">
            <div class="h2"><span class="sbj">05. 개인정보 취급위탁 제공 및 공유 안내 (선택) </span></div>
            <div class="yakgwan">
                 <span class="pol_head">5. 개인정보의 취급위탁 제공 및 공유</span>
                <span class="pol_head2">투어모아에서는 고객의 원활한 서비스 제공을 위하여 위탁업체에 개인정보를 제공할 수 있으며, 이때 필요한 정보의 종류 및 이용 용도, 기간 등을 명시하여 고객의 사전 동의를 받는 경우(위탁과 관련한 자세한 내용은 ‘투어모아 CRM팀’에서 제공), 혹은 보다 나은 서비스의 제공을 위하여 이용자들의 개인정보를 공유할 수 있습니다.</span>
                <span class="pol_head2">투어모아은 서비스 이행을 위해 위탁계약일로부터 계약종료일까지 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약서에 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.</span>
                    <table>
                        <caption>개인정보의 취급위탁 제공 및 공유</caption>
                        <tr>
                            <th scope="col">수탁자</th>
                            <th scope="col">위탁</th>
                            <th scope="col">위탁 업무</th>
                            <th scope="col" class="last">보유·이용기간</th>
                        </tr>
                        <tr>
                            <td class="center">한국모바일인증(주)</td>
                            <td>성명, 통신사, 휴대폰번호,생년월일, 성별, 내국인여부</td>
                            <td>본인확인</td>
                            <td rowspan="2" class="last">해당업체에서 이미 보유하고 있는 개인 정보이므로 별도로 저장하지 않음</td>
                        </tr>
                        <tr>
                            <td class="center">서울신용평가정보(주)</td>
                            <td>I-PIN정보</td>
                            <td>본인확인</td>
                        </tr>
                        <tr>
                            <td class="center">즐거운여행</td>
                            <td>성명(국영문), 계약여행상품내역, 연락처(휴대폰, e-mail주소)</td>
                            <td>공항 송객,여행물품 전달</td>
                            <td rowspan="3" class="last">위탁계약일로부터 계약종료일까지</td>
                        </tr>
                        <tr>
                            <td class="center">에다스</td>
                            <td>성명, 주소,    연락처(휴대폰, e-mail주소)</td>
                            <td >여행물품 배송</td>
                        </tr>
                         <tr>
                       		 <td class="center">트랜스코스모스,스탑뱅크,그린맨파워, ㈜메타넷 엠씨씨</td>
                     		 <td>회원가입시 입력정보, 서비스 이용시 생성된 정보</td>
                      		 <td>고객상담 및 고객불만 처리</td>
                   		 </tr>
                    	<tr>
                        	<td class="center"> (주)옴니텔</td>
                        	<td rowspan="2">휴대폰번호</td>
                        	<td rowspan="2">이벤트 경품 발송</td>
                        	<td rowspan="2" class="last">경품 유효기간 종료 후 3일 이내</td>
                   	 </tr>
                    <tr>
                        <td class="center">(주)조선일보사</td>
                    </tr>
                        <tr>
                    		<td class="center">(주)엠엔와이즈</td>
                    		<td>성명, 휴대폰번호</td>
                    		<td>여행 개시를 위한 사전 안내, 정보전달, 고객만족도 조사 안내 등의 내용 전달</td>
                    		<td class="last">발송일로 부터 60일</td>
                    	</tr>
						  <tr>
                    		<td class="center">효성ITX</td>
                    		<td>상담 파일</td>
                    		<td>상담서비스 품질 평가</td>
                    		<td class="last">별도로 저장하지 않음</td>
                    	</tr>

                    </table>    
                <span class="pol_head2">위탁계약 체결 시 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적∙관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리∙감독∙교육, 손해배상 등의 책임사항을 계약문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지 철저히 감독하고 있습니다</span>
      
   			</div>
            <div class="agree mg0">
               	<input type="checkbox" name="chk_agree05" class="chk_agree" id="chk_agree05">
               	<span class="agree_txt">
               		<label for="chk_agree05">개인정보 취급위탁 제공 및 공유 안내(선택)에 동의 합니다.</label>
               	</span>
            </div>
            <span class="warning mgb10">※ 미동의 시 여행상품 계약 및 계약 후 추가 업무 진행에 있어 재동의 절차가 필요합니다.</span>
            <span class="warning">※ 동의를 하지 않으셔도 검색 및 조회, 상담 서비스는 이용하실수 있습니다.</span>
        	</div> 
	        <div class="join_step">
	            <div class="h2"><span class="sbj">06. 서비스 홍보 및 마케팅 활용(선택)</span></div>
	            <div class="yakgwan service">
	                <span class="pol_head2">다. 서비스 홍보 및 마케팅</span>
	                <span class="pol_desc">투어모아 및 제휴사의 상품안내, 이벤트 등 광고성 정보 전달, 회원의 서비스 이용에 대한 통계, 신규서비스 개발 및 특화, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 회원 대상 각종 마케팅 활동, 고지사항 전달 등</span>
	            </div>
	            <div class="agree mg0">
	                <input type="checkbox" name="chk_agree06" class="chk_agree" id="chk_agree06"><span class="agree_txt"><label for="chk_agree06">서비스 홍보 및 마케팅 활용(선택)에 동의합니다.</label></span>
	            </div>
	            <button type="submit" id="child" class="btnChild" title="투어모아 만 14세 미만 아동 회원가입">투어모아 만 14세 미만 아동 회원가입</button>
	            <span class="agree_info"><input type="checkbox" name="chkAll" class="chkAll" id="chkAll"><label for="chkAll">위의 인터넷 회원 약관(필수), 개인정보 수집 및 이용에 대한 안내(필수), 개인정보 수집 및 이용에 대한 안내(선택), 개인정보 제 3자 제공 및 공유 안내(선택), <br />개인정보 취급위탁 제공 및 공유 안내 (선택) ,서비스 홍보 및 마케팅 활용(선택) 내용을 자세히 읽었으며 모두 동의합니다. 
	            </label></span>
	        </div>			
	        <div class="join_btn">
	            <button type="submit" id="btnok" class="btnY btn_r" title="확인">네, 동의합니다</button><button type="button" id="btncancel" class="btnN" title="취소">아니오, 동의하지 않습니다</button>
	        </div> 	        
    	</section><!--[[ content End ]]-->	    
	</form>	 
	</div><!--[[ wrap End ]]-->
</div>