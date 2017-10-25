<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<link rel="stylesheet" href="/css/mypage.css" />
<%
			String agreeEss01 = request.getParameter("agreeEss01");
			String agreeEss02 = request.getParameter("agreeEss02");
			String plusInfo = request.getParameter("plusInfo");
			String agreeSav = request.getParameter("agreeSav");
			String agreePrv = request.getParameter("agreePrv");
			String agreeShr = request.getParameter("agreeShr");
			String agreeMkt = request.getParameter("agreeMkt");
			String custStatCd = request.getParameter("custStatCd");
			String custPassEnc = request.getParameter("custPassEnc");
			String custNmKor = request.getParameter("custNmKor");
			String custphone = request.getParameter("custphone");
			String custId = request.getParameter("custId");
			String birthDt = request.getParameter("birthDt");
			String email = request.getParameter("email");
			String genderCd = request.getParameter("genderCd");
			String mobileRcpYn = request.getParameter("mobileRcpYn");
			String marryYn = request.getParameter("marryYn");
			String marryDt = request.getParameter("marryDt");
			String emailYn = request.getParameter("emailYn");
			String hidPostNum1 = request.getParameter("hidPostNum1");
			String homeTel = request.getParameter("homeTel");
			String job = request.getParameter("job");
			String hidAddr1_1 = request.getParameter("hidAddr1_1");
			String hidAddr1_2 = request.getParameter("hidAddr1_2");

%>
<script type="text/javaScript" language="javascript" defer="defer">
	$(document).ready(function(){			
		$("#btnok").click(function(){
			
			var param  = "id="+$("input:hidden[id='custId']").val()
				param += "&pwd="+$("#custPassEnc").val()
				param += "&name="+$("#name").val()
				param += "&phone="+$("#custphone").val() 
				param += "&tel="+$("#homeTel").val() 
				param += "&birthday="+$("#birthDt").val() 
				param += "&email="+$("#email").val()
				param += "&gender="+$("#genderCd").val()
				param += "&postnum1="+$("#hidPostNum1").val()
				param += "&addr11="+$("#hidAddr1_1").val()
				param += "&addr12="+$("#hidAddr1_2").val()
				param += "&marry="+$("#marryYn").val()
				param += "&mdate="+$("#marryDt").val()
				param += "&job="+$("#job").val()
				param += "&emailYn="+$("#emailYn").val()
				param += "&mobileRcpYn="+$("#mobileRcpYn").val()
				param += "&agree1="+$("#agreeEss01").val()
				param += "&agree2="+$("#agreeEss02").val();
			
			$.ajax({
				  type:'POST'
				, url:"<c:url value='/mypage/insertJoinSave.do'/>"
				, data:param
				, dataType: 'JSON'
			   
				,success:function(data) {
					if(data.result == "ok"){
						alert("환영합니다.");
						location.href = "/main.do";
					}else{
						alert("오류가 발생했습니다.");
						window.reload();
					}
				}
				, error: function() {
					alert('Loading Error! ');
				}
			
		   });				
		});			
		$("#btncancel").click(function(){
			history.back(-1);
		});			
	});	
</script> 
<form name="mbrFrm" id="mbrFrm" method="post" action="/mypage/joinStep05.do">
	<input type="hidden" name="custId" 				id="custId" 				value="<%=custId %>" /><!-- 아이디 -->
	<input type="hidden" name="custPassEnc" 	id="custPassEnc" 		value="<%=custPassEnc %>" /><!-- 비밀번호 -->
	<input type="hidden" name="name" 			id="name" 				value="<%=custNmKor%>" /><!-- 이름 -->
	<input type="hidden" name="custphone" 		id="custphone" 		    value="<%=custphone%>" /><!-- 이름 -->
	<input type="hidden" name="genderCd" 		id="genderCd" 			value="<%=genderCd%>" /><!-- 성별 -->
	<input type="hidden" name="email" 			id="email" 				value="<%=email%>" /><!-- FULL 이메일 -->
	<input type="hidden" name="email1" 			id="email1" 			value="" /><!-- 이메일 ID -->
	<input type="hidden" name="email2" 			id="email2" 			value="" /><!-- 이메일 도메인 -->
	<input type="hidden" name="emailYn" 		id="emailYn" 			value="<%=emailYn %>" /><!-- 이메일 수신여부 -->
	<input type="hidden" name="mobileTel" 		id="mobileTel" 			value="" /><!-- 전화번호 -->
	<input type="hidden" name="mobileRcpYn" 	id="mobileRcpYn" 		value="" /><!-- 모바일 수신여부 -->
	<input type="hidden" name="homeTel" 		id="homeTel" 			value="<%=homeTel %>" /><!-- 집전화번호 -->
	<input type="hidden" name="zipCd" 			id="zipCd" 				value="" /><!-- 우편번호 -->
	<input type="hidden" name="custAddr" 		id="custAddr" 			value="" /><!-- 기본주소 -->
	<input type="hidden" name="custAddrDetail" 	id="custAddrDetail" 	value="" /><!-- 상세주소 -->
	<input type="hidden" name="jobCd" 			id="jobCd" 				value="" /><!-- 직업코드 -->
	<input type="hidden" name="birthDt" 		id="birthDt" 			value="<%=birthDt%>" /><!-- 생년월일 -->
	<input type="hidden" name="marryYn" 		id="marryYn" 			value="<%=marryYn %>" /><!-- 결혼여부 -->
	<input type="hidden" name="marryDt" 		id="marryDt" 			value="<%=marryDt %>" /><!-- 결혼년월일 -->
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
	<input type="hidden" name="job"				id="job"				value="<%=job%>"/>
	<input type="hidden" name="mobileRcpYn"		id="mobileRcpYn"		value="<%=mobileRcpYn%>"/><!-- SMS 수신동의/거부 -->
	<input type="hidden" name="agreeEss01" 		id="agreeEss01" 		value="<%=agreeEss01%>" />
    <input type="hidden" name="agreeEss02" 		id="agreeEss02" 		value="<%=agreeEss02%>" />
    <input type="hidden" name="hidPostNum1"		id="hidPostNum1"		value="<%=hidPostNum1%>"/>        
	<input type="hidden" name="hidAddr1_1"		id="hidAddr1_1"			value="<%=hidAddr1_1%>"/>        
	<input type="hidden" name="hidAddr1_2"		id="hidAddr1_2"			value="<%=hidAddr1_2%>"/>    
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
					<td><%=custId%></td>
				</tr>
				<tr>
					<th scope="row">성명<span class="chk"></span></th>
					<td><%=custNmKor%></td>
				</tr>
				<tr>
					<th scope="row">이메일<span class="chk"></span></th>
					<td><%=email%></td>
				</tr>
				<tr>
					<th scope="row">휴대폰번호<span class="chk"></span></th>
					<td><%=custphone%></td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td><%=birthDt%></td> 
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
