<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<%
			String code = request.getParameter("code");
%>
    <link rel="stylesheet" type="text/css" href="/css/reserv.css">
    <section id="content1"><!--[[ content Start ]]-->
        <div class="tit reserve_tit" title="예약하기">
            <div class="res_tit_step">
                <span class="step_on">1</span>
                <span class="step_txt_on">정보입력 및 약관동의</span>
                <span class="step_arr"></span>
                <span class="step_off">2</span>
                <span class="step_txt">예약완료</span>
            </div>
        </div>
        <div class="res_infoBox">
            <span class="h1">유의사항</span>
                <ul>
                    <li class="inform gr">선택하신 상품정보를 확인하신 후 정보를 입력하여 예약을 진행해주세요. </li>
					<li class="inform">해당 예약은 담당자가 확인 후 확정됩니다. 노랑풍선을 이용해 주셔서 감사합니다. </li>
                </ul>
        </div>
		
		<!-- 비회원 유입 시  -->
		<!-- //비회원 유입 시  -->


		<!-- (ssl) -->
        <!-- <form name="frm" id="frm" method="post" action="/product/insertReserve.do"> --><!--[[ 입력폼 Start ]]-->
        <form name="frm" id="frm" method="post" action="/admin/Pay/adminPayList.do">        
        <input type="hidden" name="evCd" 			value="">        
        <input type="hidden" name="code" id="code" 	value="<%=code%>"/>        
        <input type="hidden" name="goodsCd" 		value="">
        <input type="hidden" name="mgmUserId" 		value="">
        <input type="hidden" name="hidtel" id="hidtel" 		value="">
        <input type="hidden" name="hidphone" id="hidphone" 		value="">
        <input type="hidden" name="email" id="email" 		value="">
        <input type="hidden" name="mgmUserNm" 		value="">
        <input type="hidden" name="mgmDeptCd" 		value="">
        <input type="hidden" name="mgmDeptNm" 		value="">
        <input type="hidden" name="menu" 			value="">
        <input type="hidden" name="loc" 			value="">
        <input type="hidden" name="pid" 			value="">
        <input type="hidden" name="did" 			value=""> 
        <input type="hidden" name="promotionTypeCd" 			value=""> 
        <input type="hidden" name="promotionNo" 			value=""> 
        <input type="hidden" name="webDisplayCls" 	value="A"> 
        <input type="hidden" name="webCustNo" 		value="">
        <input type="hidden" name="nonCustYn"		value="">
        <input type="hidden" name="repreNo"			value="">
        
        <div class="res_step">
        
        <script>
    	$(document).ready(function() {
			$("#btnok").click(function(){
				if(!$("#privacy_check1").prop("checked")){
					alert("여행 약관에 동의하셔야 합니다.");
					$("#privacy_check1").focus();
					return false;
				}else if(!$("#privacy_check2").prop("checked")){
					alert("개인정보 수집이용에 동의하셔야 합니다.");
					$("#privacy_check2").focus();
					return false;
				}else if(!$("#privacy_check3").prop("checked")){
					alert("개인정보 제3자 제공 및 공유에 동의하셔야 합니다.");
					$("#privacy_check3").focus();
					return false;
				}else if(!$("#privacy_check4").prop("checked")){
					alert("개인정보 취급위탁 제공 및 공유에 동의하셔야 합니다.");
					$("#privacy_check4").focus();
					return false;
				}
			});
    	});
        </script>
		<script>
		//여행자정보 입력란 자동 추가
		function addInput(){
		
			var fitGoods = "JWP1008";
			fitGoods = fitGoods.substring(2,3);
			
			var fitStrCost ="";
			if(fitGoods == 'F'){
				fitStrCost ="예상경비";
			}else{
				fitStrCost ="여행경비";
			}
			
			var adtNum = $("#selAdult option:selected").val();	//성인Cnt
			var chdNum = $("#selKids option:selected").val();	//아동Cnt	
			var infNum = $("#selBaby option:selected").val();	//유아Cnt
			
			var adtPrice = ${vo.price};
			var chdPrice = ${vo.pricech};
			var infPrice = ${vo.pricein};
			
			adtNum = parseInt(adtNum);
			chdNum = parseInt(chdNum);
			infNum = parseInt(infNum);
			
			adtPrice = parseInt(adtPrice);
			chdPrice = parseInt(chdPrice);
			infPrice = parseInt(infPrice);
			
			var totPrice = commaNum((adtPrice*adtNum) + (chdPrice*chdNum) + (infPrice*infNum));	
			
			//총 가격
			var summary = '';
			summary = summary +	'<span class="sbj">총 '+fitStrCost+'</span><span class="sum">' + totPrice + '원</span>';
			summary = summary +	'<div class="sum_desc">';
			summary = summary +	'(<span>성인</span><span>${vo.price}</span>x<span>'+adtNum+'</span>명 + <span>아동</span><span>${vo.pricech}</span>x<span>'+chdNum+'</span>명 + <span>유아</span><span>${vo.pricein}</span>x<span>'+ infNum +'</span>명)';
			summary = summary +	'</div>';
			
			$("#priceSummary").html(summary);
		
		}
		function setTourInfoSeq() {
			$.each($('.tourist'), function(idx, itm) {
				var seq = idx+1;
				$(this).find('.tourer').text("여행자 "+seq);
				$(this).find('input[name=tourNo]').val(seq);
				
				var $inputKorNM = $(this).find('input[name=resNmKor]');
				var idKorNM = $inputKorNM.attr('name')+seq;
				$inputKorNM.attr('id', idKorNM).parent().prev().find('label').attr('for', idKorNM);
				
				var $inputFirstEngNM = $(this).find('input[name=resNmFirstEng]');
				var idFirstEngNM = $inputFirstEngNM.attr('name')+seq;
				$inputFirstEngNM.attr('id', idFirstEngNM).parent().prev().find('label').attr('for', idFirstEngNM);

			});
			
			$.each($('td.input[name=adtPassPort], td.input[name=chdPassPort], td.input[name=infPassPort]'), function(idx, itm){
				var seq = idx+1;
				var thisName = $(itm).attr('name');
				
				$(itm).find('input:radio').attr('name', thisName+seq);
				
				$(itm).find('input:radio:eq(0)').attr('id', thisName+'Y'+seq);
				$(itm).find('label:eq(0)').attr('for', thisName+'Y'+seq);
				
				$(itm).find('input:radio:eq(1)').attr('id', thisName+'N'+seq);
				$(itm).find('label:eq(1)').attr('for', thisName+'N'+seq);
			});
			
			addInput();
		}

		function addTourist(flagAgeDiv) {
			var strTourist = '';
			var strAgeDiv = '';
			var selectorTourist = '';
			var nmPassPort = '';
			
			var fitGoods = "";
			fitGoods = fitGoods.substring(2,3);
			
			var fitStrCost ="";
			if(fitGoods == 'F'){
				fitStrCost ="예상가격";
			}else{
				fitStrCost ="상품가격";
			}
			
			var data = {'flagAgeDiv' : flagAgeDiv};
			if (flagAgeDiv === 'C') {
				selectorTourist = 'chdTourist';
				data.strAgeDiv = '아동(총 '+fitStrCost+' : <span class="yl">${vo.pricech} </span>)';
				data.goodsPrice = '629000';
				data.bafAmt = '0';
				data.taxAmt = '0';
				data.nmPassPort = 'chdPassPort';
			} else if (flagAgeDiv === 'I') {
				selectorTourist = 'infTourist';
				data.strAgeDiv = '유아(총 '+fitStrCost+' : <span class="yl">${vo.pricein}</span>)';
				data.goodsPrice = '62900';
				data.bafAmt = '0';
				data.taxAmt = '0';
				data.nmPassPort = 'infPassPort';
			} else {
				selectorTourist = 'adtTourist';
				data.strAgeDiv = '성인(총 '+fitStrCost+' : <span class="yl">${vo.price}</span>)';
				data.goodsPrice = '629000';
				data.bafAmt = '0';
				data.taxAmt = '0';
				data.nmPassPort = 'adtPassPort';
			}

			$( TrimPath.processDOMTemplate("tmpTourist", data) ).appendTo('#'+selectorTourist);
		}
		</script>
        	<script>
        	$(document).ready(function() {
				$("#btnok").click(function(){
					 //email 
					 var email = $("input:text[id='email1']").val() + "@" + $("input:text[id='email2']").val();
					 $("input:hidden[id='email']").val(email); 
					
						 //휴대전화
						var phone = $("input:text[name='hphone1']").val() + "-" + $("input:text[name='hphone2']").val() + "-" + $("input:text[name='hphone3']").val();
						$("input:hidden[name='hidphone']").val(phone); 
						
						//자택전화
						if($("#homeTel1 option:selected").val() != "" && $("input:text[name='homeTel2']").val() != "" && $("input:text[name='homeTel3']").val() != ""){
							var homeTel = $("#homeTel1 option:selected").val() + "-" + $("input:text[name='homeTel2']").val() + "-" + $("input:text[name='homeTel3']").val();
							$("input:hidden[name='hidtel']").val(homeTel);
						}
						
						 //생일
						
							var birthYear = $("#birthYear option:selected").val();
							var birthMonth = $("#birthMonth option:selected").val();
							var birthDay = $("#birthDay option:selected").val();
							
							var birth = birthYear+"-"+birthMonth+"-"+birthDay; 
							
							
							 $("input:hidden[name='hidbirth']").val(birth); 
					 
					 var form = "name="+$("#custNmKor").val()
							form += "&gender=" +$("#genderCd option:selected").val()
							form += "&code=" +$("input:hidden[id='code']").val()
							form += "&email=" + $("input:hidden[id='email']").val()
							form += "&phone=" +$("input:hidden[id='hidphone']").val()
							form += "&birthday=" +birth
							form += "&tel=" +$("input:hidden[name='hidtel']").val()
							form += "&rsvanum=" +$("#selAdult").val()
							form += "&rsvcnum=" +$("#selKids").val()
							form += "&rsvbnum=" +$("#selBaby").val();
							alert(form);
					
					$.ajax({
						type: 'POST',
						data: form,
						url: "<c:url value='/product/detailPackagebtn.do' />",
						dataType: 'JSON',
						
						success: function (data) {
							if(data.cnt =="ok") {
								alert("넘김.");
								location.href="/main.do";
							} else {
								alert( "XXXXXXXXXXXXXX");
							}
						},
						error: function (error) {
							alert("error111 : " + error);
						}
					});
        		});
        	});
        	</script>
        	
           	<script>
				$(document).ready(function() {
					$("#email3").change(function(){
						
						if ( $(this).val() !='9' && $(this).val() !='0' && $(this).val() !=''){
							$("#email2").val($(this).val());
						}else{
							$("#email2").focus();
							$("#email2").val("");
						}
						
					});
				
					$(".privacy_agree").hide(); 
					$("ul.reserve_tab li:first").addClass("active").show(); 
					$(".privacy_agree:first").show(); 
		
					$("ul.reserve_tab li").click(function() {
						$("ul.reserve_tab li").removeClass("active"); 
						$(this).addClass("active"); 
						$(".privacy_agree").hide(); 
						var activeTab = $(this).find("a").attr("href");
						$(activeTab).show(); 
						return false;
					});
					
					$("input[name='privacy_check']").on('change', function(){
						var idx=$(this).val();
						if(idx != "5" && $(this).is(":checked")){
							$("ul.reserve_tab li").removeClass("active"); 
							$(".privacy_agree").hide();
							$("#argree_box"+idx).show();
							$("#showLi"+idx).addClass("active");
						}
					});
				});	
			</script>
            <span class="h1">01. 약관 동의 (필수)</span>
			<div class="reserve_block">
				<ul class="reserve_tab">
					<li id="showLi1"><a href="#argree_box1">여행약관</a></li>
					<li id="showLi2"><a href="#argree_box2">개인정보 수집이용</a></li>
					<li id="showLi3"><a href="#argree_box3">개인정보 제3자 제공 및 공유</a></li>
					<li id="showLi4"><a href="#argree_box4">개인정보 취급위탁 제공 및 공유</a></li>
				</ul>
				<div class="tab_container">
					<div class="privacy_agree" title="여행약관" id="argree_box1">
						<div class="privacy_txt_box">
			
                <span class="pol_head">제1조 목적</span>
                <span class="pol_head2">이 약관은 노랑풍선 여행사와 여행자가 체결한 국외여행 계약의 세부 이행 및 준수사항을 정함을 목적으로 합니다.</span>
                <span class="pol_head">제2조 여행업자와 여행자 의무</span>
                <span class="pol_head2">1. 여행업자는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행 알선 및 안내·운송·숙박 등 여행 계획의 수립 및 실행 과정에서 맡은 바 임무를 충실히 수행하여야 합니다.</span> 
                <span class="pol_head2">2. 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합 도모 및 여행업자의 여행질서 유지에 적극 협조하여야 합니다.</span> 
                <span class="pol_head">제3조 용어의 정리</span>
                <span class="pol_head2">여행의 종류 및 정의, 해외여행 수속대행업의 정의는 다음과 같습니다.</span> 

                <span class="pol_head2">1. 기획 여행 : 여행업자가 미리 여행 목적지 및 관광 일정, 여행자에게 제공될 운송 및 숙식서비스 내용(이하 ‘여행서비스'라 함), 여행 요금을 정하여 광고 또는 기타 방법으로 여행자를 모집하여 실시하는 여행</span> 
                <span class="pol_head2">2. 희망 여행 : 여행자(개인 또는 단체)가 희망하는 여행 조건에 따라 여행업자가 운송·숙식·관광 등 여행에 관한 전반적인 계획을 수립하여 실시하는 여행</span> 
                <span class="pol_head2">3. 해외여행 수속대행(이하 수속대행계약이라 함) : 여행업자가 여행자로부터 소정의 수속대행요금을 받기로 약정하고, 여행자의 위탁에 따라 다음에 열거하는 업무(이하 수속대행업무라함)를 대행하는 것</span> 
                <span class="pol_desc">- 여권, 사증, 재입국 허가 및 각종 증명서 취득에 관한 수속 </span>
                <span class="pol_desc">- 출입국 수속 서류 작성 및 기타 관련 업무</span> 
                <span class="pol_head">제4조 계약의 구성</span>
                <span class="pol_head2">1. 여행계약은 여행계약서(붙임)와 여행약관·여행일정표(또는 여행설명서)를 계약 내용으로 합니다.</span> 
                <span class="pol_head2">2. 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광 내용, 교통수단, 쇼핑횟수, 숙박장소, 식사 등 여행 일정 및 여행사 제공 서비스 내용과 여행자 유의사항이 포함되어야 합니다.</span> 
                <span class="pol_head">제5조 특약</span>
                <span class="pol_head2">여행업자와 여행자는 관계 법규에 위반되지 않는 범위 내에서 서면으로 특약을 맺을 수 있습니다. 이 경우 표준약관과 다름을 여행업자는 여행자에게 설명해야 합니다.</span> 

                <span class="pol_head">제6조 계약서 및 약관 등 교부</span>
                <span class="pol_head2">여행업자는 여행자와 여행계약을 체결한 경우 계약서와 여행약관, 여행일정표(또는 여행설명서)를 각 1부씩 여행자에게 교부하여야 합니다.</span> 

                <span class="pol_head">제7조 계약서 및 약관 등 교부 간주</span>
                <span class="pol_head2">여행업자와 여행자는 다음 각 호의 경우 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된 것으로 간주합니다.</span> 

                <span class="pol_head2">1. 여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 동의하고 여행계약의 체결을 신청한데 대해 여행업자가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</span>
                <span class="pol_head2">2. 여행업자가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부한데 대해 여행업자가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</span>
                <span class="pol_head">제8조 여행업자의 책임</span> 
                <span class="pol_head2">여행업자는 여행 출발시부터 도착시까지 여행업자 본인 또는 그 고용인, 현지 여행업자 또는 그 고용인 등(이하 ‘사용인'이라 함)이 제2조 제1항에서 규정한 여행업자 임무와 관련하여 여행자에게 고의 또는 과실로 손해를 가한 경우 책임을 집니다.</span> 

                <span class="pol_head">제9조 최저행사인원 미충족시 계약 해제</span> 
                <span class="pol_head2">1. 여행업자는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행 출발 7일전까지 여행자에게 통지하여야 합니다.</span> 
                <span class="pol_head2">2. 여행업자가 여행 참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우, 이미 지급받은 계약금 환급 외에 다음 각 목의 1의 금액을 여행자에게 배상하여야 합니다.</span>

                <span class="pol_desc">가. 여행출발 1일전까지 통지시 : 여행요금의 20%</span> 
                <span class="pol_desc">나. 여행출발 당일 통지시 : 여행요금의 50%</span> 
                <span class="pol_head">제10조 계약체결 거절</span> 
                <span class="pol_head2">여행업자는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수 있습니다.</span> 

                <span class="pol_head2">1. 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때</span> 
                <span class="pol_head2">2. 질병 기타 사유로 여행이 어렵다고 인정될 때</span> 
                <span class="pol_head2">3. 계약서에 명시한 최대행사인원이 초과되었을 때</span> 
                <span class="pol_head">제11조 여행요금</span> 
                <span class="pol_head2">1. 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 단, 희망여행은 당사자간 합의에 따릅니다.</span> 

                <span class="pol_desc">가. 항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)</span> 
                <span class="pol_desc">나. 공항, 역, 부두와 호텔 사이 등 송영버스요금</span> 
                <span class="pol_desc">다. 숙박요금 및 식사요금</span> 
                <span class="pol_desc">라. 안내자 경비</span> 
                <span class="pol_desc">마. 여행 중 필요한 각종 세금</span> 
                <span class="pol_desc">바. 국내 공항, 항만 이용료</span>
                <span class="pol_desc">사. 관광진흥개발기금</span> 
                <span class="pol_desc">아. 일정표 내 관광지 입장료</span> 
                <span class="pol_desc">자. 기타 개별계약에 따른 비용</span>
                <span class="pol_head2">2. 여행자는 계약체결시 계약금(여행요금 중 10%이하 금액)을 여행업자에게 지급하여야 하며, 계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.</span>
                <span class="pol_head2">3. 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 7일전까지 여행업자에게 지급하여야 합니다.</span> 
                <span class="pol_head2">4. 여행자는 제1항의 여행요금을 여행업자가 지정한 방법(지로구좌, 무통장입금 등)으로 지급하여야 합니다.</span> 
                <span class="pol_head2">5. 희망여행요금에 여행자 보험료가 포함되는 경우 여행업자는 보험회사명, 보상내용 등을 여행자에게 설명하여야 합니다.</span> 
                <span class="pol_head">제12조 여행요금의 변경</span> 
                <span class="pol_head2">1. 국외여행을 실시함에 있어서 이용운송, 숙박기관에 지급하여야 할 요금이 계약체결시보다 5% 이상 증감하거나 여행요금에 적용된 외화 환율이 계약체결시보다 2% 이상 증감한 경우 여행업자 또는 여행자는 그 증감된 금액 범위 내에서 여행요금의 증감을 상대방에게 청구할 수 있습니다.</span> 
                <span class="pol_head2">2. 여행업자는 제1항의 규정에 따라 여행요금을 증액하였을 때에는 여행출발일 15일전에 여행자에게 통지하여야 합니다.</span> 
                <span class="pol_head">제13조 여행조건의 변경요건 및 요금 등의 정산</span>
                <span class="pol_head2">1. 위 제1조 내지 제12조의 여행 조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.</span> 

                <span class="pol_desc">가. 여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지 사정에 의하여 부득이하다고 쌍방이 합의한 경우</span>
                <span class="pol_desc">나. 천재지변, 전란, 정부의 명령, 운송·숙박기관 등의 파업·휴업 등으로 여행의 목적을 달성할 수 없는 경우</span>
                <span class="pol_head2">2. 제1항의 여행조건 변경 및 제12조의 여행요금 변경으로 인하여 제11조 제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전 변경분은 여행출발 이전에, 여행중 변경분은 여행 종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</span>
                <span class="pol_head2">3. 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제14조 또는 제15조의 규정에 의한 계약의 해제·해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생분은 여행출발 이전에, 여행중 발생분은 여행 종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</span>
                <span class="pol_head2">4. 여행자는 여행 출발 후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 여행업자에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 단, 여행이 중도에 종료된 경우에는 제16조에 준하여 처리합니다.</span> 
                <span class="pol_head">제14조 손해배상</span>
                <span class="pol_head2">1. 여행업자는 현지여행업자 등의 고의 또는 과실로 여행자에게 손해를 가한 경우 여행업자는 여행자에게 손해를 배상하여야 합니다.</span> 
                <span class="pol_head2">2. 여행업자의 귀책사유로 여행자의 국외여행에 필요한 여권, 사증, 재입국 허가 또는 각종 증명서 등을 취득하지 못하여 여행자의 여행일정에 차질이 생긴 경우 여행업자는 여행자로부터 절차대행을 위하여 받은 금액 전부 및 그 금액의 100% 상당액을 여행자에게 배상하여야 합니다.</span> 
                <span class="pol_head2">3. 여행업자는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상하여야 합니다. 단, 여행업자가 고의 또는 과실이 없음을 입증한 때에는 그러하지 아니합니다.</span> 
                <span class="pol_head2">4. 여행업자는 자기나 그 사용인이 여행자의 수하물 수령, 인도, 보관 등에 관하여 주의를 해태(懈怠)하지 아니하였음을 증명하지 아니하면 여행자의 수하물 멸실, 훼손 또는 연착으로 인한 손해를 배상할 책임을 면하지 못합니다.</span> 
                <span class="pol_head">제15조 여행출발 전 계약해제</span>
                <span class="pol_head2">1. 여행업자 또는 여행자는 여행출발 전 이 여행 계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자피해보상규정' (재정경제부고시)에 따라 배상합니다.</span> 
                <span class="pol_head2">2. 여행업자 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게 제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.</span> 
                <span class="pol_desc">가. 여행업자가 해제할 수 있는 경우</span>
                <span class="pol_desc">- 제13조 제1항 제1호 및 제2호 사유의 경우</span> 
                <span class="pol_desc">- 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때</span> 
                <span class="pol_desc">- 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</span> 
                <span class="pol_desc">- 여행자가 계약서에 기재된 기일까지 여행요금을 납입하지 아니한 경우</span> 
                <span class="pol_desc">나. 여행자가 해제할 수 있는 경우</span>
                <span class="pol_desc">- 제13조 제1항 제1호 및 제2호의 사유가 있는 경우</span> 
                <span class="pol_desc">- 여행자의 3촌 이내 친족이 사망한 경우</span>
                <span class="pol_desc">- 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</span>
                <span class="pol_desc">- 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여 여행 출발 전까지 퇴원이 곤란한 경우 그 배우자 또는 보호자 1인</span>
                <span class="pol_desc">- 여행업자의 귀책사유로 계약서 또는 여행일정표(여행설명서)에 기재된 여행일정대로의 여행실시가 불가능해진 경우</span>
                <span class="pol_desc">- 제12조 제1항의 규정에 의한 여행요금의 증액으로 인하여 여행 계속이 어렵다고 인정될 경우</span>
                <span class="pol_head">제16조 여행출발 후 계약해지</span>
                <span class="pol_head2">. 여행업자 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 이 여행계약을 해지할 수 있습니다.단, 이로 인하여 상대방이 입은 손해를 배상하여야 합니다.</span>
                <span class="pol_head2">. 제1항의 규정에 의하여 계약이 해지된 경우 여행업자는 여행자가 귀국하는데 필요한 사항을 협조하여야 하며, 이에 필요한 비용으로서 여행업자의 귀책사유에 의하지 아니한 것은 여행자가 부담합니다.</span>
                <span class="pol_head">제17조 여행의 시작과 종료 </span>
                <span class="pol_head2">여행의 시작은 탑승수속(선박인 경우 승선수속)을 마친 시점으로 하며, 여행의 종료는 여행자가 입국장 보세구역을 벗어나는 시점으로 합니다. 단, 계약내용상 국내이동이 있을 경우에는 최초 출발지에서 이용하는 운송수단의 출발시각과 도착시각으로 합니다.</span>

                <span class="pol_head">제18조 설명의무</span>
                <span class="pol_head2">여행업자는 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야 합니다.</span>

                <span class="pol_head">제19조 보험가입 등</span>
                <span class="pol_head2">여행업자는 이 여행과 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위한 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.</span>

                <span class="pol_head">제20조 기타사항</span>
                <span class="pol_head2">1. 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 여행업자 또는 여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따릅니다.</span>
                <span class="pol_head2">2. 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 달리 정할 수 있습니다.</span>
</div>
						</div>
						<div class="privacy_check">
							<input type="checkbox" name="privacy_check" id="privacy_check1" value="2"/><label for="privacy_check1">여행약관에 동의합니다.</label>
						</div>
					</div>
					<div class="privacy_agree" title="개인정보 수집이용" id="argree_box2">
						<div class="privacy_txt_box">
						 <span class="pol_head">1. 개인정보 수집 항목 및 방법</span>

             <span class="pol_head2">노랑풍선은 여행 서비스의 제공에 필요한 최소한의 개인정보만을 수집하며, 수집항목, 수집목적 및 보유기간은 다음과 같습니다.</span>
			
            <span class="pol_head">가. 개인정보 수집항목</span>
				
				<span class="pol_head2">① 필수항목</span>

                    <table>
                        <caption>필수항목</caption>
                        <colgroup>
                            <col width="*" />
                            <col width="33%" />
                            <col width="33%" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>수집항목</th>
                                <th>수집목적</th>
                                <th>보유기간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>ID/PW, 성명, 주소, 개인 I-PIN정보, 연락처(휴대폰, e-mail), 생년월일</td>
                                <td>회원가입, 회원제서비스 제공, 당사 약관변경 안내, 마케팅정보 제공 등의 회원관리</td>
                                <td>회원탈퇴 시까지</td>
                            </tr>
                            <tr>
                                <td>ID/PW, 성명(국영문), 주소, 연락처(휴대폰, e-mail)</td>
                                <td>연락처(휴대폰, e-mail)</td>
                                <td>여행상품 상담 및 예약, 물품배송 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
                            </tr>
                            <tr>
                                <td>성명(국영문), 생년월일, 성별, 주소, 연락처(휴대폰, e-mail)</td>
                                <td>여행자보험 가입</td>
                                <td>개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
                            </tr>
                            <tr>
                                <td>여권사본, 생년월일, 성명(국영문), 연락처(휴대폰, e-mail)</td>
                                <td>항공권예약 및 발권, 호텔예약, 비자발급, APIS</td>
                                <td>개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
                            </tr>
                            <tr>
                                <td>법정대리인의 정보(성명, 연락처, 가족관계 증빙서류)가입자의 정보(ID/PW, 성명(국영문), 주소, 개인 I-PIN정보, 연락처(휴대폰, e-mail), 생년월일, 성별)</td>
                                <td>만 14세 미만 가입자에게 회원제서비스 제공 </td>
                                <td>회원탈퇴 시까지  </td>
                            </tr>
                          
                            <tr>
                                <td>휴대폰 번호</td>
                                <td>현금영수증 발급(소득공제용)</td>
                                <td>개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
                            </tr>
                            <tr>
                                <td>휴대폰 번호, 사업자등록번호</td>
                                <td>현금영수증 발급(지출증빙용)</td>
                                <td>개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기</td>
                            </tr>
                      
                        </tbody>
                    </table>

						</div>
						<div class="privacy_check">
							<input type="checkbox" name="privacy_check" id="privacy_check2" value="3"/><label for="privacy_check2">개인정보 수집이용에 동의합니다.</label>
						</div>
					</div>
					<div class="privacy_agree" title="개인정보 제3자 제공 및 공유" id="argree_box3">
						<div class="privacy_txt_box">
						<span class="pol_head">4. 개인정보의 제3자 제공 및 공유 안내</span>
            <span class="pol_head2">노랑풍선에서는 원칙적으로 고객님의 개인 정보를 여행서비스업과 무관한 기업 및 기관에 공개하지 않습니다. 단, 여행 서비스와 관련하여 고객님의 개인정보를 공유하는 경우는 아래와 같으며, 이용목적에 따른 개인정보 제공 시부터 이용목적 달성 시(제휴업체는 제휴계약 종료 시) 및 관계법령에 따른 보관기간까지 보유∙이용합니다.</span>

            <table>
                <caption>개인정보의 제3자 제공 및 공유</caption>
                <colgroup>
                    <col width="210px" />
                    <col width="*" />
                    <col width="20%" />
                </colgroup>

                <thead>
                    <tr>
                        <th>제공받는자</th>
                        <th>제공 목적</th>
                        <th>제공 항목</th>
                        <th>보유기간</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td class="pdL0 pdR0 align-c "><span>정부관계기관</span> <button type="button" title="정부관계기관" role-url="/common/prvOffer.do?offer=Gov" role-w="880" role-h="567" onclick="showLayer(this);">상세보기</button></td>
                        <td rowspan="7">항공권 및 기타운송업체 탑승예약, 숙박예약,
                            현지 행사 진행 및 고객관리 목적, 서비스 제공, 구매 및 요금 결제, 개인 식별, 불만처리 등 민원처리, 고지사항 전달, 마일리지 적립∙전환, 사용확인, 회원할인, 비자발급 등</td>
                        <td rowspan="7">
                            성명(국/영문),<br />
                            여권 및 비자 사본,<br />
                            전화번호,<br />
                            주소,<br />
                            투어마일리지 정보,<br />
                            회원 종류
                        </td>
                        <td rowspan="12">
                            개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기
						</td>
                    </tr>
                    <tr>
                         <td class="pdL0 pdR0 align-c "><span>항공사</span> <button type="button" title="항공사" role-url="/common/prvOffer.do?offer=Air" role-w="880" role-h="567" onclick="showLayer(this);">상세보기</button></td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 align-c "><span>크루즈</span> <button type="button" title="크루즈" role-url="/common/prvOffer.do?offer=Crs" role-w="880" role-h="567" onclick="showLayer(this);">상세보기</button></td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 align-c "><span>호텔 및 숙박시설</span> <button type="button" title="호텔 및 숙박시설" role-url="/common/prvOffer.do?offer=Accm" role-w="880" role-h="567" onclick="showLayer(this);">상세보기</button></td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 align-c "><span>랜드사</span> <button type="button" title="랜드사" role-url="/common/prvOffer.do?offer=Land" role-w="880" role-h="567" onclick="showLayer(this);">상세보기</button></td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 align-c "><span>비자발급대행사</span> <button type="button" title="비자발급대행사" role-url="/common/prvOffer.do?offer=Visa" role-w="880" role-h="567" onclick="showLayer(this);">상세보기</button></td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 center align-c ">인솔자</td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 align-c "><span>대리점</span> <button type="button" title="대리점" role-url="/common/prvOffer.do?offer=Agt" onclick="showLayer(this);" role-w="880" role-h="567" >상세보기</button></td>
                        <td>여행상담 및 예약확인, 일반 및 제휴 서비스 제공, 구매 및 요금 결제, 마일리지 적립∙전환, 사용확인, 제휴 서비스 이용안내, 이벤트 안내 등</td>
                        <td>성명(영문이름포함), 여권 및 비자 사본, 연락처, 이메일, 마일리지 정보, 회원종류</td>
                    </tr>
                    <tr>
                        <td class="pdL0 pdR0 center"><!--LIG손해보험-->KB손해보험</td>
                        <td>여행자 보험가입</td>
                        <td>성명, 생년월일, 성별, 연락처</td>
                    </tr>
					<tr>
                        <td class="pdL0 pdR0 center">에이스손해보험</td>
                        <td>여행자 보험가입, 결제 및 환불, 보험금 지급 서비스 제공</td>
                        <td>영문명, 생년월일, 성별, 연락처(이메일)</td>
                    </tr>
                   
					<tr>
                        <td class="pdL0 pdR0 center">LG U+</td>
                        <td>신용카드 안전결제</td>
                        <td>성명, 카드번호, 카드유효기간</td>
                    </tr>
					<tr>
                        <td class="pdL0 pdR0 center">이니시스</td>
                        <td>신용카드 안전결제</td>
                        <td>성명, 카드번호, 카드유효기간</td>
                    </tr>
                </tbody>
            </table>

						</div>
						<div class="privacy_check">
							<input type="checkbox" name="privacy_check" id="privacy_check3" value="4"/><label for="privacy_check3">개인정보 제3자 제공 및 공유에 동의합니다.</label>
						</div>
					</div>
					<div class="privacy_agree" title="개인정보 취급위탁 제공 및 공유" id="argree_box4">
						<div class="privacy_txt_box">
							  <span class="pol_head">5. 개인정보의 취급위탁 제공 및 공유  </span>
            <span class="pol_head2">노랑풍선에서는 고객의 원활한 서비스 제공을 위하여 위탁업체에 개인정보를 제공할 수 있으며, 이때 필요한 정보의 종류 및 이용 용도, 기간 등을 명시하여 고객의 사전 동의를 받는 경우(위탁과 관련한 자세한 내용은 ‘노랑풍선 CRM팀’에서 제공), 혹은 보다 나은 서비스의 제공을 위하여 이용자들의 개인정보를 공유할 수 있습니다.</span>
            <span class="pol_head2">노랑풍선은 서비스 이행을 위해 위탁계약일로부터 계약종료일까지 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약서에 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.</span>

            <table>
                <caption>개인정보의 취급위탁 제공 및 공유</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="30%" />
                    <col width="20%" />
                    <col width="30%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>수탁자</th>
                        <th>위탁 개인정보 항목</th>
                        <th>위탁 업무 내용</th>
                        <th>보유·이용기간</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>한국모바일인증(주)</td>
                        <td>성명, 통신사, 휴대폰번호,생년월일, 성별, 내국인여부</td>
                        <td>본인확인</td>
                        <td rowspan="2">해당업체에서 이미 보유하고 있는 개인 정보이므로 별도로 저장하지 않음</td>
                    </tr>
                    <tr>
                        <td>서울신용평가정보(주)</td>
                        <td>I-PIN정보</td>
                        <td>본인확인</td>
                    </tr>
                    <tr>
                        <td><!--미래샌딩-->즐거운여행</td>
                        <td>성명(국영문), 계약여행상품내역, 연락처(휴대폰, e-mail주소)</td>
                        <td>공항 송객,여행물품 전달</td>
                        <td rowspan="3">위탁계약일로부터 계약종료일까지 </td>
                    </tr>
                    <tr>
                        <td>에다스</td>
                        <td>성명, 주소, 연락처(휴대폰, e-mail주소)</td>
                        <td>여행물품 배송</td>
                    </tr>
                    <tr>
                        <td>트랜스코스모스,스탑뱅크,그린맨파워, ㈜메타넷 엠씨씨</td>
                        <td>회원가입시 입력정보, 서비스 이용시 생성된 정보</td>
                        <td>고객상담 및 고객불만 처리</td>
                    </tr>
                    <tr>
                        <td>(주)옴니텔</td>
                        <td rowspan="2">휴대폰번호</td>
                        <td rowspan="2">이벤트 경품 발송</td>
                        <td rowspan="2">경품 유효기간 종료 후 3일 이내</td>
                    </tr>
                    <tr>
                        <td>(주)조선일보사</td>
                    </tr>
                     <tr>
                    	<td>(주)엠엔와이즈</td>
                    	<td>성명, 휴대폰번호</td>
                    	<td>여행 개시를 위한 사전 안내, 정보전달, 고객만족도 조사 안내 등의 내용 전달</td>
                    	<td>발송일로 부터 60일</td>
                    </tr>
					<tr>
                    	<td>효성ITX</td>
                    	<td>상담 파일</td>
                    	<td>상담서비스 품질 평가</td>
                    	<td>별도로 저장하지 않음</td>
                    </tr>
                </tbody>
            </table>

             <span class="pol_head2">위탁계약 체결 시 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적∙관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리∙감독∙교육, 손해배상 등의 책임사항을 계약문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지 철저히 감독하고 있습니다</span>

						</div>
						<div class="privacy_check">
							<input type="checkbox" name="privacy_check" id="privacy_check4" value="5"/><label for="privacy_check4">개인정보 취급위탁 제공 및 공유에 동의합니다.</label>
						</div>
					</div>
				</div>
            <!--  //예약동의 추가 -->
        	
            <span class="h1">02.선택하신 상품 정보</span>
            <table style="table-layout: fixed;">
                <caption>가입정보입력</caption>
                <tbody>
                    <tr>
                        <th scope="row">상품명</th>
                        <td>${vo.title}</td>
                        <th scope="row">예약유형</th>
                        <td><span class="yl">일반예약</span>[<span class="yl">3명</span> 예약가능]</td>
	                        </tr>
                    <tr>
                        <th scope="row">출발일</th>
                        <td>${vo.sdate}</td>
                        <th scope="row">여행기간</th>
                        <td>${vo.period}</td>
                    </tr>
                    <tr>
                        <th scope="row">도착일</th>
                        <td>${vo.edate}</td>
                        <th scope="row">이용항공</th>
                        <td>${vo.airline}</td>
                    </tr>
                    <tr>
                        <th scope="row" class="h_top">
                        	여행경비</th>
                        <td colspan="3">
                            <ul>
                                <li><strong>총 여행경비</strong> (항공권포함, 유류할증료 등은 변동가능)</li>
                                <li>
                                    <span class="box grBox">성인</span><span class="price">${vo.price}</span>
                                    <span class="box ylBox">아동</span><span class="price">${vo.pricech}</span>
                                    <span class="box gyBox">유아</span><span class="price">${vo.pricein}</span>
                                </li>
                                <li>
                                    <span class="tiny_info">[성인] 기본여행경비   : ${vo.price-vo.fuel}원 / 유류할증료 : ${vo.fuel}원 / 제세공과금 : 0원</span>
                                    <span class="tiny_info">[아동] 기본여행경비   : ${vo.pricech-vo.fuel}원 / 유류할증료 : ${vo.fuel}원 / 제세공과금 : 0원</span>
                                    <span class="tiny_info">[유아] 기본여행경비   : ${vo.pricein-vo.fuel}원 / 유류할증료 : 0원 / 제세공과금 : 0원</span>               
                                  
                                </li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>    
            
            <span class="h1">03.예약자 정보</span>
            <table>
                <caption>예약자정보입력</caption>
                <tbody>
                    <tr> 
                        <th scope="row" class="input"><label class="chk" for="custNmKor">성명/성별</label></th>
                        <td class="input">
	                        <input type="text" name="custNmKor" id="custNmKor" value="">
	                        	<span class="txt">/</span>
                           	<span class="txt">
	                        	<select name="genderCd" id="genderCd" class="selDt" title="성별">
	                        		<option>선택</option>
	                        		<option value="M">남자</option>
	                        		<option value="F">여자</option>
	                        	</select>                
                           	</span> 
                        </td>      
                    <th scope="row"><label for="birthday">생년월일</label><span class="chk"></span></th>
					<td colspan="3">
					<c:set var="birthsplit" value=""/>
					
				<select name="birthYear" id="birthYear" class="selDt">
					<option value="" selected="selected"></option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		 
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>

					
				<span class="txt">년</span>
				<select name="birthMonth" id="birthMonth" class="selDt" title="생년">
					<option value="" selected="selected"></option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
		</select>
				<span class="txt">월</span>
				<select name="birthDay" id="birthDay" class="selDt" title="생월">
					<option value="" selected="selected"></option>
         		
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
				<span class="txt">일</span>
			</td>
		</tr>
		
                    <tr>
                        <th scope="row" class="input"><label class="chk" for="email1">이메일</label></th>
                        <td colspan="3" class="input">
                            <input type="text" name="email1" id="email1" class="txtemail" value=""><span class="txt">@</span>
                            <input type="text" name="email2" id="email2" class="txtemail"  value="" title="이메일서버">
                            <select name="email3" id="email3" class="selemail" title="이메일서버선택">
                                <option>선택하세요</option>
                                <option value="naver.com">네이버</option>
                                <option value="hanmail.net">한메일</option>
                                <option value="nate.com">네이트</option>
                                <option value="daum.net">다음</option>
                                <option value="gmail.com">구글</option>
                                <option value="hotmail.com">핫메일</option>
                                <option value="yahoo.com">야후</option>
                                </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="input"><label for="telNo1">자택전화</label></th>
                        <td class="input">
                            <select name="homeTel1" id="homeTel1" class="sel_w selprefix">
                            	<option value="">선택</option>
                                <option value="02" >02  (서울)</option>
                                <option value="031" >031 (경기)</option>
                                <option value="032" >032 (인천)</option>
                                <option value="033" >033 (강원)</option>
                                <option value="041" >041 (충남)</option>
                                <option value="042" >042 (대전)</option>
                                <option value="043" >043 (충북)</option>
                                <option value="051" >051 (부산)</option>
                                <option value="052" >052 (울산)</option>
                                <option value="053" >053 (대구)</option>
                                <option value="054" >054 (경북)</option>
                                <option value="055" >055 (경남)</option>
                                <option value="061" >061 (전남)</option>
                                <option value="062" >062 (광주)</option>
                                <option value="063" >063 (전북)</option>
                                <option value="064" >064 (제주)</option>
                                <option value="070" >070 (인터넷)</option>
                                </select>
                            <span class="txt">-</span>
                            <input type="text" name="homeTel2" id="homeTel2"  onkeydown="return showKeyCode(event);" value="" class="txtcell" maxlength="4" title="자택전화두번째">
                            <span class="txt">-</span>
                            <input type="text" name="homeTel3" id="homeTel3"  onkeydown="return showKeyCode(event);" value="" class="txtcell" maxlength="4" title="자택전화세번째">
                        </td>
                        <th scope="row" class="input"><label class="chk" for="cellNo1">휴대폰번호</label></th>
                        <td class="input">
                            <input type="text" name="hphone1" id="hphone1"value=""   onkeydown="return showKeyCode(event);" class="txtcell" maxlength="4"  title="휴대전화 첫번째">
                            <span class="txt">-</span>
                            <input type="text" name="hphone2" id="hphone2" value=""  onkeydown="return showKeyCode(event);" class="txtcell" maxlength="4"  title="휴대전화 두번째">
                            <span class="txt">-</span>
                            <input type="text" name="hphone3" id="hphone3"value=""   onkeydown="return showKeyCode(event);" class="txtcell" maxlength="4"  title="휴대전화 세번째">
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="h_top input">총 여행인원</th>
                        <td colspan="3" class="input">
                            <ul>
                                <li><span class="strong"></span> 고객님도 여행에 참여 하십니까? <input type="radio" name="chkJoinYN" id="chkJoinY"  value="Y"><span class="radio_txt"><label for="chkJoinY">예</label></span><input type="radio" name="chkJoinYN" id="chkJoinN"  value="N"><span class="radio_txt"><label for="chkJoinN">아니요</label></span></li>
                                <li><span class="txt">여행자 총 인원:</span>
                                    <span class="seltxt"><label for="selAdult">성인<span class="ageTip">만12세이상</span></label></span>
										
									<select name="adtCnt" id="selAdult" class="selDt">
										<option value="1" selected="selected">1명</option>
					          		<c:forEach begin="2" end="15" var="idx" step="1">
					          			 <option value="<c:out value="${idx}" />">
										<c:out value="${idx}" /></option>
					         		 </c:forEach>
							</select>
                                    <span class="seltxt tip" role="4"><label for="selKids">아동<span class="ageTip">만12세미만<img class="chdTip" src="/images/detail/icon_question.png" alt="안내"></span></label></span>
                                    <select name="chdCnt" id="selKids" class="selDt">
										<option value="0" selected="selected">0명</option>
					          		<c:forEach begin="1" end="15" var="idx" step="1">
					          			 <option value="<c:out value="${idx}" />">
										<c:out value="${idx}" /></option>
					         		 </c:forEach>
							</select>
                                       
                                    <span class="seltxt tip" role="5"><label for="selBaby">유아<span class="ageTip">만2세미만<img class="infTip" src="/images/detail/icon_question.png" alt="안내"></span></label></span>
                                     <select name="infCnt" id="selBaby" class="selDt">
										<option value="0" selected="selected">0명</option>
					          		<c:forEach begin="1" end="15" var="idx" step="1">
					          			 <option value="<c:out value="${idx}" />">
										<c:out value="${idx}" /></option>
					         		 </c:forEach>
							</select>
                                       
		                            <span class="tooltip" >
			                            <span class="period role04">2005.11.06 ~ 2015.11.05</span>
			                            <span class="period role05">2015.11.06 ~ 2017.11.05</span>
			                        </span>
                                </li>
                            </ul>                                
                        </td>
                    </tr>
                </tbody>
            </table>    
            <span class="regDesc">상품 예약 관련된 모든 이메일/SMS는 수신 동의 여부와 관계없이 자동발송 됩니다.</span>
            <span class="regDesc">휴대폰번호와 이메일 주소가 틀리면 서비스 제공이 불가하오니 입력 내용을 다시 한 번 확인해주세요.</span>
            <span class="regDesc">아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</span>
 
            <span class="h1">04.여행자 정보</span>
		  <div id="adtTourist">
            	<div class="tourist">
		            <span class="tourer">여행자 1</span>
		            <input type="hidden" name="ageDivi" value = "A">
		            <input type="hidden" name="goodsPrice" value ="159000">
		            <input type="hidden" name="bafAmt" value="0">
		            <input type="hidden" name="taxAmt" value="60000">
		            <input type="hidden" name="tourNo" value="1">
		            <table>
		                <caption>여행자정보입력</caption>
		                <tbody>
		                    <tr>
		                        <th scope="row" class="input">연령분류</th>
		                        <td class="input">성인(총 예상경비   : <span class="yl">${vo.price}원</span>)</td>
		                        <td class="input"></td>
		                        <td class="input"></td>
		                    </tr>
		                    <tr>
		                        <th scope="row" class="input"><label class="chk" for="resNmKor chk">성명</label></th>
		                        <td class="input"><p id="korText"></p><input type="text" name="resNmKor"></td>
		                        <th scope="row" class="input"><label for="resNmFirstEng">영문성명</label></th>
		                        <td class="input">
		                            <span class="txt">성</span><input type="text" name="resNmLastEng" id="resNmLastEng" title="영문성명" onkeyUp="fnPressEng(event,this);"><span class="spacer"></span>
		                            <span class="txt">이름</span><input type="text" name="resNmFirstEng" id="resNmFirstEng" onkeyUp="fnPressEng(event,this);" title="영문성명" >
		                        </td>
		                    </tr>
		                </tbody>
		            </table>
	            </div>
            </div>


            
            <div id="chdTourist">
            </div>
            
            <div id="infTourist">
            </div>
            
            <span class="h1">05.추가 요청사항</span>
            <table>
                <caption>추가 요청사항입력</caption>
                <tbody>
                    <tr>
                        <th scope="row" class="input h_top"><label for="rervNote">내용</label></th>
                        <td class="input">
                            <textarea name="rervNote" id="rervNote"></textarea>
                        </td>
                    </tr>
                </tbody>
            </table>
            <span class="h1">06.상담지사 선택</span>
		            <table>
		                <caption>상담지사 선택</caption>
		                <tbody>
		                    <tr>
		                        <th scope="row" class="input h_top">지사선택</th>
		                        <td class="input">
		                            <input type="radio" name="rervWorkId" id="chkBranch01" value="1" checked="checked"><span class="radio_txt"><label for="chkBranch01">본사</label></span>
		                            <input type="radio" name="rervWorkId" id="chkBranch02" value="2" ><span class="radio_txt"><label for="chkBranch02">부산지사(부산/경남지역 고객)</label></span>
		                            <input type="radio" name="rervWorkId" id="chkBranch03" value="3" ><span class="radio_txt"><label for="chkBranch03">대구지사(대구/경북지역 고객)</label></span>
		                        </td>
		                    </tr>
		                </tbody>
		            </table>            	
            	<span class="h1">07.결제 정보</span>
            <div class="summary" id="priceSummary">			
            	<%-- <span class="sbj">총 여행경비</span>
           	<span class="sum"> totPrice + '원</span>';
            	 <div class="sum_desc"> (<span>성인</span><span>${vo.price}</span>x<span></span>명 + <span>아동</span><span>${vo.pricech}</span>x<span>chdNum</span>명 + <span>유아</span><span>${vo.pricein}</span>x<span>infNum</span>명)  </div>
            	 --%>
            	 </div>            
            <span class="regDesc">본 상품 가격에는 “항공운임 등 총액(항공권)”이 포함되어 있는 가격이며 유류할증료와 제세공과금은 유가와 환율에 따라 변동될 수 있습니다.</span>
		            <span class="regDesc">담당자와 상담을 하신 후에 최종 예약이 성립되면 예약금 결제 진행을 부탁드립니다. 예약금은 일정표를 참고해주시거나, 담당자에게 안내 받으실 수 있습니다.</span>
		            <span class="regDesc">최종 예약 성립 후 담당자와 약속한 시간내에 예약금을 입금하지 않을 경우 임의 취소 될 수 있습니다.</span>
            </div>
        <div class="btnarea">
            <button type="button" id="btnok" class="btnBlack btn_r">확인</button>
            <button type="button" id="btnproc" class="btnBlack btn_r none">처리중</button>
            <button type="button" id="btncancel" class="btnGray">취소</button>
        </div>  
        </form><!--[[ 입력폼 End ]]-->

    </section><!--[[ content End ]]--><script src="/js/common.js"></script>
