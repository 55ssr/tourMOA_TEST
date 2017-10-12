<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/css/customer.css" />
    <script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	$('.lnb02').addClass('lnb02 on'); $("ul.sub_2").css("display","block");       $('.sub02_03').addClass('sub02_03 on'); $('#one').show();
	
	//고객의소리
	 
	
	//소비자중심경영
	
    
    //서비스안내
    
}

$( document ).ready(function() {
	fnMenuSelect();
	$('#lnb').mouseleave(function(){
        setTimeout(function() {
        	$("#one > li").removeClass('on'); // 1depth 초기화
        	$("ul.sub").css("display","none"); // 2depth 사라짐
        	$("ul.sub > li").removeClass('on'); // 2depth 초기화
            fnMenuSelect();
        }, 3000);
    });
});

function loginConfirm(){
	
			document.location.href='/customer/complaintWrite.do';
		 
}
</script>
    <section id="content"><!--[[ content Start ]]-->
    	<div class="estimate_form">
			<h2 class="tit_estimate_inquiry"><img src="/images/customer/tit_customer_estimate_inquiry.png" alt="견적문의" /></h2>
			<div class="ct_add_txt">
				<em>나에게 딱 맞는 여행을 찾고 계신가요?  고객님이 원하시는 내용으로 맞춤 상담해드립니다. <span>[게시판운영시간  |  평일 09:00 ~ 18:00]</span></em>
				<p>문의주신 내용의 답변은 업무일 기준으로 24시간 내에 메일로 발송되며 카카오알림톡으로 처리결과를 발송해드립니다.
					<span>※ 주말, 공휴일의 경우는 평일 업무시간 개시 이후 순차적으로 답변 진행해드립니다.</span>
				</p>
			</div>
			
		<form name="frm" id="frm" method="post" action="/customer/insertEstimateInfo.do">
			<input type="hidden" name="regType" id="regType" value="H" />
			<input type="hidden" name="statCd" id="statCd" value="UCF" />
			<input type="hidden" name="cstTel" id="cstTel" value="" />
			<input type="hidden" name="cstEmail" id="cstEmail" value="" />
		
			<div class="tbl_wrap02">
				<table class="tbl_horizontal_type bdb_type01">
					<caption>여행타입 선택</caption>
					<colgroup>
						<col style="width:130px" /><col style="width:420px" /><col style="width:130px" /><col style="width:420px" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행타입</th>
							<td colspan="3">
				<!-- [공통코드 - 여행종류] Start -->
								<ul class="sub_choice_in">
						<li>
							<input type="radio" id="rdo_travrvTypeCd1" name="travrvTypeCd" value="FFC" onclick="fn_setTravrvType('FFC');"/>
								<label for="rdo_travrvTypeCd1">자유여행[해외]</label>
									</li>
						<li>
							<input type="radio" id="rdo_travrvTypeCd2" name="travrvTypeCd" value="HYM" onclick="fn_setTravrvType('HYM');"/>
								<label for="rdo_travrvTypeCd2">허니문</label>
									</li>
						<li>
							<input type="radio" id="rdo_travrvTypeCd3" name="travrvTypeCd" value="GOLF" onclick="fn_setTravrvType('GOLF');"/>
								<label for="rdo_travrvTypeCd3">골프</label>
									</li>
						<li>
							<input type="radio" id="rdo_travrvTypeCd4" name="travrvTypeCd" value="HYL" onclick="fn_setTravrvType('HYL');"/>
								<label for="rdo_travrvTypeCd4">성지순례</label>
									</li>
						<li>
							<input type="radio" id="rdo_travrvTypeCd5" name="travrvTypeCd" value="COMP_GROUP" onclick="fn_setTravrvType('COMP_GROUP');"/>
								<label for="rdo_travrvTypeCd5">기업/단체</label>
									</li>
						<li>
							<input type="radio" id="rdo_travrvTypeCd6" name="travrvTypeCd" value="FDMA" onclick="fn_setTravrvType('FDMA');"/>
								<label for="rdo_travrvTypeCd6">국내여행[제주]-단체</label>
									</li>
						<li>
							<input type="radio" id="rdo_travrvTypeCd7" name="travrvTypeCd" value="FDMI" onclick="fn_setTravrvType('FDMI');"/>
								<label for="rdo_travrvTypeCd7">국내여행[내륙]-단체</label>
									</li>
						</ul>
						<!-- [공통코드 - 여행종류] End -->
					</td>
						</tr>
					</tbody>
				</table>
				<div id="rdo_travrvTypeCd1" style="display:block;">
				<h3 class="tit_estimate_form">1. 문의 고객 정보<span class="sub_txt">※ <img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential">필수입력 정보입니다.</span></h3>
				
				<table class="tbl_horizontal_type bd_type01">
					<caption>문의 고객 정보 입력</caption>
					<colgroup>
						<col style="width:130px" />
						<col style="width:420px" />
						<col style="width:130px" />
						<col style="width:420px" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />성함</th>
							<td><input type="text" class="input_default" style="width:183px" name="cstNm" id ="cstNm" maxlength="40"/></td>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />이메일</th>
							<td>
								<input type="text" class="input_default input_space02" style="width:87px" name="cstEmail1" id="cstEmail1" maxlength="40"/><span class="txt_mail_division">@</span><input type="text" class="input_default input_space" style="width:87px" name="cstEmail2" id="cstEmail2" maxlength="40"/>
								<!-- [공통코드 - 메일리스트] Start -->
								<select class="sel_default input_space" style="width:134px" name="cstEmail3" id="cstEmail3">
									<option value="">직접입력</option>
								<option value="naver.com" >naver.com</option>
								<option value="nate.com" >nate.com</option>
								<option value="hanmail.net" >hanmail.net</option>
								<option value="dreamwiz.com" >dreamwiz.com</option>
								<option value="lycos.co.kr" >lycos.co.kr</option>
								<option value="gmail.com" >gmail.com</option>
								<option value="hotmail.com" >hotmail.com</option>
								<option value="paran.com" >paran.com</option>
								<option value="yahoo.co.kr" >yahoo.co.kr</option>
								<option value="empal.com" >empal.com</option>
								<option value="unitel.co.kr" >unitel.co.kr</option>
								<option value="korea.com" >korea.com</option>
								<option value="chol.com" >chol.com</option>
								<option value="freechal.com" >freechal.com</option>
								</select>
								<!-- [공통코드 - 메일리스트] End -->
							</td>
						</tr>
						<tr>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />연락처</th>
							<td>
								<!-- [공통코드 - 국번리스트] Start -->
								<select class="sel_default" style="width:84px" name="cstTel1" id="cstTel1">
								<option value="010" >010</option>
								<option value="011" >011</option>
								<option value="016" >016</option>
								<option value="017" >017</option>
								<option value="018" >018</option>
								<option value="019" >019</option>
								</select><!-- [공통코드 - 국번리스트] End --><span class="space">-</span><input type="text" class="input_default" style="width:84px" name="cstTel2" id="cstTel2" maxlength="4" /><span class="space">-</span><input type="text" class="input_default" style="width:84px" name="cstTel3" id="cstTel3" maxlength="4" />
								<input type="button" value="인증하기" class="estimate_btn_confirm" role-w="550" role-h="378" role-url="/customer/prcEstimateSmsPopup.do" />
							</td>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />통화가능시간</th>
							<td>
								<ul class="sub_choice_in">
									<li><input type="radio" id="callDiviCd01" name="callDiviCd" value="X" onclick="clickCallTmButton('X');"/><label for="callDiviCd01">안함</label></li>
									<li><input type="radio" id="callDiviCd02" name="callDiviCd" value="" checked="checked" onclick="clickCallTmButton('');"/><label for="callDiviCd02">상관없음</label></li>
									<li class="last">
										<input type="radio" id="callDiviCd03" name="callDiviCd" value="C" onclick="clickCallTmButton('C');"/><label for="callDiviCd03" class="input_space04">선택</label>
										<!-- [공통코드 - 시간리스트] Start -->							
										<select class="sel_default" style="width:132px" name="callTm" id="callTm">
											<option value="">시간선택</option>
											<option value="TM1" >09:00~10:00</option>
											<option value="TM2" >10:00~11:00</option>
											<option value="TM3" >11:00~12:00</option>
											<option value="TM4" >12:00~13:00</option>
											<option value="TM5" >13:00~14:00</option>
											<option value="TM6" >14:00~15:00</option>
											<option value="TM7" >15:00~16:00</option>
											<option value="TM8" >16:00~17:00</option>
											<option value="TM9" >17:00~18:00</option>
										</select>
										<!-- [공통코드 - 시간리스트] End -->
									</li>
								</ul>
							</td>
						</tr>
					<!-- [여행타입 : 성지순례 - 소속 및 단체명, 소속 소재지입력란 활성화] Start -->
					<!-- [여행타입 : 성지순례 - 소속 및 단체명, 소속 소재지입력란 활성화] End -->
					
				<!-- [기본값 : 여행인원, 여행경비 활성화] Start -->
						<tr>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행인원</th>
							<td>
								<span class="txt_sel">성인
									<!-- [공통코드 - 여행인원리스트] Start --> 
									<select class="sel_default input_space03" style="width:77px" id="rervAdtCnt" name="rervAdtCnt">
										<option value="">선택</option>
								<option value="1" >1명</option>
									<option value="2" >2명</option>
									<option value="3" >3명</option>
									<option value="4" >4명</option>
									<option value="5" >5명</option>
									<option value="6" >6명</option>
									<option value="7" >7명</option>
									<option value="8" >8명</option>
									<option value="9" >9명</option>
									<option value="10" >10명</option>
									<option value="11" >11명</option>
									</select>
									<!-- [공통코드 - 여행인원리스트] End -->
								</span>
								<span class="txt_sel">소아
									<!-- [공통코드 - 여행인원리스트] Start --> 
									<select class="sel_default input_space03" style="width:77px" id="rervChdCnt" name="rervChdCnt">
									<option value="0" >0명</option>
									<option value="1" >1명</option>
									<option value="2" >2명</option>
									<option value="3" >3명</option>
									<option value="4" >4명</option>
									<option value="5" >5명</option>
									<option value="6" >6명</option>
									<option value="7" >7명</option>
									<option value="8" >8명</option>
									<option value="9" >9명</option>
									<option value="10" >10명</option>
									</select>
									<!-- [공통코드 - 여행인원리스트] End -->
								</span>
								<span class="txt_sel">유아 
									<!-- [공통코드 - 여행인원리스트] Start -->							
									<select class="sel_default" style="width:77px" id="rervInfCnt" name="rervInfCnt">
									<option value="0" >0명</option>
									<option value="1" >1명</option>
									<option value="2" >2명</option>
									<option value="3" >3명</option>
									<option value="4" >4명</option>
									<option value="5" >5명</option>
									<option value="6" >6명</option>
									<option value="7" >7명</option>
									<option value="8" >8명</option>
									<option value="9" >9명</option>
									<option value="10" >10명</option>
									</select>
									<!-- [공통코드 - 여행인원리스트] End -->
								</span>
							</td>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행경비</th>
							<td>
								<span class="txt_sel">1인당 
									<!-- [공통코드 - 여행경비리스트] Start -->
									<select class="sel_default" style="width:203px" name="travrvMny" id="travrvMny">
										<option value="">선택</option>
									<option value="IT1" >30만원 미만</option>
									<option value="IT2" >30만 ~ 50만원</option>
									<option value="IT3" >50만 ~ 70만원</option>
									<option value="IT4" >70만 ~ 100만원</option>
									<option value="IT5" >100만원 이상</option>
									</select>
									<!-- [공통코드 - 여행경비리스트] End -->
								</span>
							</td>
						</tr>
						<!-- [기본값 : 여행인원, 여행경비 활성화] End -->
					</tbody>
				</table>
					
				<h3 class="tit_estimate_form">2. 여행 기본 정보</h3>
				
				<table class="tbl_horizontal_type bdt_type01">
					<caption>여행 기본 정보 입력</caption>
					<colgroup>
						<col style="width:130px" />
						<col style="width:970px" />
					</colgroup>
					<tbody>
			<!-- [여행타입 : 자유여행[제주], 하이호주 - 여행지역 비활성화] Start -->
						<tr id="tr_TravrvArea" >
					<!-- [여행타입 : 자유여행[제주], 하이호주 - 여행지역 비활성화] End -->
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행지역</th>
							<td>
								<input type="hidden" name="travrvAreaDetail" id="travrvAreaDetail" value="">
								<div id="div_Area_FFC" class="div_Area" style="">
									<div class="country_select">
										<ul class="sub_choice_in">
						<!-- [여행지역 1차 설정] Start -->
						<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_55" value="55" onclick="fn_setTravrvAreaFst('FFC','55')" checked="checked" >
												<label for="rdo_FFC_55">유럽/지중해</label>
									</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_58" value="58" onclick="fn_setTravrvAreaFst('FFC','58')">
												<label for="rdo_FFC_58">동남아</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_56" value="56" onclick="fn_setTravrvAreaFst('FFC','56')">
												<label for="rdo_FFC_56">일본</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_300" value="300" onclick="fn_setTravrvAreaFst('FFC','300')">
												<label for="rdo_FFC_300">중국</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_57" value="57" onclick="fn_setTravrvAreaFst('FFC','57')">
												<label for="rdo_FFC_57">홍콩/마카오/대만</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_59" value="59" onclick="fn_setTravrvAreaFst('FFC','59')">
												<label for="rdo_FFC_59">미주/하와이</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_60" value="60" onclick="fn_setTravrvAreaFst('FFC','60')">
												<label for="rdo_FFC_60">호주</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_295" value="295" onclick="fn_setTravrvAreaFst('FFC','295')">
												<label for="rdo_FFC_295">몰디브</label>
											</li>
								<li>
												<input type="radio" name="travrvArea" class="travrvAreaFst" id="rdo_FFC_11" value="11" onclick="fn_setTravrvAreaFst('FFC','11')">
												<label for="rdo_FFC_11">괌/사이판</label>
											</li>
								<!-- [여행지역 1차 설정] End -->
										</ul>
									</div>
					<!-- [여행지역 2차 설정] Start -->	
					<div class="sub_country_select" id="div_AreaDtl_FFC_55" style="">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_160" value="160">
												<label for="chk_FFC_55_160">프랑스</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_161" value="161">
												<label for="chk_FFC_55_161">스위스</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_162" value="162">
												<label for="chk_FFC_55_162">이탈리아</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_163" value="163">
												<label for="chk_FFC_55_163">영국</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_164" value="164">
												<label for="chk_FFC_55_164">스페인/포르투갈</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_165" value="165">
												<label for="chk_FFC_55_165">독일</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_166" value="166">
												<label for="chk_FFC_55_166">체코(프라하)</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_167" value="167">
												<label for="chk_FFC_55_167">오스트리아</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_168" value="168">
												<label for="chk_FFC_55_168">헝가리</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_169" value="169">
												<label for="chk_FFC_55_169">크로아티아</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_170" value="170">
												<label for="chk_FFC_55_170">그리스(산토리니)</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_275" value="275">
												<label for="chk_FFC_55_275">북유럽</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_55_276" value="276">
												<label for="chk_FFC_55_276">기타지역</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_58" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_104" value="104">
												<label for="chk_FFC_58_104">싱가포르</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_105" value="105">
												<label for="chk_FFC_58_105">코타키나발루</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_106" value="106">
												<label for="chk_FFC_58_106">페낭</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_107" value="107">
												<label for="chk_FFC_58_107">랑카위</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_108" value="108">
												<label for="chk_FFC_58_108">발리</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_109" value="109">
												<label for="chk_FFC_58_109">롬복</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_277" value="277">
												<label for="chk_FFC_58_277">하노이</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_278" value="278">
												<label for="chk_FFC_58_278">호치민</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_279" value="279">
												<label for="chk_FFC_58_279">다낭</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_280" value="280">
												<label for="chk_FFC_58_280">나트랑</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_281" value="281">
												<label for="chk_FFC_58_281">씨엠립</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_282" value="282">
												<label for="chk_FFC_58_282">세부</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_283" value="283">
												<label for="chk_FFC_58_283">보라카이</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_284" value="284">
												<label for="chk_FFC_58_284">마닐라</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_285" value="285">
												<label for="chk_FFC_58_285">보홀</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_286" value="286">
												<label for="chk_FFC_58_286">방콕/파타야</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_287" value="287">
												<label for="chk_FFC_58_287">푸켓/카오락</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_58_288" value="288">
												<label for="chk_FFC_58_288">치앙마이</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_56" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_56_95" value="95">
												<label for="chk_FFC_56_95">북해도</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_56_96" value="96">
												<label for="chk_FFC_56_96">동경</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_56_97" value="97">
												<label for="chk_FFC_56_97">간사이/나고야</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_56_98" value="98">
												<label for="chk_FFC_56_98">큐슈</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_56_99" value="99">
												<label for="chk_FFC_56_99">오키나와</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_56_171" value="171">
												<label for="chk_FFC_56_171">기타지역</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_300" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_300_301" value="301">
												<label for="chk_FFC_300_301">북경</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_300_302" value="302">
												<label for="chk_FFC_300_302">상해</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_300_303" value="303">
												<label for="chk_FFC_300_303">청도</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_300_304" value="304">
												<label for="chk_FFC_300_304">하이난</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_57" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_57_100" value="100">
												<label for="chk_FFC_57_100">홍콩</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_57_101" value="101">
												<label for="chk_FFC_57_101">마카오</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_57_102" value="102">
												<label for="chk_FFC_57_102">타이페이</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_57_103" value="103">
												<label for="chk_FFC_57_103">타이중</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_57_299" value="299">
												<label for="chk_FFC_57_299">까오슝 </label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_59" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_111" value="111">
												<label for="chk_FFC_59_111">오아후</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_112" value="112">
												<label for="chk_FFC_59_112">마우이</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_263" value="263">
												<label for="chk_FFC_59_263">빅아일랜드</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_289" value="289">
												<label for="chk_FFC_59_289">라스베이거스&오아후</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_290" value="290">
												<label for="chk_FFC_59_290">미서부</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_291" value="291">
												<label for="chk_FFC_59_291">미동부</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_292" value="292">
												<label for="chk_FFC_59_292">2개이상 연계지역(미본토)</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_59_293" value="293">
												<label for="chk_FFC_59_293">기타지역</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_60" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_60_113" value="113">
												<label for="chk_FFC_60_113">시드니/골드코스트</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_60_114" value="114">
												<label for="chk_FFC_60_114">멜버른/케언즈</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_60_115" value="115">
												<label for="chk_FFC_60_115">울룰루/태즈매니아</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_60_294" value="294">
												<label for="chk_FFC_60_294">기타지역</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_295" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_295_296" value="296">
												<label for="chk_FFC_295_296">올인크루시브</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_295_297" value="297">
												<label for="chk_FFC_295_297">하프보드(HB)</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_295_298" value="298">
												<label for="chk_FFC_295_298">기타</label>
											</li>
								</ul>
									</div>
					<div class="sub_country_select" id="div_AreaDtl_FFC_11" style="display:none;">
							<ul class="sub_choice_in">
						<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_11_12" value="12">
												<label for="chk_FFC_11_12">괌</label>
											</li>
								<li>
												<input type="checkbox" name="chk_travrvAreaDetail" id="chk_FFC_11_13" value="13">
												<label for="chk_FFC_11_13">사이판</label>
											</li>
								</ul>
									</div>
					<!-- [여행지역 2차 설정] End -->
								</div>
							</td>
						</tr>
				<!-- [여행타입:하이호주인 경우 상품명 설정] Start -->
					<!-- [여행타입:하이호주인 경우 상품명 설정] End -->
					<!-- [여행타입:하이호주가 아닌 경우 여행기간 설정] Start -->
					<tr>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행기간</th>
							<td>
								<span class="date_sel">
									<label for="in_start">출발일</label>
									<input type="text" id="startDt" name="startDt" class="input_date input_space02" style="width:111px; height:30px;" readonly="readonly"/>
									~
									<label for="in_arrive" class="input_space">도착일</label>
									<input type="text" id="endDt" name="endDt" class="input_date input_space02"  style="width:111px; height:30px;" readonly="readonly" />
								</span>
								<span class="st_date_change">
									<em>출발일변경가능</em>
									<ul class="sub_choice_in">
							<!-- [출발일 변경 설정] Start -->
							<li>
								<input type="radio" name="startChange" id="불가" value="SC1" checked="checked"/>
									<label for="불가">불가</label>
									</span>
										</li>
							<li>
								<input type="radio" name="startChange" id="3일 이내" value="SC2"/>
									<label for="3일 이내">3일 이내</label>
									</span>
										</li>
							<li>
								<input type="radio" name="startChange" id="7일 이내" value="SC3"/>
									<label for="7일 이내">7일 이내</label>
									</span>
										</li>
							<!-- [출발일 변경 설정] End -->
									</ul>
								</span>
							</td>
						</tr>
					<!-- [여행타입:하이호주가 아닌 경우 여행기간 설정] End -->
			
			<!-- [항목 설정 Start] -->
	<tr id="tr_Item_FFC_29" class="tr_Item tr_Item_FFC tr_Item_travrvAir" style="">
							<th scope="row">항공권<input type="hidden" class="item_korName" name="travrvAirNm" id="travrvAirNm" value="항공권">
								<input type="hidden" class="item_title" name="travrvAir" id="travrvAir" value="">
								<input type="hidden" class="item_other" name="travrvAirOther" id="travrvAirOther" value="">
							</th>
							<td>
								<ul class="sub_choice_in">
			<li>
										<input type="checkbox" name="chk_travrvAir" id="chk_Item_FFC_29_10" value="10">
										<label for="chk_Item_FFC_29_10">추천요망</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_travrvAirOther" 
											id="txt_Item_FFC_29_10_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_travrvAir" id="chk_Item_FFC_29_11" value="11">
										<label for="chk_Item_FFC_29_11">직항선호</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_travrvAirOther" 
											id="txt_Item_FFC_29_11_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_travrvAir" id="chk_Item_FFC_29_22" value="22">
										<label for="chk_Item_FFC_29_22">국적기선호</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_travrvAirOther" 
											id="txt_Item_FFC_29_22_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_travrvAir" id="chk_Item_FFC_29_23" value="23">
										<label for="chk_Item_FFC_29_23">경유항공</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_travrvAirOther" 
											id="txt_Item_FFC_29_23_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_travrvAir" id="chk_Item_FFC_29_24" value="24">
										<label for="chk_Item_FFC_29_24">저가항공</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_travrvAirOther" 
											id="txt_Item_FFC_29_24_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_travrvAir" id="chk_Item_FFC_29_122" value="122">
										<label for="chk_Item_FFC_29_122">항공권보유</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_travrvAirOther" 
											id="txt_Item_FFC_29_122_Other" maxlength="40" value="">
									</li>
							</td>
						</tr>
			<tr id="tr_Item_FFC_30" class="tr_Item tr_Item_FFC tr_Item_accomm" style="">
							<th scope="row">숙소<input type="hidden" class="item_korName" name="accommNm" id="accommNm" value="숙소">
								<input type="hidden" class="item_title" name="accomm" id="accomm" value="">
								<input type="hidden" class="item_other" name="accommOther" id="accommOther" value="">
							</th>
							<td>
								<ul class="sub_choice_in">
			<li>
										<input type="checkbox" name="chk_accomm" id="chk_Item_FFC_30_25" value="25">
										<label for="chk_Item_FFC_30_25">민박,호스텔</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_accommOther" 
											id="txt_Item_FFC_30_25_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_accomm" id="chk_Item_FFC_30_26" value="26">
										<label for="chk_Item_FFC_30_26">투어리스트급호텔(3성급)</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_accommOther" 
											id="txt_Item_FFC_30_26_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_accomm" id="chk_Item_FFC_30_27" value="27">
										<label for="chk_Item_FFC_30_27">일급호텔(4성급)</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_accommOther" 
											id="txt_Item_FFC_30_27_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_accomm" id="chk_Item_FFC_30_29" value="29">
										<label for="chk_Item_FFC_30_29">특급호텔(5성급)</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_accommOther" 
											id="txt_Item_FFC_30_29_Other" maxlength="40" value="">
									</li>
							<li>
										<input type="checkbox" name="chk_accomm" id="chk_Item_FFC_30_110" value="110">
										<label for="chk_Item_FFC_30_110">숙박필요없음</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px;display: none;" name="chk_accommOther" 
											id="txt_Item_FFC_30_110_Other" maxlength="40" value="">
									</li>
							<li class="clearfix"></li>
					<li>
										<input type="checkbox" name="chk_accomm" id="chk_Item_FFC_30_111" value="111" onclick="fn_ToggleEnable(this.id);">
										<label for="chk_Item_FFC_30_111">원하는숙박</label>
										<input type="text" class="input_default input_space02 item_val" style="width:90px" name="chk_accommOther"
											onclick="fn_ResetText(this.id);"
											id="txt_Item_FFC_30_111_Other" maxlength="40" value="숙박명" disabled="disabled">
									</li>
							</td>
						</tr>
			<!-- [항목 설정 End] -->
						<tr>
							<th scope="row">요청사항</th>
							<td>
								<textarea cols="5" rows="5" style="width:908px; height:128px" placeholder="도시, 체류일정을 구체적으로 작성해 주세요.ex) 파리 2일 - 프라하 2일 - 비엔나 1일" class="text_default" id="contents" name="contents"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box_type">
				<em>개인정보 수집/이용 동의 안내</em>
				<p>입력하신 개인정보는 견적문의 회원관리에 사용되며 보유/이용기간 후 폐기됩니다.</p>
				<ul>
					<li>- 개인정보의 수집 목적 : 견적문의에 대한 회원 관리</li>
					<li>- 수집하는 개인정보의 항목 : 성명, 연락처, 이메일 </li>
					<li>- 보유 및 이용기간 : <span class="f_bold">작성일로부터 6개월</span></li>
					<li>- 고객님은 동의를 거부 하실 수 있으며, 거부 시 견적문의에 대한 회신을 받아보실 수 없습니다.</li>
				</ul>
			</div>
			<div class="privacy_agree_box">
				<p><input type="checkbox" id="inEstimateAgree" name= "inEstimateAgree"/><label for="inEstimateAgree">개인정보 수집/이용 동의</label></p>
				<input type="submit" value="등록" class="bt_right bt_type bd_type02" id="btnOK">
			</div>			
		</form>			
		</div>
	</section>
	<script type="text/javaScript" language="javascript" defer="defer">

	var datepickerOption = {
		beforeShow:function( input, inst ) {
			var dp = $(inst.dpDiv);
			var offset = $(input).outerWidth(false) - dp.outerWidth(false) + 1;
			dp.css('margin-left', offset);
		}
		, showMonthAfterYear: true
		, minDate: 1
	};
	
	var datepickerFromOption = {
			beforeShow:function( input, inst ) {
				var dp = $(inst.dpDiv);
				var offset = $(input).outerWidth(false) - dp.outerWidth(false) + 1;
				dp.css('margin-left', 0);
				dp.css('margin-right', offset);
			}
			, showMonthAfterYear: true
			, minDate: 1
			, onSelect: function(selected) {
				$("#endDt").datepicker("option","minDate", selected)	
			}
		};
	
	var datepickerToOption = {
			beforeShow:function( input, inst ) {
				var dp = $(inst.dpDiv);
				var offset = $(input).outerWidth(false) - dp.outerWidth(false) + 1;
				dp.css('margin-left', offset);
				dp.css('margin-right', 0);
			}
			, showMonthAfterYear: true
			, minDate: 1
			, onSelect: function(selected) {
				//$("#startDt").datepicker("option","maxDate", selected)
			}
		};

	$(document).ready(function(){
		
		// [Event 바인딩]
		
		// 이메일 Domain을 select로 선택시 Disabled처리
		$("#cstEmail3").change(function(){
			if ( $(this).val() == '') {
				$("#cstEmail2").attr("disabled",false);
				$("#cstEmail2").focus();
				$("#cstEmail2").val("");
			} else {
				$("#cstEmail2").val($(this).val());
				$("#cstEmail2").attr("disabled",true);
			}
		});
		
		// 통화가능시간 변경시 Disabled 처리
		$("input[name=callDiviCd]").change(function(){
			if( $(this).val() != "C" ) {
				$("#callTm").attr("disabled",true);
				$("#callTm").attr("style", "width: 132px;background-color: rgb(235, 235, 228);cursor: default;");
			} else {
				$("#callTm").attr("disabled",false);
				$("#callTm").attr("style", "width: 132px;cursor: pointer;");
			}
		});
		
		// 예식일 달력세팅
		$("#venueDt1").datepicker(datepickerOption);
		
		// 여행기간 시작 달력세팅
		$("#startDt").datepicker(datepickerFromOption);
		
		// 여행기간 종료 달력세팅
		$("#endDt").datepicker(datepickerToOption);
		
		// 핸드폰 중간번호 숫자만 입력
		$("#cstTel2").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});
		
		// 핸드폰 마지막번호 숫자만 입력
		$("#cstTel3").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});
		
		// 예식시간 - 숫자만 입력, 24시 이상로 입력 Empty String 처리
		$("#venueDt2").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		    this.value = Number(this.value) > 24 ? "" : this.value;
		});
		
		// 예식분 - 숫자만 입력, 60이상으로 입력하면 Empty String 처리
		$("#venueDt3").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		    this.value = Number(this.value) > 60 ? "" : this.value; 
		});
		
	
		// 기업/단체인 경우 여행인원 숫자만 입력
		$("#rervAdtCnt:text").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});
		$("#rervChdCnt:text").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});
		$("#rervInfCnt:text").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});
		
		
		// 제주인 경우 여행형태에 라디오 이벤트 바인딩
		var travrvTypeCd = "FFC";
		if( travrvTypeCd == "FDMA" ) {
			// 여행행태
			var moveTypeArr = $("tr.tr_Item_moveType > td > ul > li");
			for(var i=0; i<moveTypeArr.size(); i++) {
				var val = moveTypeArr.eq(i).text().trim();
				moveTypeArr.eq(i).find("input:radio").bind("click", function(e) {
					fn_moveType( $(this).parent().text().trim() );
				});
			}
		}
		
		// 등록버튼 클릭시 저장함수 호출
		$("#btnOK").click(function(){
			fn_save();
			return false;
		});
		
		
		// 로딩시 컴포넌트 초기처리
		
		// 통화 가능 시간 combo box disabled 처리
		$("#callTm").attr("disabled",true);
		$("#callTm").attr("style", "width: 132px;background-color: rgb(235, 235, 228);cursor: default;");
		
        
		// 인증하기 팝업
		$('.estimate_btn_confirm').on('click', function() {
			var popVal = "cstTel1="+$("#cstTel1").val()+"&cstTel2="+$("#cstTel2").val()+"&cstTel3="+$("#cstTel3").val();
			var popupUrl = "/customer/prcEstimateSmsPopup.do?"+popVal;
			$(this).attr("role-url", popupUrl);
	
			if($("#cstTel1").val() == ""){
				alert("휴대폰 번호를 입력해주세요.");
				$("#cstTel1").focus();
				return false;
			} else if($("#cstTel2").val() == "") {
				alert("휴대폰 번호를 입력해주세요.");
				$("#cstTel2").focus();
				return false;
			} else if($("#cstTel3").val() == ""){
				alert("휴대폰 번호를 입력해주세요.");
				$("#cstTel3").focus();
				return false;
			}
 			showLayer(this);
		});
		
	});
	
	
	// 통화 가능 시간 선택시
	function clickCallTmButton(object) {
		
		if (object == "C") {
			$("#callTm").attr("disabled",false);	
		} else {
			$("#callTm").attr("disabled",true);
			$("#callTm").val("");	
		}
		
	}
	
	
	// 입력값 설정
	function fn_setInputValue() {

		var cstEmail1 = $("#cstEmail1").val();
		var cstEmail2 = $("#cstEmail2").val();
		var cstEmail3 = $("#cstEmail3").val();
		
		var cstTel1 = $("#cstTel1").val();
		var cstTel2 = $("#cstTel2").val();
		var cstTel3 = $("#cstTel3").val();
		
		var venueDt1 = $("#venueDt1").val();
		var venueDt2 = $("#venueDt2").val();
		var venueDt3 = $("#venueDt3").val();
		
		$("#cstTel").val( cstTel1+"-"+cstTel2+"-"+cstTel3 );
		$("#cstEmail").val( (cstEmail3 == "" ? cstEmail1+"@"+cstEmail2 : cstEmail1+"@"+cstEmail3) );
		
		if( $("#venueDtChk").is(":checked") ) {
			$("#venueDt").val( "" );
		} else {
			$("#venueDt").val( (venueDt1+" "+venueDt2+":"+venueDt3+":00") );	
		}
		
		
		// 선택된 여행타입
		var travrvTypeCd = "FFC";
		
		if( travrvTypeCd != "FDMI" ) {
			var travrvAreaDetailCd = $("#div_Area_"+travrvTypeCd).find("input:radio:checked").val();
			var travrvAreaDetailArr = $("#div_AreaDtl_"+travrvTypeCd+"_"+travrvAreaDetailCd).find("input:checkbox:checked");
			var travrvAreaDetailVal = "";
			
			// 여행타입별 아이템 항목값 추출
			for( var i=0; i<travrvAreaDetailArr.size(); i++ ) {
				
				var item = travrvAreaDetailArr.eq(i);
				
				// 체크 선택 항목
				if( item.is(":checked") ) {
					travrvAreaDetailVal += item.val() + ",";
				}
				
			}
			$("#travrvAreaDetail").val(travrvAreaDetailVal);
		}			
		
		// 여행타입별 항목
		var items = $("tr.tr_Item_"+travrvTypeCd);
		
		// 여행타입별 아이템 항목값 추출
		for( var i=0; i<items.size(); i++ ) {
			
			var item = items.eq(i);
			var itemObj = item.find("input.item_title").eq(0);
			var itemOther = item.find("input.item_other").eq(0);
			
			// 라디오 선택항목
			if( item.find("input:radio").size() > 0 ) {
				
				var rdoArr = item.find("input:radio");
				var rdoVal = "";
				var rdoOtherArr = item.find("input.item_val");
				var rdoOtherVal = "";
				
				for( var j=0; j<rdoArr.size(); j++ ) {
					if( rdoArr.eq(j).is(":checked") ) {
						rdoVal = rdoArr.eq(j).val();
						rdoOtherVal = rdoOtherArr.eq(j).val();
					}
				}
				
				itemObj.val(rdoVal);
				itemOther.val(rdoOtherVal);
				
			}
			// 체크 선택 항목
			else if( item.find("input:checkbox").size() > 0 ) {
				
				var chkArr = item.find("input:checkbox");
				var chkVal = "";
				var chkOtherArr = item.find("input.item_val");
				var chkOtherVal = "";
				
				for( var j=0; j<chkArr.size(); j++ ) {
					if( chkArr.eq(j).is(":checked") ) {
						chkVal += chkArr.eq(j).val() + ",";
						chkOtherVal += chkOtherArr.eq(j).val() + " ,";
					}
				}
				
				itemObj.val(chkVal);
				itemOther.val(chkOtherVal);
				
			}
			
		}
		
	}
	
	
	// 저장
	function fn_save() {
		
		// 입력값 설정
		fn_setInputValue();
		
		var valArea1 = "FFC";
		var valArea2 = $("input[name=travrvArea]:checked").val()
		var focusArea = "div_AreaDtl_"+valArea1+"_"+valArea2;
		var focusName = "chk_travrvAreaDetail";
		var validateArr = [];
		
		// [자유여행 해외] 벨리데이션 체크
		if( valArea1 == "FFC" ) {
			
			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "여행지역", name : "travrvArea" }
				, { title : "여행상세지역", name : "travrvAreaDetail", focusArea : focusArea, focusName : focusName }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
			
		}
		// [국내여행 제주] 벨리데이션 체크
		else if( valArea1 == "FDMA" ) {
			
			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt" }
				, { title : "여행인원", name : "rervAdtCnt", type : "sum", refId : "rervAdtCnt,rervChdCnt,rervInfCnt", minVal : 10, minPreMsg : "은" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
			
		}
		// [국내여행 내륙] 벨리데이션 체크
		else if( valArea1 == "FDMI" ) {
			
			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt", minVal : 1, minPreMsg : "은" }
				, { title : "여행인원", name : "rervAdtCnt", type : "sum", refId : "rervAdtCnt,rervChdCnt,rervInfCnt", minVal : 20, minPreMsg : "은" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "여행지역", name : "travrvArea" }
				, { title : "출발지/출발시각", name : "travrvAreaDetail" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
			
		}
		// [골프] 벨리데이션 체크
		else if( valArea1 == "GOLF" ) {
				
			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
			
		}
		// [허니문] 벨리데이션 체크
		else if( valArea1 == "HYM" ) {
			
			validateArr.push( { title : "성명", name : "cstNm" } );
			validateArr.push( { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" } );
			validateArr.push( { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" } );
			validateArr.push( { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." } );
			
			// 예식일이 미정이 아닌경우 체크
			if( !$("#venueDtChk").is(":checked") ) {
				validateArr.push( { title : "예식일", name : "venueDt1" } );
				validateArr.push( { title : "예식시간", name : "venueDt2" } );
				validateArr.push( { title : "예식분", name : "venueDt3" } );	
			}
			
			validateArr.push( { title : "여행경비", name : "travrvMny", midText : "를" } );
			validateArr.push( { title : "여행상세지역", name : "travrvAreaDetail", focusArea : focusArea, focusName : focusName } );
			validateArr.push( { title : "출발일", name : "startDt" } );
			validateArr.push( { title : "도착일", name : "endDt" } );
			validateArr.push( { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." } );
				
		
		}
		// [성지순례] 벨리데이션 체크
		else if( valArea1 == "HYL" ) {
			
			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "소속 및 단체명", name : "grpNm" }
				//, { title : "소속소재지", name : "grpAddr" }
				, { title : "성인인원", name : "rervAdtCnt" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
			
		}
		// [기업/단체] 벨리데이션 체크
		else if( valArea1 == "COMP_GROUP" ) {

			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt", minVal : 1, minPreMsg : "은" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "여행지역", name : "travrvArea" }
				, { title : "여행상세지역", name : "travrvAreaDetail", focusArea : focusArea, focusName : focusName }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
		
		}
		// [하이호주] 벨리데이션 체크
		else if( valArea1 == "HI_HOJOO" ) {

			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt" }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
		
		}
		else {
		
			validateArr = [
				  { title : "성명", name : "cstNm" }
				, { title : "이메일주소", name : "cstEmail", type: "email", refId : "cstEmail1,cstEmail2", midText : "를" }
				, { title : "연락처", name : "cstTel", type: "tel", refId : "cstTel1,cstTel2,cstTel3", midText : "를" }
				, { title : "시간", name : "callTm", type: "condition", refName : "callDiviCd", refVal : "C", msg : "시간을 선택해주세요." }
				, { title : "성인인원", name : "rervAdtCnt" }
				, { title : "여행경비", name : "travrvMny", midText : "를" }
				, { title : "여행지역", name : "travrvArea" }
				, { title : "여행상세지역", name : "travrvAreaDetail", focusArea : focusArea, focusName : focusName }
				, { title : "출발일", name : "startDt" }
				, { title : "도착일", name : "endDt" }
				, { title : "개인정보 수집/이용", name : "inEstimateAgree", msg : "개인정보 수집/이용에 동의하셔야 견적문의를 하실 수 있습니다." }
			];
		
		}
		
		// 유효성검증 체크
		if( !fn_validate( "frm", validateArr ) ) { 
			return false;
		}
		
		// 휴대폰인증여부 확인
		if( $(".estimate_btn_confirm").val() == "인증하기" ) {
			alert("휴대폰 인증을 진행해주세요.");
			$(".estimate_btn_confirm").focus();
			return false;
		}
		
		
		if( $("#rervChdCnt").val() == "" ) {
			$("#rervChdCnt").val("0");	
		}
		if( $("#rervInfCnt").val() == "" ) {
			$("#rervInfCnt").val("0");	
		}
		
		
		// 필요없는 파라미터는 제거후 저장
		var frmArr = $("#frm").serializeArray();
		for(var i=frmArr.length-1; i>=0; i--) {
			if( frmArr[i].name.indexOf("chk_") > -1 || 
				frmArr[i].name.indexOf("rdo_") > -1 || 
				frmArr[i].name.indexOf("1") > -1 || 
				frmArr[i].name.indexOf("2") > -1 || 
				frmArr[i].name.indexOf("3") > -1 
		    	) {
				frmArr.splice(i,1);
			}
		}

		var frmParam = "";
		for(var i=0; i<frmArr.length; i++) {
			frmParam+="&"+frmArr[i].name+"="+frmArr[i].value;
		}
		
		var emailVal = $("#cstEmail").val();
		var cfmMsg = "입력하신 내용으로 견적문의를 하시겠습니까?\n답변이 완료되면 ["+emailVal+"]으로 발송해드립니다.";

		if( confirm(cfmMsg) ) {
			$.ajax({
				  type:"POST"	
				, url: "/customer/insertEstimateInfo.do"
				, data:$("#frm").serialize()
				, dataType: 'json'
				, async: true
				, success:function(jsonResult) {
					alert("견적문의가 완료되었습니다. \n담당자가 최대한 빠른시간내에 최적의 스케줄, 가격으로 견적을 발송해드리겠습니다. \n견적은 작성하신 메일로 발송됩니다.");
					document.location.href="/customer/estimateReq.do";
					return true;
				}
				, error: function() {
					//alert("견적문의 요청이 실패하였습니다. \n새로고침 후 다시 시도해주세요.");
				}
		
		 	});	
		}
		return false;

	}
	
	// 유효성 검증
	function fn_validate( formId, validateOptionArr ) {
		
		var retVal = true;
		var defOption = {
			  title : ""
			, name : ""
			, type : "default"
			, refId : ""
			, refName : ""
			, refVal : ""
			, focusArea : ""
			, focusName : ""
			, midText : "을"
			, msg : ""
			, minVal : 0
			, minPreMsg : ""
			, minUnitMsg : "명"
			, minPostMsg : "이상 입력하여주세요."
		};
		
		for( var i=0; i<validateOptionArr.length; i++ ) {
			
			var option = {};
			var validateOption = validateOptionArr[i];
			for(var key in defOption) option[key] = defOption[key];
			for(var key in validateOption) option[key] = validateOption[key];
			
			if( typeof formId == "undefined" || formId == "" || formId == null ) {
				alert( "Form Id is not Exists." );
				retVal = false;
				break;
			}
			if( option.title == "" ) {
				alert( "Object Title is not Exists." );
				retVal = false;
				break;
			}
			if( option.name == "" ) {
				alert( "Object Name is not Exists." );
				retVal = false;
				break;
			}
			
			var obj = $("#"+formId).find("[name="+option.name+"]");
			if( obj.length == 0 ) {
				alert( "Object is not Exists." );
				retVal = false;
				break;
			}
			
			
			var msg = "";
			var focusId = "";
			
			switch( option.type ) {
			
				case "default":
					var objVal = obj.val();
					if( obj.attr("type") == "checkbox" ) {
						objVal = obj.is(":checked") ? "1" : "";
					}
					if( objVal == "" ) {
						msg = option.title + option.midText + " 입력하여주세요.";
						retVal = false;
						break;
					}
					
					if( option.minVal > Number(objVal) ) {
						msg = option.title + option.minPreMsg + " " + option.minVal + option.minUnitMsg + " " + option.minPostMsg;
						retVal = false;
						break;
					}
					
					break;
					
				case "email": 
					var refIdArr = option.refId.split(",");
					var refVal = option.refVal;
					for( var j=0; j<refIdArr.length; j++ ) {
						var objVal = $("#"+refIdArr[j]).val();
						if( objVal == refVal ) {
							msg = option.title + option.midText + " 입력하여주세요.";
							retVal = false;
							focusId = $("#"+refIdArr[j]).attr("id");
							break;
						}
					}
					break;
					
				case "tel":
					var refIdArr = option.refId.split(",");
					var refVal = option.refVal;
					for( var j=0; j<refIdArr.length; j++ ) {
						var objVal = $("#"+refIdArr[j]).val();
						if( objVal == refVal ) {
							msg = option.title + option.midText + " 입력하여주세요.";
							retVal = false;
							focusId = $("#"+refIdArr[j]).attr("id");
							break;
						}
					}
					break;
					
				case "condition": 
					var refName = option.refName;
					var refVal = option.refVal;									
					if( $("[name="+refName+"]:checked").val() == refVal ) {
						if( obj.val() == "" ) {
							msg = option.title + option.midText + " 입력하여주세요.";
							retVal = false;
							break;
						}
					}
					break;

				case "sum":
					var refIdArr = option.refId.split(",");
					var minVal = option.minVal;
					var sumVal = 0;
					for( var j=0; j<refIdArr.length; j++ ) {
						sumVal += Number($("#"+refIdArr[j]).val());
					}
					if( sumVal < minVal ) {
						msg = option.title + option.minPreMsg + " " + option.minVal + option.minUnitMsg + " " + option.minPostMsg;
						retVal = false;
					}
					
					break;
						
				default : 
					break;
			}
			
			if( !retVal ) {
				
				if( option.msg != "" ) {
					msg = option.msg;
				}
				alert( msg );
				
				if( option.focusArea != "" && option.focusName != "" ) {
					$("#"+option.focusArea).find("[name="+option.focusName+"]").eq(0).focus();
				} else if( focusId != "" ) {
					$("#"+focusId).focus();
				} else {
					obj.focus();	
				}
				
				break;
			}
			
		}
		
		return retVal;
		
	}
	
	
	// [function] 여행타입 변경
	function fn_setTravrvType( travrvAreaCd ) {
		var obj1 = document.getElementById("rdo_travrvTypeCd1");
		var obj2 = document.getElementById("rdo_travrvTypeCd2");
		var obj3 = document.getElementById("rdo_travrvTypeCd3");
		var obj4 = document.getElementById("rdo_travrvTypeCd4");
		var obj5 = document.getElementById("rdo_travrvTypeCd5");
		var obj6 = document.getElementById("rdo_travrvTypeCd6");
		
		if( travrvAreaCd == "rdo_travrvTypeCd1" ) { // 자유여행내용
			obj1.style.display = "block";	
			obj2.style.display = "none";
			obj3.style.display = "none";
			obj4.style.display = "none";
			obj5.style.display = "none";
			obj6.style.display = "none";
		} else if ( travrvAreaCd == "rdo_travrvTypeCd2" ){ // 허니문내용
			obj1.style.display = "none";	
			obj2.style.display = "block";
			obj3.style.display = "none";
			obj4.style.display = "none";
			obj5.style.display = "none";
			obj6.style.display = "none";
		} else if ( travrvAreaCd == "rdo_travrvTypeCd3" ){ // 골프
			obj1.style.display = "none";	
			obj2.style.display = "none";
			obj3.style.display = "block";
			obj4.style.display = "none";
			obj5.style.display = "none";
			obj6.style.display = "none";
		} else if ( travrvAreaCd == "rdo_travrvTypeCd4" ){ // 골프
			obj1.style.display = "none";	
			obj2.style.display = "none";
			obj3.style.display = "none";
			obj4.style.display = "block";
			obj5.style.display = "none";
			obj6.style.display = "none";
		} else if ( travrvAreaCd == "rdo_travrvTypeCd5" ){ // 골프
			obj1.style.display = "none";	
			obj2.style.display = "none";
			obj3.style.display = "none";
			obj4.style.display = "none";
			obj5.style.display = "block";
			obj6.style.display = "none";
		} 		
		else{
			obj1.style.display = "none";	
			obj2.style.display = "none";
			obj3.style.display = "none";
			obj4.style.display = "none";
			obj5.style.display = "none";
			obj6.style.display = "block";
		}
		document.location.href='/customer/estimateReq.do?travrvTypeCd='+travrvAreaCd;
		
	}
	
	// [function] 1차 여행지역 변경
	function fn_setTravrvAreaFst( travrvAreaCd, travrvAreaId ) {
		
		// 1. 여행지역설정
		$(".sub_country_select").hide();
		$("#div_AreaDtl_"+travrvAreaCd+"_"+travrvAreaId ).show();
		
		// 2. 여행지역상세 설정
		$(".sub_country_select :checkbox").attr("checked", false);
		
		// 3. 요청사항 Text 변경
		if( ( travrvAreaCd == "FFC" && travrvAreaId == 55 ) || ( travrvAreaCd == "HYM" && travrvAreaId == 69 ) ) {
			msgText = "도시, 체류일정을 구체적으로 작성해 주세요.ex) 파리 2일 - 프라하 2일 - 비엔나 1일";
		} else {
			msgText = "원하는 일정, 도시 등 간략 일정을 작성해 주세요.";
		}
		$("#contents").attr("placeholder", msgText );
		
	}

	// [function] 예식일 미정 체크
	function fn_venueDtChk() {
		
		if( $("#venueDtChk").is(":checked") ) {
			
			$("#venueDt1").val("");
			$("#venueDt2").val("");
			$("#venueDt3").val("");
			$("#venueDt1").attr("disabled", true);
			$("#venueDt2").attr("disabled", true);
			$("#venueDt3").attr("disabled", true);
			$("#venueDt1").datepicker("disable");
			$("#venueDt1").attr("style", "width: 111px;background-color: rgb(235, 235, 228);cursor: default;");
			
		} else {
			
			$("#venueDt1").val("");
			$("#venueDt2").val("");
			$("#venueDt3").val("");
			$("#venueDt1").attr("disabled", false);
			$("#venueDt2").attr("disabled", false);
			$("#venueDt3").attr("disabled", false);
			$("#venueDt1").datepicker("enable");
			$("#venueDt1").attr("style", "width: 111px;cursor: pointer;");
			
		}
		
	}
	
	
	// [function] 제주인 경우 여행형태에 따라 항공권, 숙소, 여행지역, 렌터카영역의 입력처리
	function fn_moveType( val ) {
		
		if( val == "에어카텔" ) {
			$(".tr_Item_travrvAir").show();	// 항공권 - O
			$(".tr_Item_accomm").show();	// 숙소 - O
			$(".tr_Item_region").show();	// 지역 - O
			$(".tr_Item_rentedCar").show();	// 렌터카 - O
		} else if( val == "에어텔" ) {
			$(".tr_Item_travrvAir").show();	// 항공권 - O
			$(".tr_Item_accomm").show();	// 숙소 - O
			$(".tr_Item_region").show();	// 지역 - O
			$(".tr_Item_rentedCar").hide();	// 렌터카 - X
		} else if( val == "카텔" ) {
			$(".tr_Item_travrvAir").hide();	// 항공권 - X
			$(".tr_Item_accomm").show();	// 숙소 - O
			$(".tr_Item_region").show();	// 지역 - O
			$(".tr_Item_rentedCar").show();	// 렌터카 - O
		} else if( val == "에어카" ) {
			$(".tr_Item_travrvAir").show();	// 항공권 - O
			$(".tr_Item_accomm").hide();	// 숙소 - X
			$(".tr_Item_region").hide();	// 지역 - X
			$(".tr_Item_rentedCar").show();	// 렌터카 - O
		} else if( val == "단체버스패키지" ) {
			$(".tr_Item_travrvAir").hide();	// 항공권 - X
			$(".tr_Item_accomm").hide();	// 숙소 - X
			$(".tr_Item_region").hide();	// 지역 - X
			$(".tr_Item_rentedCar").hide();	// 렌터카 - X
		} else {
			$(".tr_Item_travrvAir").hide();	// 항공권 - X
			$(".tr_Item_accomm").hide();	// 숙소 - X
			$(".tr_Item_region").hide();	// 지역 - X
			$(".tr_Item_rentedCar").hide();	// 렌터카 - X
		}
		
	}
	
	
	function fn_ToggleEnable( objId ) {
		
		if( $("#"+objId.replace("chk_","txt_")+"_Other").attr("disabled") == "disabled" ) {
			$("#"+objId.replace("chk_","txt_")+"_Other").attr("disabled",false);
		} else {
			$("#"+objId.replace("chk_","txt_")+"_Other").val("");
			$("#"+objId.replace("chk_","txt_")+"_Other").attr("disabled",true);
		}
		
	} 
	
	function fn_ResetText( objId ) {
		$("#"+objId).val("");
	}
	
	
</script>
</div>