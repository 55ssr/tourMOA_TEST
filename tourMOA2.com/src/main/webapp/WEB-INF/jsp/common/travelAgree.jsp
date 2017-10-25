<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/etc.css" />
<script src="//code.jquery.com/jquery-1.11.0.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".res_step").hide(); 
		$("ul.tab_travel li:first").addClass("active").show(); 
		$(".res_step:first").show(); 
	
		$("ul.tab_travel li").click(function() {
			$("ul.tab_travel li").removeClass("active"); 
			$(this).addClass("active"); 
			$(".res_step").hide(); 
			var activeTab = $(this).find("a").attr("href");
			$(activeTab).show(); 
			return false;
		});
	});	
</script>
<div id="content">
<div id="wrap">
<section id="content"><!--[[ content Start ]]-->
		
		<script type="text/javascript">
		$(document).ready(function() {
			$(".res_step").hide(); 
			$("ul.tab_travel li:first").addClass("active").show(); 
			$(".res_step:first").show(); 

			$("ul.tab_travel li").click(function() {
				$("ul.tab_travel li").removeClass("active"); 
				$(this).addClass("active"); 
				$(".res_step").hide(); 
				var activeTab = $(this).find("a").attr("href");
				$(activeTab).show(); 
				return false;
			});
		});	
		</script>
		
		
		 <div class="title title05"></div>
		<div class="tab_block">
			<ul class="tab_travel">
				<li><a href="#travel1">국외 여행 표준약관</a></li>
				<li><a href="#travel2">국내 여행 표준약관</a></li>
			</ul>
		</div>	  			
		
		<div class="travel_container">
		
        <div class="res_step" id="travel1">
            <div class="yakgwan">
            	<span class="pol_head">공정거래위원회 표준약관 제10021호, 2014년 12월 19일 개정</span>
                <span class="pol_head">제1조 목적</span>
                <span class="pol_head2">이 약관은 투어모아 여행사와 여행자가 체결한 국외여행 계약의 세부 이행 및 준수사항을 정함을 목적으로 합니다.</span>
                <span class="pol_head">제2조 여행업자와 여행자 의무</span>
                <span class="pol_head2">1. 여행업자는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행 알선 및 안내·운송·숙박 등 여행 계획의 수립 및 실행 과정에서 맡은 바 임무를 충실히 수행하여야<br /><span class="brIndent"></span>합니다.</span> 
                <span class="pol_head2">2. 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합 도모 및 여행업자의 여행질서 유지에 적극 협조하여야 합니다.</span> 
                <span class="pol_head">제3조 용어의 정리</span>
                <span class="pol_head2">여행의 종류 및 정의, 해외여행 수속대행업의 정의는 다음과 같습니다.</span> 
                <span class="pol_head2">1. 기획 여행 : 여행업자가 미리 여행 목적지 및 관광 일정, 여행자에게 제공될 운송 및 숙식서비스 내용(이하 ‘여행서비스'라 함), 여행 요금을 정하여 광고 또는 기타 방법으로 여행자를<br /><span class="brIndent"></span>모집하여 실시하는 여행</span> 
                <span class="pol_head2">2. 희망 여행 : 여행자(개인 또는 단체)가 희망하는 여행 조건에 따라 여행업자가 운송·숙식·관광 등 여행에 관한 전반적인 계획을 수립하여 실시하는 여행</span> 
                <span class="pol_head2">3. 해외여행 수속대행(이하 수속대행계약이라 함) : 여행업자가 여행자로부터 소정의 수속대행요금을 받기로 약정하고, 여행자의 위탁에 따라 다음에 열거하는 업무(이하 수속대행업무라함)<br /><span class="brIndent"></span>를 대행하는 것</span> 
                <span class="pol_desc indent15">- 여권, 사증, 재입국 허가 및 각종 증명서 취득에 관한 수속 </span>
                <span class="pol_desc indent15">- 출입국 수속 서류 작성 및 기타 관련 업무</span> 
                <span class="pol_head">제4조 계약의 구성</span>
                <span class="pol_head2">1. 여행계약은 여행계약서(붙임)와 여행약관·여행일정표(또는 여행설명서)를 계약 내용으로 합니다.</span> 
                <span class="pol_head2">2. 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광 내용, 교통수단, 쇼핑횟수, 숙박장소, 식사 등 여행 일정 및 여행사 제공 서비스 내용과 여행자 유의사항이 포함되어야<br /><span class="brIndent"></span>합니다.</span> 
                <span class="pol_head">제5조 특약</span>
                <span class="pol_head2">여행업자와 여행자는 관계 법규에 위반되지 않는 범위 내에서 서면으로 특약을 맺을 수 있습니다. 이 경우 표준약관과 다름을 여행업자는 여행자에게 설명해야 합니다.</span> 
                <span class="pol_head">제6조 계약서 및 약관 등 교부</span>
                <span class="pol_head2">여행업자는 여행자와 여행계약을 체결한 경우 계약서와 여행약관, 여행일정표(또는 여행설명서)를 각 1부씩 여행자에게 교부하여야 합니다.</span> 
                <span class="pol_head">제7조 계약서 및 약관 등 교부 간주</span>
                <span class="pol_head2">여행업자와 여행자는 다음 각 호의 경우 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된 것으로 간주합니다.</span>
                <span class="pol_head2">1. 여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 동의하고 여행계약의 체결을 신청한데 대해 여행업자가 전자정보망 내지 기계적<br /><span class="brIndent"></span>장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</span>
                <span class="pol_head2">2. 여행업자가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부<br /><span class="brIndent"></span>한데 대해 여행업자가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</span>
                <span class="pol_head">제8조 여행업자의 책임</span> 
                <span class="pol_head2">여행업자는 여행 출발시부터 도착시까지 여행업자 본인 또는 그 고용인, 현지 여행업자 또는 그 고용인 등(이하 ‘사용인'이라 함)이 제2조 제1항에서 규정한 여행업자 임무와 관련하여 여행자에게 고의 또는 과실로 손해를 가한 경우 책임을 집니다.</span> 
                <span class="pol_head">제9조 최저행사인원 미충족시 계약 해제</span> 
                <span class="pol_head2">1. 여행업자는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행 출발 7일전까지 여행자에게 통지하여야 합니다.</span> 
                <span class="pol_head2">2. 여행업자가 여행 참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우, 이미 지급받은 계약금 환급 외에 다음 각 목의 1의 금액을 여행자에게 배상하여야 합니다.</span>
                <span class="pol_desc indent15">가. 여행출발 1일전까지 통지시 : 여행요금의 20%</span> 
                <span class="pol_desc indent15">나. 여행출발 당일 통지시 : 여행요금의 50%</span> 
                <span class="pol_head">제10조 계약체결 거절</span> 
                <span class="pol_head2">여행업자는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수 있습니다.</span> 
                <span class="pol_head2">1. 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때</span> 
                <span class="pol_head2">2. 질병 기타 사유로 여행이 어렵다고 인정될 때</span> 
                <span class="pol_head2">3. 계약서에 명시한 최대행사인원이 초과되었을 때</span> 
                <span class="pol_head">제11조 여행요금</span> 
                <span class="pol_head2">1. 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 단, 희망여행은 당사자간 합의에 따릅니다.</span> 
                <span class="pol_desc indent15">가. 항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)</span> 
                <span class="pol_desc indent15">나. 공항, 역, 부두와 호텔 사이 등 송영버스요금</span> 
                <span class="pol_desc indent15">다. 숙박요금 및 식사요금</span> 
                <span class="pol_desc indent15">라. 안내자 경비</span> 
                <span class="pol_desc indent15">마. 여행 중 필요한 각종 세금</span> 
                <span class="pol_desc indent15">바. 국내 공항, 항만 이용료</span>
                <span class="pol_desc indent15">사. 관광진흥개발기금</span> 
                <span class="pol_desc indent15">아. 일정표 내 관광지 입장료</span> 
                <span class="pol_desc indent15">자. 기타 개별계약에 따른 비용</span>
                <span class="pol_head2">2. 여행자는 계약체결시 계약금(여행요금 중 10%이하 금액)을 여행업자에게 지급하여야 하며, 계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.</span>
                <span class="pol_head2">3. 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 7일전까지 여행업자에게 지급하여야 합니다.</span> 
                <span class="pol_head2">4. 여행자는 제1항의 여행요금을 여행업자가 지정한 방법(지로구좌, 무통장입금 등)으로 지급하여야 합니다.</span> 
                <span class="pol_head2">5. 희망여행요금에 여행자 보험료가 포함되는 경우 여행업자는 보험회사명, 보상내용 등을 여행자에게 설명하여야 합니다.</span> 
                <span class="pol_head">제12조 여행요금의 변경</span> 
                <span class="pol_head2">1. 국외여행을 실시함에 있어서 이용운송, 숙박기관에 지급하여야 할 요금이 계약체결시보다 5% 이상 증감하거나 여행요금에 적용된 외화 환율이 계약체결시보다 2% 이상 증감한 경우<br /><span class="brIndent"></span>여행업자 또는 여행자는 그 증감된 금액 범위 내에서 여행요금의 증감을 상대방에게 청구할 수 있습니다.</span> 
                <span class="pol_head2">2. 여행업자는 제1항의 규정에 따라 여행요금을 증액하였을 때에는 여행출발일 15일전에 여행자에게 통지하여야 합니다.</span> 
                <span class="pol_head">제13조 여행조건의 변경요건 및 요금 등의 정산</span>
                <span class="pol_head2">1. 위 제1조 내지 제12조의 여행 조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.</span>
                <span class="pol_desc indent15">가. 여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지 사정에 의하여 부득이하다고 쌍방이 합의한 경우</span>
                <span class="pol_desc indent15">나. 천재지변, 전란, 정부의 명령, 운송·숙박기관 등의 파업·휴업 등으로 여행의 목적을 달성할 수 없는 경우</span>
                <span class="pol_head2">2. 제1항의 여행조건 변경 및 제12조의 여행요금 변경으로 인하여 제11조 제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전 변경분은 여행출발 이전에, 여행중 변경분은 여행 종료 <br /><span class="brIndent"></span>후 10일 이내에 각각 정산(환급)하여야 합니다.</span>
                <span class="pol_head2">3. 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제14조 또는 제15조의 규정에 의한 계약의 해제·해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생분은 여행출발 <br /><span class="brIndent"></span>이전에, 여행중 발생분은 여행 종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</span>
                <span class="pol_head2">4. 여행자는 여행 출발 후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 여행업자에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 단, 여행이 <br /><span class="brIndent"></span>중도에 종료된 경우에는 제16조에 준하여 처리합니다.</span> 
                <span class="pol_head">제14조 손해배상</span>
                <span class="pol_head2">1. 여행업자는 현지여행업자 등의 고의 또는 과실로 여행자에게 손해를 가한 경우 여행업자는 여행자에게 손해를 배상하여야 합니다.</span> 
                <span class="pol_head2">2. 여행업자의 귀책사유로 여행자의 국외여행에 필요한 여권, 사증, 재입국 허가 또는 각종 증명서 등을 취득하지 못하여 여행자의 여행일정에 차질이 생긴 경우 여행업자는 여행자로부터 <br /><span class="brIndent"></span>절차대행을 위하여 받은 금액 전부 및 그 금액의 100% 상당액을 여행자에게 배상하여야 합니다.</span> 
                <span class="pol_head2">3. 여행업자는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상하여야 합니다. 단, 여행업자가 고의 또는 과실이 없음을 입증한 때에는 <br /><span class="brIndent"></span>그러하지 아니합니다.</span> 
                <span class="pol_head2">4. 여행업자는 자기나 그 사용인이 여행자의 수하물 수령, 인도, 보관 등에 관하여 주의를 해태(懈怠)하지 아니하였음을 증명하지 아니하면 여행자의 수하물 멸실, 훼손 또는 연착으로 인한 <br /><span class="brIndent"></span>손해를 배상할 책임을 면하지 못합니다.</span> 
                <span class="pol_head">제15조 여행출발 전 계약해제</span>
                <span class="pol_head2">1. 여행업자 또는 여행자는 여행출발 전 이 여행 계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자피해보상규정' (재정경제부고시)에 따라 배상합니다.</span> 
                <span class="pol_head2">2. 여행업자 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게 제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.</span> 
                <span class="pol_desc indent15 mgt10">가. 여행업자가 해제할 수 있는 경우</span>
                <span class="pol_desc indent15">- 제13조 제1항 제1호 및 제2호 사유의 경우</span> 
                <span class="pol_desc indent15">- 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때</span> 
                <span class="pol_desc indent15">- 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</span> 
                <span class="pol_desc indent15">- 여행자가 계약서에 기재된 기일까지 여행요금을 납입하지 아니한 경우</span> 
                <span class="pol_desc indent15 mgt13">나. 여행자가 해제할 수 있는 경우</span>
                <span class="pol_desc indent15">- 제13조 제1항 제1호 및 제2호의 사유가 있는 경우</span> 
                <span class="pol_desc indent15">- 여행자의 3촌 이내 친족이 사망한 경우</span>
                <span class="pol_desc indent15">- 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</span>
                <span class="pol_desc indent15">- 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여 여행 출발 전까지 퇴원이 곤란한 경우 그 배우자 또는 보호자 1인</span>
                <span class="pol_desc indent15">- 여행업자의 귀책사유로 계약서 또는 여행일정표(여행설명서)에 기재된 여행일정대로의 여행실시가 불가능해진 경우</span>
                <span class="pol_desc indent15">- 제12조 제1항의 규정에 의한 여행요금의 증액으로 인하여 여행 계속이 어렵다고 인정될 경우</span>
                <span class="pol_head">제16조 여행출발 후 계약해지</span>
                <span class="pol_head2">1. 여행업자 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 이 여행계약을 해지할 수 있습니다. <br /><span class="brIndent"></span>단, 이로 인하여 상대방이 입은 손해를 배상하여야 합니다.</span>
                <span class="pol_head2">2. 제1항의 규정에 의하여 계약이 해지된 경우 여행업자는 여행자가 귀국하는데 필요한 사항을 협조하여야 하며, 이에 필요한 비용으로서 여행업자의 귀책사유에 의하지 아니한 것은 <br /><span class="brIndent"></span>여행자가 부담합니다.</span>
                <span class="pol_head">제17조 여행의 시작과 종료 </span>
                <span class="pol_head2">여행의 시작은 탑승수속(선박인 경우 승선수속)을 마친 시점으로 하며, 여행의 종료는 여행자가 입국장 보세구역을 벗어나는 시점으로 합니다. 단, 계약내용상 국내이동이 있을 경우에는 최초 출발지에서 이용하는 운송수단의 출발시각과 도착시각으로 합니다.</span>
                <span class="pol_head">제18조 설명의무</span>
                <span class="pol_head2">여행업자는 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야 합니다.</span>
                <span class="pol_head">제19조 보험가입 등</span>
                <span class="pol_head2">여행업자는 이 여행과 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위한 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.</span>
                <span class="pol_head">제20조 기타사항</span>
                <span class="pol_head2">1. 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 여행업자 또는 여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반<br /><span class="brIndent"></span>관례에 따릅니다.</span>
                <span class="pol_head2">2. 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 달리 정할 수 있습니다.</span>
            </div>
        </div>
		<div class="res_step" id="travel2">
			<div class="yakgwan">
				<span class="pol_head">공정거래위원회 표준약관 제10021호, 2014년 12월 19일 개정</span>
				<span class="pol_head">제1조 목적</span>
				<span class="pol_head2">이 약관은 투어모아 여행사와 여행자가 체결한 국내여행계약의 세부이행 및 준수사항을 정함을 목적으로 합니다.</span>
				<span class="pol_head">제2조 여행사와 여행자 의무</span>
				<span class="pol_head2">① 여행사는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행알선 및 안내․운송․숙박 등 여행계획의 수립 및 실행과정에서 맡은 바 임무를 충실히 수행하여야 합니다.</span>
				<span class="pol_head2">② 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 여행사의 여행질서 유지에 적극 협조하여야 합니다.</span>
				<span class="pol_head">제3조 여행의 종류 및 정의 </span>
				<span class="pol_head2">여행의 종류와 정의는 다음과 같습니다.</span>
				<span class="pol_head2">1. 일반모집여행 : 여행사가 수립한 여행조건에 따라 여행자를 모집하여 실시하는 여행.</span>
				<span class="pol_head2">2. 희망여행 : 여행자가 희망하는 여행조건에 따라 여행사가 실시하는 여행.</span>
				<span class="pol_head2">3. 위탁모집여행 : 여행사가 만든 모집여행상품의 여행자 모집을 타 여행업체에 위탁하여 실시하는 여행.</span>
				<span class="pol_head">제4조 계약의 구성</span>
				<span class="pol_head2">① 여행계약은 여행계약서(붙임)와 여행약관․여행일정표(또는 여행 설명서)를 계약내용으로 합니다.</span>
				<span class="pol_head2">② 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광내용․교통수단․쇼핑횟수․숙박장소․식사 등 여행실시일정 및 여행사 제공 서비스 내용과 여행자 유의사항이 포함되어야 합니다.</span>
				<span class="pol_head">제5조 특약</span>
				<span class="pol_head2">여행사와 여행자는 관계법규에 위반되지 않는 범위내에서 서면으로 특약을 맺을 수 있습니다. 이 경우 표준약관과 다름을 여행사는 여행자에게 설명하여야 합니다.</span>
				<span class="pol_head">제6조 계약서 및 약관 등 교부</span>
				<span class="pol_head2">여행사는 여행자와 여행계약을 체결한 경우 계약서와 여행약관, 여행일정표(또는 여행설명서)를 각 1부씩 여행자에게 교부하여야 합니다.</span>
				<span class="pol_head">제7조 계약서 및 약관 등 교부 간주</span>
				<span class="pol_head2">다음 각 호의 경우에는 여행사가 여행자에게 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된 것으로 간주합니다.</span>
				<span class="pol_head2">1. 여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 동의하고 여행계약의 체결을 신청한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</span>
				<span class="pol_head2">2. 여행사가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</span> 
				<span class="pol_head">제8조 여행사의 책임</span>
				<span class="pol_head2">① 여행사는 여행 출발시부터 도착시까지 여행사 본인 또는 그 고용인, 현지여행사 또는 그 고용인 등(이하 ‘사용인’이라 함)이 제2조제1항에서 규정한 여행사 임무와 관련하여 여행자에게 고의 또는 과실로 손해를 가한 경우 책임을 집니다.</span>
				<span class="pol_head2">② 여행사는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상하여야 합니다. 다만, 여행사가 고의 또는 과실이 없음을 입증한 때에는 그러하지 아니합니다.</span>
				<span class="pol_head2"> ③ 여행사는 자기나 그 사용인이 여행자의 수하물 수령․인도․보관 등에 관하여 주의를 해태하지 아니하였음을 증명하지 아니 하는 한 여행자의 수하물 멸실, 훼손 또는 연착으로 인하여 발생한 손해를 배상하여야 합니다.
				</span>
				<span class="pol_head">제9조 최저 행사인원 미 충족시 계약해제</span>
				<span class="pol_head2">① 여행사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 당일여행의 경우 여행출발 24시간 이전까지, 1박2일 이상인 경우에는 여행출발 48시간 이전까지 여행자에게 통지하여야 합니다.</span>
				<span class="pol_head2">② 여행사가 여행참가자 수의 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 계약금 100% 상당액을 여행자에게 배상하여야 합니다.</span>
				<span class="pol_head">제10조 계약체결 거절</span>
				<span class="pol_head2">여행사는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수 있습니다.</span>
				<span class="pol_head2">1. 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때</span>
				<span class="pol_head2">2. 질병 기타 사유로 여행이 어렵다고 인정될 때</span>
				<span class="pol_head2">3. 계약서에 명시한 최대행사인원이 초과되었을 때</span>
				<span class="pol_head">제11조 여행요금</span>
				<span class="pol_head2">① 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 다만, 희망여행은 당사자간 합의에 따릅니다.</span>
				<span class="pol_desc indent15">1. 항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)</span>
				<span class="pol_desc indent15">2. 공항, 역, 부두와 호텔사이 등 송영버스요금</span>
				<span class="pol_desc indent15">3. 숙박요금 및 식사요금</span>
				<span class="pol_desc indent15">4. 안내자경비</span>
				<span class="pol_desc indent15">5. 여행 중 필요한 각종 세금</span>
				<span class="pol_desc indent15">6. 국내 공항․항만 이용료</span>
				<span class="pol_desc indent15">7. 일정표내 관광지 입장료</span>
				<span class="pol_desc indent15">8. 기타 개별계약에 따른 비용</span>
				<span class="pol_head2">② 여행자는 계약 체결시 계약금(여행요금 중 10%이하의 금액)을 여행사에게 지급하여야 하며, 계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.</span>
				<span class="pol_head2">③ 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 전일까지 여행사에게 지급하여야 합니다.</span>
				<span class="pol_head2">④ 여행자는 제1항의 여행요금을 당사자가 약정한 바에 따라 카드, 계좌이체 또는 무통장입금 등의 방법으로 지급하여야 합니다.</span>
				<span class="pol_head2">⑤ 희망여행요금에 여행자 보험료가 포함되는 경우 여행사는 보험회사명, 보상내용 등을 여행자에게 설명하여야 합니다.</span>
				<span class="pol_head">제12조 여행조건의 변경요건 및 요금 등의 정산 </span>
				<span class="pol_head2">① 위 제1조 내지 제11조의 여행조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.</span>
				<span class="pol_desc indent15">1. 여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지사정에 의하여 부득이하다고 쌍방이 합의한 경우</span>
				<span class="pol_desc indent15">2. 천재지변, 전란, 정부의 명령, 운송‧숙박기관 등의 파업‧휴업 등으로 여행의 목적을 달성할 수 없는 경우 </span>
				<span class="pol_head2">② 제1항의 여행조건 변경으로 인하여 제11조제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전 변경 분은 여행출발 이전에, 여행 중 변경 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</span>
				<span class="pol_head2">③ 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제13조 또는 제14조의 규정에 의한 계약의 해제‧해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생 분은 여행출발이전에, 여행 중 발생 분은 여행 종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</span> 
				<span class="pol_head2">④ 여행자는 여행출발후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 여행사에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 다만, 여행이 중도에 종료된 경우에는 제14조에 준하여 처리합니다.</span>
				<span class="pol_head">제13조 여행출발 전 계약해제</span>
				<span class="pol_head2">① 여행사 또는 여행자는 여행출발전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.  </span>
				<span class="pol_head2">② 여행사 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게 제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.</span>
				<span class="pol_desc indent15">1. 여행사가 해제할 수 있는 경우</span>
				<span class="pol_desc indent15 mgt10">가. 제12조제1항제1호 및 제2호사유의 경우</span>
				<span class="pol_desc indent15 mgt10">나. 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때</span>
				<span class="pol_desc indent15 mgt10">다. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</span>
				<span class="pol_desc indent15 mgt10">라. 여행자가 계약서에 기재된 기일까지 여행요금을 지급하지 아니하는 경우</span>
				<span class="pol_desc indent15">2. 여행자가 해제할 수 있는 경우 </span>
				<span class="pol_desc indent15 mgt10">가. 제12조제1항제1호 및 제2호사유의 경우</span>
				<span class="pol_desc indent15 mgt10">나. 여행자의 3촌이내 친족이 사망한 경우</span>
				<span class="pol_desc indent15 mgt10">다. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</span>
				<span class="pol_desc indent15 mgt10">라. 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여 여행 출발시까지 퇴원이 곤란한 경우 그 배우자 또는 보호자 1인</span>
				<span class="pol_desc indent15 mgt10">마. 여행사의 귀책사유로 계약서에 기재된 여행일정대로의 여행실시가 불가능해진 경우</span>
				<span class="pol_head">제14조 여행출발 후 계약해지</span>
				<span class="pol_head2">① 여행사 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 이 계약을 해지할 수 있습니다. 다만, 이로 인하여 상대방이 입은 손해를 배상하여야 합니다.</span>
				<span class="pol_head2">② 제1항의 규정에 의하여 계약이 해지된 경우 여행사는 여행자가 귀가하는데 필요한 사항을 협조하여야 하며, 이에 필요한 비용으로서 여행사의 귀책사유에 의하지 아니한 것은 여행자가 부담합니다.</span>
				<span class="pol_head">제15조 여행의 시작과 종료 </span>
				<span class="pol_head2">여행의 시작은 출발하는 시점부터 시작하며 여행일정이 종료하여 최종목적지에 도착함과 동시에 종료합니다. 다만, 계약 및 일정을 변경할 때에는 예외로 합니다.</span>
				<span class="pol_head">제16조 설명의무</span>
				<span class="pol_head2">여행사는 이 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야 합니다.</span>
				<span class="pol_head">제17조 보험가입 등</span>
				<span class="pol_head2">여행사는 여행과 관련하여 여행자에게 손해가 발생 한 경우 여행자에게 보험금을 지급하기 위한 보험 또는 공제에 가입하거나 영업 보증금을 예치하여야 합니다.</span>
				<span class="pol_head">제18조 기타사항</span>
				<span class="pol_head2">① 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 여행사와 여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따릅니다.</span>
				<span class="pol_head2">② 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 다르게 정할 수 있습니다.</span>					
			</div>
		</div>
	</div>	
    </section>
</div>
</div>