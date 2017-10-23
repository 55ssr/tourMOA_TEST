<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>

<link rel="stylesheet" href="/css/customer.css" />

    <section id="content"><!--[[ content Start ]]-->
    	<div class="estimate_form">
			<h2 class="tit_estimate_inquiry"><img src="/images/customer/tit_customer_estimate_inquiry.png" alt="견적문의" /></h2>
			<div class="ct_add_txt">
				<em>나에게 딱 맞는 여행을 찾고 계신가요?  고객님이 원하시는 내용으로 맞춤 상담해드립니다. <span>[게시판운영시간  |  평일 09:00 ~ 18:00]</span></em>
				<p>문의주신 내용의 답변은 업무일 기준으로 24시간 내에 메일로 발송되며 카카오알림톡으로 처리결과를 발송해드립니다.
					<span>※ 주말, 공휴일의 경우는 평일 업무시간 개시 이후 순차적으로 답변 진행해드립니다.</span>
				</p>
			</div>
			
			<form name="frm" id="frm" method="post">
			<input type="hidden" name="userid" value="" />
			<input type="hidden" name="phone" id="phone" value="" />
			<input type="hidden" name="email" id="email" value="" />
			<input type="hidden" name="inestimateagree" id="inestimateagree" value="" />
						
			<table class="tbl_horizontal_type bdb_type01">
				<caption>여행타입 선택</caption>
				<colgroup>
					<col style="width:130px;" />
					<col style="width:970px;" />
				</colgroup>
				<tbody>
					<!-- [견적 제목 입력] Start -->
					<tr>
						<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />제목</th>
						<td>				
							<ul class="sub_choice_in">
								<li>
									<input type="text" name="title" style="width:910px; height:30px; padding-left:10px;" id="title" value=""/>
								</li>									
							</ul>							
						</td>
					</tr>
					<!-- [견적 제목 입력] End -->
				</tbody>
			</table>				
			<div id="rdo_travrvTypeCd1" style="display:block;">
				<h3 class="tit_estimate_form">1. 문의 고객 정보<span class="sub_txt">※ <img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential">필수입력 정보입니다.</span></h3>
				
				<!-- [고객정보 입력] Start -->				
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
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />성함 | 단체명</th>
							<td><input type="text" class="input_default" style="width:183px; height:16px;" name="name" id="name" maxlength="40" /></td>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />이메일</th>
							<td>
								<input type="text" class="input_default input_space02" style="width:87px; height:16px;" name="cstEmail1" id="cstEmail1" maxlength="40"/><span class="txt_mail_division">@</span><input type="text" class="input_default input_space" style="width:87px; height:16px;" name="cstEmail2" id="cstEmail2" maxlength="40"/>
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
								</select><!-- [공통코드 - 국번리스트] End --><span class="space">-</span><input type="text" class="input_default" style="width:84px; height:16px;" name="cstTel2" id="cstTel2" maxlength="4" /><span class="space">-</span><input type="text" class="input_default" style="width:84px; height:16px;" name="cstTel3" id="cstTel3" maxlength="4" />
								<input type="button" value="인증하기" class="estimate_btn_confirm" role-w="550" role-h="378" />
							</td>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />통화가능시간</th>
							<td>
								<ul class="sub_choice_in">
									<li><input type="radio" id="r_r_ptime01" name="r_r_ptime" value="X" onclick="clickptimeButton('X');"/><label for="r_r_ptime01">안함</label></li>
									<li><input type="radio" id="r_r_ptime02" name="r_r_ptime" value="" checked="checked" onclick="clickptimeButton('');"/><label for="r_r_ptime02">상관없음</label></li>
									<li class="last">
										<input type="radio" id="r_r_ptime03" name="r_r_ptime" value="C" onclick="clickptimeButton('C');"/><label for="r_r_ptime03" class="input_space04">선택</label>
										<!-- [공통코드 - 시간리스트] Start -->							
										<select class="sel_default" style="width:132px" name="ptime" id="ptime">
											<option value="">시간선택</option>
											<option value="09:00~10:00" >09:00~10:00</option>
											<option value="10:00~11:00" >10:00~11:00</option>
											<option value="11:00~12:00" >11:00~12:00</option>
											<option value="12:00~13:00" >12:00~13:00</option>
											<option value="13:00~14:00" >13:00~14:00</option>
											<option value="14:00~15:00" >14:00~15:00</option>
											<option value="15:00~16:00" >15:00~16:00</option>
											<option value="16:00~17:00" >16:00~17:00</option>
											<option value="17:00~18:00" >17:00~18:00</option>
										</select>
										<!-- [공통코드 - 시간리스트] End -->
									</li>
								</ul>
							</td>
						</tr>					
						<!-- [기본값 : 여행인원, 여행경비 활성화] Start -->						
						<tr>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행인원</th>
							<td>
								<span class="txt_sel">성인
									<!-- [공통코드 - 여행인원리스트] Start --> 
									<select class="sel_default input_space03" style="width:77px" id="person" name="person">
										<option value="0" >선택</option>
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
								<span class="txt_sel">
									소아 및 유아의 경우 상담시 진행합니다.
								</span>
							</td>
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행경비</th>
							<td>
								<span class="txt_sel">1인당 
									<!-- [공통코드 - 여행경비리스트] Start -->
									<select class="sel_default" style="width:203px" name="money" id="money">
										<option value="">선택</option>
										<option value="30만원 미만" >30만원 미만</option>
										<option value="30만 ~ 50만원" >30만 ~ 50만원</option>
										<option value="50만 ~ 70만원" >50만 ~ 70만원</option>
										<option value="70만 ~ 100만원" >70만 ~ 100만원</option>
										<option value="100만원 이상" >100만원 이상</option>
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
						<col style="width:420px" />
						<col style="width:130px" />
						<col style="width:420px" />
					</colgroup>
					<tbody>
			<!-- [여행타입 : 자유여행[제주], 하이호주 - 여행지역 비활성화] Start -->
						<tr id="tr_floc" >
					<!-- [여행타입 : 자유여행[제주], 하이호주 - 여행지역 비활성화] End -->
							<th scope="row"><img src="/images/customer/03_bul01.png" alt="필수입력" class="ico_essential" />여행지역</th>
							<td colspan="3">
								<input type="hidden" name="flocDetail" id="flocDetail" value="">
								<div id="div_Area_FFC" class="div_Area" style="">
									<div class="country_select">
										<ul class="sub_choice_in">
										<!-- [여행지역 1차 설정] Start -->
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_55" value="유럽/지중해" onclick="fn_setflocFst('FFC','55')" >
												<label for="rdo_FFC_55">유럽/지중해</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_58" value="동남아" onclick="fn_setflocFst('FFC','58')">
												<label for="rdo_FFC_58">동남아</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_56" value="일본" onclick="fn_setflocFst('FFC','56')">
												<label for="rdo_FFC_56">일본</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_300" value="중국" onclick="fn_setflocFst('FFC','300')">
												<label for="rdo_FFC_300">중국</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_57" value="홍콩/마카오/대만" onclick="fn_setflocFst('FFC','57')">
												<label for="rdo_FFC_57">홍콩/마카오/대만</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_59" value="미주/하와이" onclick="fn_setflocFst('FFC','59')">
												<label for="rdo_FFC_59">미주/하와이</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_60" value="호주" onclick="fn_setflocFst('FFC','60')">
												<label for="rdo_FFC_60">호주</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_295" value="몰디브" onclick="fn_setflocFst('FFC','295')">
												<label for="rdo_FFC_295">몰디브</label>
											</li>
											<li>
												<input type="radio" name="floc" class="flocFst" id="rdo_FFC_11" value="괌/사이판" onclick="fn_setflocFst('FFC','11')">
												<label for="rdo_FFC_11">괌/사이판</label>
											</li>
										<!-- [여행지역 1차 설정] End -->
										</ul>
									</div>
									<!-- [여행지역 2차 설정] Start -->	
									<div class="sub_country_select" id="div_AreaDtl_FFC_55" style="">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_160" value="프랑스"/>
												<label for="chk_FFC_55_160">프랑스</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_161" value="스위스"/>
												<label for="chk_FFC_55_161">스위스</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_162" value="이탈리아"/>
												<label for="chk_FFC_55_162">이탈리아</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_163" value="영국"/>
												<label for="chk_FFC_55_163">영국</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_164" value="스페인/포르투갈"/>
												<label for="chk_FFC_55_164">스페인/포르투갈</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_165" value="독일"/>
												<label for="chk_FFC_55_165">독일</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_166" value="체코(프라하)"/>
												<label for="chk_FFC_55_166">체코(프라하)</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_167" value="오스트리아"/>
												<label for="chk_FFC_55_167">오스트리아</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_168" value="헝가리"/>
												<label for="chk_FFC_55_168">헝가리</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_169" value="크로아티아"/>
												<label for="chk_FFC_55_169">크로아티아</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_170" value="그리스(산토리니)"/>
												<label for="chk_FFC_55_170">그리스(산토리니)</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_275" value="북유럽"/>
												<label for="chk_FFC_55_275">북유럽</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_55_276" value="기타지역"/>
												<label for="chk_FFC_55_276">기타지역</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_58" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_104" value="싱가포르"/>
												<label for="chk_FFC_58_104">싱가포르</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_105" value="코타키나발루"/>
												<label for="chk_FFC_58_105">코타키나발루</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_106" value="페낭"/>
												<label for="chk_FFC_58_106">페낭</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_107" value="랑카위"/>
												<label for="chk_FFC_58_107">랑카위</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_108" value="발리"/>
												<label for="chk_FFC_58_108">발리</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_109" value="롬복"/>
												<label for="chk_FFC_58_109">롬복</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_277" value="하노이"/>
												<label for="chk_FFC_58_277">하노이</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_278" value="호치민"/>
												<label for="chk_FFC_58_278">호치민</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_279" value="다낭"/>
												<label for="chk_FFC_58_279">다낭</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_280" value="나트랑"/>
												<label for="chk_FFC_58_280">나트랑</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_281" value="씨엠립"/>
												<label for="chk_FFC_58_281">씨엠립</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_282" value="세부"/>
												<label for="chk_FFC_58_282">세부</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_283" value="보라카이"/>
												<label for="chk_FFC_58_283">보라카이</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_284" value="마닐라"/>
												<label for="chk_FFC_58_284">마닐라</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_285" value="보홀"/>
												<label for="chk_FFC_58_285">보홀</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_286" value="방콕/파타야"/>
												<label for="chk_FFC_58_286">방콕/파타야</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_287" value="푸켓/카오락"/>
												<label for="chk_FFC_58_287">푸켓/카오락</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_58_288" value="치앙마이"/>
												<label for="chk_FFC_58_288">치앙마이</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_56" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_56_95" value="북해도"/>
												<label for="chk_FFC_56_95">북해도</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_56_96" value="동경"/>
												<label for="chk_FFC_56_96">동경</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_56_97" value="간사이/나고야"/>
												<label for="chk_FFC_56_97">간사이/나고야</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_56_98" value="큐슈"/>
												<label for="chk_FFC_56_98">큐슈</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_56_99" value="오키나와"/>
												<label for="chk_FFC_56_99">오키나와</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_56_171" value="기타지역"/>
												<label for="chk_FFC_56_171">기타지역</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_300" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_300_301" value="북경"/>
												<label for="chk_FFC_300_301">북경</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_300_302" value="상해"/>
												<label for="chk_FFC_300_302">상해</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_300_303" value="청도"/>
												<label for="chk_FFC_300_303">청도</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_300_304" value="하이난"/>
												<label for="chk_FFC_300_304">하이난</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_57" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_57_100" value="홍콩"/>
												<label for="chk_FFC_57_100">홍콩</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_57_101" value="마카오"/>
												<label for="chk_FFC_57_101">마카오</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_57_102" value="타이페이"/>
												<label for="chk_FFC_57_102">타이페이</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_57_103" value="타이중"/>
												<label for="chk_FFC_57_103">타이중</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_57_299" value="까오슝"/>
												<label for="chk_FFC_57_299">까오슝 </label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_59" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_111" value="오아후"/>
												<label for="chk_FFC_59_111">오아후</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_112" value="마우이"/>
												<label for="chk_FFC_59_112">마우이</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_263" value="빅아일랜드"/>
												<label for="chk_FFC_59_263">빅아일랜드</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_289" value="라스베이거스&오아후"/>
												<label for="chk_FFC_59_289">라스베이거스&오아후</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_290" value="미서부"/>
												<label for="chk_FFC_59_290">미서부</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_291" value="미동부"/>
												<label for="chk_FFC_59_291">미동부</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_292" value="2개이상 연계지역(미본토)"/>
												<label for="chk_FFC_59_292">2개이상 연계지역(미본토)</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_59_293" value="기타지역"/>
												<label for="chk_FFC_59_293">기타지역</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_60" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_60_113" value="시드니/골드코스트"/>
												<label for="chk_FFC_60_113">시드니/골드코스트</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_60_114" value="멜버른/케언즈"/>
												<label for="chk_FFC_60_114">멜버른/케언즈</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_60_115" value="울룰루/태즈매니아"/>
												<label for="chk_FFC_60_115">울룰루/태즈매니아</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_60_294" value="기타지역"/>
												<label for="chk_FFC_60_294">기타지역</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_295" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_295_296" value="올인크루시브"/>
												<label for="chk_FFC_295_296">올인크루시브</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_295_297" value="하프보드(HB)"/>
												<label for="chk_FFC_295_297">하프보드(HB)</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_295_298" value="기타"/>
												<label for="chk_FFC_295_298">기타</label>
											</li>
										</ul>
									</div>
									<div class="sub_country_select" id="div_AreaDtl_FFC_11" style="display:none;">
										<ul class="sub_choice_in">
											<li>
												<input type="checkbox" name="city" id="chk_FFC_11_12" value="괌"/>
												<label for="chk_FFC_11_12">괌</label>
											</li>
											<li>
												<input type="checkbox" name="city" id="chk_FFC_11_13" value="사이판"/>
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
							<td colspan="3">
								<span class="date_sel">
									<label for="in_start">출발일</label>
									<input type="text" id="sdate" name="sdate" class="input_date input_space02" style="width:111px; height:16px;" readonly="readonly"/>
									~
									<label for="in_arrive" class="input_space">도착일</label>
									<input type="text" id="edate" name="edate" class="input_date input_space02"  style="width:111px; height:16px;" readonly="readonly" />
								</span>
								<span class="st_date_change">
									<em>출발일변경가능</em>
									<ul class="sub_choice_in">
									<!-- [출발일 변경 설정] Start -->
										<li>
											<input type="radio" name="schange" id="불가" value="불가" checked="checked"/>
											<label for="불가">불가</label>								
										</li>								
										<li>
											<input type="radio" name="schange" id="3일 이내" value="3일 이내"/>
											<label for="3일 이내">3일 이내</label>
								
										</li>
										<li>
											<input type="radio" name="schange" id="7일 이내" value="7일 이내"/>
											<label for="7일 이내">7일 이내</label>								
										</li>
									<!-- [출발일 변경 설정] End -->
									</ul>
								</span>
							</td>
						</tr>
						<!-- [여행타입:하이호주가 아닌 경우 여행기간 설정] End -->
			
						<!-- [항목 설정 Start] -->
						<tr id="tr_Item_FFC_29" class="tr_Item tr_Item_FFC tr_Item_travrvAir" style="">
							<th scope="row">선호항공사
								<input type="hidden" class="item_korName" name="travrvAirNm" id="travrvAirNm" value="항공사">
								<input type="hidden" class="item_title" name="travrvAir" id="travrvAir" value="">
								<input type="hidden" class="item_other" name="travrvAirOther" id="travrvAirOther" value="">
							</th>
							<td>
								<ul class="sub_choice_in">
									<li>
										<input type="radio" name="airline" id="chk_Item_FFC_29_10" value="대한항공">
										<label for="chk_Item_FFC_29_10">대한항공</label>
									</li>
									<li>
										<input type="radio" name="airline" id="chk_Item_FFC_29_11" value="아시아나">
										<label for="chk_Item_FFC_29_11">아시아나</label>
									</li>
									<li>
										<input type="radio" name="airline" id="chk_Item_FFC_29_11" value="제주항공">
										<label for="chk_Item_FFC_29_11">제주항공</label>
									</li>
								</ul>
							</td>
							<th scope="row">경유지</th>
							<td>
								<ul class="sub_choice_in">
								<!-- [출발일 변경 설정] Start -->
									<li>
										<input type="radio" name="passage" id="불가" value="N"/>
										<label for="불가">불가</label>								
									</li>								
									<li>
										<input type="radio" name="passage" id="가능" value="Y"/>
										<label for="가능">가능</label>
							
									</li>
									<li>
										<input type="radio" name="passage" id="미선택" value="R"/>
										<label for="미선택">미선택</label>								
									</li>
								<!-- [출발일 변경 설정] End -->
								</ul>
							</td>							
						</tr>
						<tr id="tr_Item_FFC_30" class="tr_Item tr_Item_FFC tr_Item_accomm" style="">
							<th scope="row">숙소<input type="hidden" class="item_korName" name="accommNm" id="accommNm" value="숙소">
								<input type="hidden" class="item_title" name="accomm" id="accomm" value="">
								<input type="hidden" class="item_other" name="accommOther" id="accommOther" value="">
							</th>
							<td colspan="3">
								<ul class="sub_choice_in">
									<li>
										<input type="checkbox" name="stay" id="chk_Item_FFC_30_25" value="민박,호스텔">
										<label for="chk_Item_FFC_30_25">민박,호스텔</label>
									</li>
									<li>
										<input type="checkbox" name="stay" id="chk_Item_FFC_30_26" value="투어리스트급호텔(3성급)">
										<label for="chk_Item_FFC_30_26">투어리스트급호텔(3성급)</label>
									</li>
									<li>
										<input type="checkbox" name="stay" id="chk_Item_FFC_30_27" value="일급호텔(4성급)">
										<label for="chk_Item_FFC_30_27">일급호텔(4성급)</label>
									</li>
									<li>
										<input type="checkbox" name="stay" id="chk_Item_FFC_30_29" value="특급호텔(5성급)">
										<label for="chk_Item_FFC_30_29">특급호텔(5성급)</label>
									</li>
									<li>
										<input type="checkbox" name="stay" id="chk_Item_FFC_30_110" value="숙박필요없음">
										<label for="chk_Item_FFC_30_110">숙박필요없음</label>										
									</li>
									<li class="clearfix"></li>
									<li>
										<input type="checkbox" name="chk_stayname" id="chk_Item_FFC_30_111" value="" onclick="fn_ToggleEnable(this.id);">
										<label for="chk_Item_FFC_30_111">원하는숙박</label>
										<input type="text" class="input_default input_space02 item_val" style="width:180px; height:16px;" name="stayname"
											onclick="fn_ResetText(this.id);"
											id="txt_Item_FFC_30_111_Other" maxlength="40" value="숙박명" disabled="disabled">
									</li>
								</ul>	
								</td>
							</tr>
							<!-- [항목 설정 End] -->
							<tr>
								<th scope="row">요청사항</th>
								<td colspan="3">
									<textarea cols="5" rows="5" style="width:908px; height:128px" placeholder="도시, 체류일정을 구체적으로 작성해 주세요.ex) 파리 2일 - 프라하 2일 - 비엔나 1일" class="text_default" id="req" name="req"></textarea>
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
						<!-- <p><input type="checkbox" id="agree" name="agree" /><label for="agree">개인정보 수집/이용 동의</label></p> -->
						<p><input type="checkbox" id="agree" name="agree" /><label for="agree">개인정보 수집/이용 동의</label></p>
						<input type="button" value="등록" class="bt_right bt_type bd_type02" id="btnOK" onclick="fn_save(this.id)" />
					</div>			
				</form>			
			</div>
		</section>
	<script type="text/javaScript" defer="defer">

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
				$("#edate").datepicker("option","minDate", selected)	
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
				//$("#sdate").datepicker("option","maxDate", selected)
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
		$("input[name=r_r_ptime]").change(function(){
			if( $(this).val() != "C" ) {
				$("#ptime").attr("disabled",true);
				$("#ptime").attr("style", "width: 132px;background-color: rgb(235, 235, 228);cursor: default;");
			} else {
				$("#ptime").attr("disabled",false);
				$("#ptime").attr("style", "width: 132px;cursor: pointer;");
			}
		});
		
		
		// 여행기간 시작 달력세팅
		$("#sdate").datepicker(datepickerFromOption);
		
		// 여행기간 종료 달력세팅
		$("#edate").datepicker(datepickerToOption);
		
		// 핸드폰 중간번호 숫자만 입력
		$("#cstTel2").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});
		
		// 핸드폰 마지막번호 숫자만 입력
		$("#cstTel3").keyup(function () { 
		    this.value = this.value.replace(/[^0-9\.]/g,'');
		});		

		
		// 통화 가능 시간 combo box disabled 처리
		$("#ptime").attr("disabled",true);
		$("#ptime").attr("style", "width: 132px;background-color: rgb(235, 235, 228);cursor: default;");
		
        
		// 인증하기 팝업
		$('.estimate_btn_confirm').on('click', function() {
			/* var popVal = "cstTel1="+$("#cstTel1").val()+"&cstTel2="+$("#cstTel2").val()+"&cstTel3="+$("#cstTel3").val();
			var popupUrl = "/customer/prcEstimateSmsPopup.do?"+popVal;
			$(this).attr("role-url", popupUrl); */
	
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
			} else{
				alert("인증되었습니다.");
			}		
			
 			/* showLayer(this); */
		});		
	});
	
	
	// 통화 가능 시간 선택시
	function clickptimeButton(object) {
		
		if (object == "C") {
			$("#ptime").attr("disabled",false);	
		} else {
			$("#ptime").attr("disabled",true);
			$("#ptime").val("");	
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
		
	
		$("#phone").val( cstTel1+"-"+cstTel2+"-"+cstTel3 );
		$("#email").val( (cstEmail3 == "" ? cstEmail1+"@"+cstEmail2 : cstEmail1+"@"+cstEmail3) );
	
		
		// 선택된 여행타입
		var travrvTypeCd = "FFC";
		
		if( travrvTypeCd != "FDMI" ) {
			var flocDetailCd = $("#div_Area_"+travrvTypeCd).find("input:radio:checked").val();
			var flocDetailArr = $("#div_AreaDtl_"+travrvTypeCd+"_"+flocDetailCd).find("input:checkbox:checked");
			var flocDetailVal = "";
			
			// 여행타입별 아이템 항목값 추출
			for( var i=0; i<flocDetailArr.size(); i++ ) {
				
				var item = flocDetailArr.eq(i);
				
				// 체크 선택 항목
				if( item.is(":checked") ) {
					flocDetailVal += item.val() + ",";
				}
				
			}
			$("#flocDetail").val(flocDetailVal);
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
	
	
	// 저장하기
	function fn_save(e) {
		//이메일주소와 전화번호를 가져와서 #phone와 #email에 넣어준다.
		fn_setInputValue();
		var f = document.frm;	
		
		//전화번호는  입력받은 값의 합으로 이루어지므로 각각의 값을 모두 더해준다.(비효율적이므로 적용하지 않음)
		/* var phoneVal = "cstTel1="+$("#cstTel1").val()+"&cstTel2="+$("#cstTel2").val()+"&cstTel3="+$("#cstTel3").val();
		f.phone.value = phoneVal; */
		//fn_save값에 id값을 가져와서 유효성 테스트를 먼저 진행한다.
		
		if(e=="btnOK"){
			if(f.title.value == ""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
				return;
			} else if(f.name.value == ""){
				alert("성명|단체명을 입력해주세요.");
				$("#name").focus();
				return;
			}else if(f.cstEmail1.value == ""){
				alert("메일주소를 입력해주세요.");
				$("#cstEmail1").focus();
				return;
			}else if(f.cstTel2.value == ""){
				alert("전화번호를 입력해주세요.");
				$("#cstTel2").focus();
				return;
			}else if(f.cstTel3.value == ""){
				alert("전화번호를 입력해주세요.");
				$("#cstTel3").focus();
				return;
			}
			else if(f.person.value == ""){
				alert("여행인원을 선택해주세요.");
				$("#person").focus();
				return;
			}else if(f.sdate.value == ""){
				alert("출발일을 선택해주세요.");
				$("#sdate").focus();
				return;
			}else if(f.edate.value == ""){
				alert("도착일을 선택해주세요.");
				$("#edate").focus();
				return;
			}
			
			if(!$("#agree").prop("checked")){
				alert("개인정보 수집 및 이용에 동의하셔야 합니다.");
				return false;
			}else {
				$("#inestimateagree").val('Y');
			}
			
			//var form = new FormData(document.getElementById('frm'));
			
			
			var cityVal = "";
		      $("input:checkbox[name='city']").each(function() {
		         if($(this).is(':checked')){
		            if(cityVal!="") cityVal += ",";
		        	 cityVal += $(this).val();}
		      });
		      
		     /* cityVal = $("input:hidden[name='city']").val(); */
		     
		     alert(cityVal);
		     
		     var stayVal = "";
		      $("input:checkbox[name='stay']").each(function() {
		         if($(this).is(':checked')){
		            if(stayVal!="") stayVal += ",";
		        	 stayVal += $(this).val();}
		      });	      
		     alert(stayVal);
		     
		    
		   /*   if($("#agree").is(":checked"))	$("input:hidden[name='inestimateagree']").val("Y");
			 else	$("input:hidden[name='inestimateagree']").val("N"); */
		     /*  if($("#agree").prop(":checked",false)){
		    	 $("input:hidden[name='inestimateagree']").val('Y');
		     	}
				else{
					$("input:hidden[name='inestimateagree']").val('N');
				} */
		     
			 var a = $("input:hidden[name='inestimateagree']").val();
		     alert(a);
		     
		     		
			var param ="email="+$("input:hidden[name='email']").val()
				param +="&phone="+$("input:hidden[name='phone']").val()
				param +="&name="+$("input:text[name='name']").val()
				param +="&person="+$("#person").val()
				param +="&money="+$("#money").val()
				param +="&ptime="+$("#ptime").val() 
				param +="&floc="+$("input:radio[name='floc']").val()
				param +="&sdate="+$("input:text[name='sdate']").val()
				param +="&edate="+$("input:text[name='edate']").val()
				param +="&schange="+$("input:radio[name='schange']").val()
				param +="&airline="+$("input:radio[name='airline']").val()
				param +="&stay="+stayVal;
				param +="&stayname="+$("#txt_Item_FFC_30_111_Other").val()
				param +="&inestimateagree="+$("input:hidden[name='inestimateagree']").val()
				param +="&title="+$("input:text[name='title']").val()
				param +="&userid="+$("input:text[name='userid']").val()
				param +="&city="+cityVal;
				param +="&passage="+$("input:radio[name='passage']").val()
				param +="&req="+$("#req").val();
			
				alert(param);		
			
			$.ajax({
				type: 'POST',
				data: param,
				url: "<c:url value='/estimateReqSave.do' />",
				dataType: "json",
				processData: false,
				contentType: false,
				
				/* 처리되고나서 실행되는부분 */
				success: function (data){
					if(data.result == "ok"){
						alert("견적문의가 등록되었습니다.");
						location.href = "<c:url value='/customer/estimateReq.do'/>";						
					}else{
						alert("견적문의가 등록되지 않았습니다. 다시 작성해주세요.");
					}
				},
				error: function (error){
					alert("error: " + error);
				}
			});
			f.submit();
		}
	}
	
	// [function] 1차 여행지역 변경
	function fn_setflocFst( flocCd, flocId ) {
		
		// 1. 여행지역설정
		$(".sub_country_select").hide();
		$("#div_AreaDtl_"+flocCd+"_"+flocId ).show();
		
		// 2. 여행지역상세 설정
		$(".sub_country_select :checkbox").attr("checked", false);
		
		// 3. 요청사항 Text 변경
		if( ( flocCd == "FFC" && flocId == 55 ) || ( flocCd == "HYM" && flocId == 69 ) ) {
			msgText = "도시, 체류일정을 구체적으로 작성해 주세요.ex) 파리 2일 - 프라하 2일 - 비엔나 1일";
		} else {
			msgText = "원하는 일정, 도시 등 간략 일정을 작성해 주세요.";
		}
			$("#req").attr("placeholder", msgText );		
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