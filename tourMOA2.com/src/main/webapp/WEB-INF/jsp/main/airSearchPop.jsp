<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/popUpMain.css">
	<style>
	#airSearchPopWrap {  
	  position:absolute;  
	  z-index:9000;  
	  background-color:#000;  
	  display:none;  
	  left:0;
	  top:0;
	}
	.airSearchPop{
	  display: none;
	  position:absolute;  
	  left:550px;
	  top:100px;
	  z-index:10000;
	}
	</style>
	<script src="https://code.jquery.com/jquery-latest.js"></script> 
	<script>
	function wrapWindowByMask(){
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();  
		var maskWidth = $(window).width();  

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#airSearchPopWrap').css({'width':maskWidth,'height':maskHeight});  

		//애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
		$('#airSearchPopWrap').fadeIn(1000);      
		$('#airSearchPopWrap').fadeTo("slow",0.8);    

		//윈도우 같은 거 띄운다.
		$('.airSearchPop').show();
	}

	$(document).ready(function(){
		//검은 막 띄우기
		$('.openairSearchPopWrap').click(function(e){
			e.preventDefault();
			wrapWindowByMask();
		});

		//닫기 버튼을 눌렀을 때
		$('.airSearchPop .airSearchPopClose').click(function (e) {  
		    //링크 기본동작은 작동하지 않도록 한다.
		    e.preventDefault();  
		    $('#airSearchPopWrap, .airSearchPop').hide();  
		});       

		//검은 막을 눌렀을 때
		$('#airSearchPopWrap').click(function () {  
		    $(this).hide();  
		    $('.airSearchPop').hide();   
		});     
		// 터치 스크린에서 검은 막 클릭 시 닫기 안됨.
		$('#airSearchPopWrap').one('touchstart', function () {  
		    $(this).unbind('click');
		});
	});
</script>
<div id="airSearchPopWrap"></div>
<div class="airSearchPop">
<!-- <script src="/js/jquery.film_roll.min.js"></script> -->
<!-- <script src="/js/jquery-ui.js"></script> -->
<script type="text/javascript">
$(document).ready(function(){
	$(".k1_cpoint_over1, .layer_close, .close_pop").click(function(){
		closeLayer();
	});
});

function fn_citySearch(){
	var searchtext = $("#input_search").val();
	if(searchtext != undefined && searchtext != ''){
		$.ajax({
			  type:"POST"	
			, url:"/main/citySearch.do"
			, data:{
				searchtext : searchtext
			}
			, success:function(json) {
								
				if(json.length > 0){
					var txt = '';
					txt += '<colgroup>';
					txt += '		<col style="width:130px;">';
					txt += '	<col style="width:140px;">';
					txt += '	<col style="width:185px;">';
					txt += '	<col style="width:*;">';
					//txt += '	<col style="width:10px;">';
					txt += '</colgroup>';
					txt += '<tbody>';
					txt += '	<tr>';
					txt += '		<th>공항(한글명)</th>';
					txt += '		<th>도시(한글명)</th>';
					txt += '		<th>도시(영문명)</th>';
					txt += '		<th class="">국가</th>';
					//txt += '		<th class=""></th>';
					txt += '	</tr>';
					for(var i=0;i<json.length;i++){
						txt += '	<tr>';
						txt += '		<td><a href="javascript:fn_setCtyCdNm(3, \''+json[i].airportcd+'\', \''+json[i].airportkornm+'\');" onclick="closeLayer()">'+json[i].airportkornm+'<br>('+json[i].airportcd+')</a></td>';
						txt += '		<td>'+json[i].citykornm+'</a></td>';
						txt += '		<td>'+json[i].cityengnm+'</a></td>';
						txt += '		<td class="">'+json[i].nationkornm+'</a></td>';
						//txt += '		<td></td>';
						txt += '	</tr>';
					}
					txt += '</tbody>';
					
					$("#cityTable").html(txt);
					$("#searchbox").css("display","block");
				}else{
					$("#searchbox").css("display","none");
					$("#cityTable").html("");
					alert("검색 결과가 없습니다.");
					
				}
			}
			, error: function() {
				//alert('Saving Error! ');
			}

	 	});	
	}else{
		alert("검색어를 입력해주세요.");
		return false;
	}
}
</script>
<input type="hidden" id="biztype" value="">
<input type="hidden" id="htlcitycd" value="">

<div class="k1_yb_pop_wrap" style="background-color: rgb(255, 255, 255);">
	<h4>도시검색</h4>
	<div class="k1_yb_pop_contents" style="">
		<!-- 도시 이름 검색 -->
		<p class="k1_tac k1_mb30" style="float:left; width:100%; text-align:center; margin:0 auto;">여행하실 도시의 한글 이름 또는 영문이름을 입력하고 검색버튼을 클릭해주세요.</p>
		<p class="k1_title k1_tac k1_mb30" style="float:left; width:100%; text-align:center; margin:0 auto;">
			도시명 검색
			<input class="k1_input_text k1_w180" type="text" value="" id="input_search" onkeydown="javascript:if (event.keyCode == 13){ fn_citySearch(); return false;} " style="height: 26px;">
			<button class="k1_yb_btn k1_yb_btn_gray " type="button" id="btn_search" onclick="fn_citySearch();">도시검색</button>
		</p>
		<!-- 도시 이름 -->
		<div id="searchbox" class="k1_city_name k1_mt10" style="display:none;">
			<!-- <a href="#k1_aftertable_1" id="k1_beforetable_1" class="k1_blind">장식용 콘텐츠 다음으로 건너뛰기</a> -->
			<!-- <a href="#k1_beforetable_1" id="k1_aftertable_1" class="k1_blind">장식용 콘텐츠 이전으로 건너뛰기</a> -->
			<table class="k1_tbl k1_tbl_basic k1_mt10 k1_mb0" id="cityTable"></table>
			<!-- <div class="k1_gride3 k1_gh150" id="div_city_list"></div> -->
		</div>
		<!-- //도시 검색 -->
		<!-- //도시 이름 검색 -->
		<p class="k1_title k1_mt20">주요도시 바로 선택</p>
		<!-- 도시 검색 -->
		<table class="k1_tbl k1_tbl_form k1_tbl_form_bdr" id="maincitylist">
			
			<tbody>
				<tr>
					<th rowspan="2">일본</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'NRT','도쿄/나리타'); closeLayer(); return false;">도쿄/나리타</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'HND','도쿄/하네다'); closeLayer(); return false;">도쿄/하네다</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'NGO','나고야'); closeLayer(); return false;">나고야</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'OSA','오사카'); closeLayer(); return false;">오사카</a></td>
				</tr>				
				<tr>
					<th style="display: none;">일본</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'FUK','후쿠오카'); closeLayer(); return false;">후쿠오카</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'OKA','오키나와'); closeLayer(); return false;">오키나와</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SPK','삿포로'); closeLayer(); return false;">삿포로</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'OKJ','오카야마'); closeLayer(); return false;">오카야마</a></td>
				</tr>				
				<tr>
					<th rowspan="4">중국</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CAN','광저우'); closeLayer(); return false;">광저우</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'PVG','상해/푸동'); closeLayer(); return false;">상해/푸동</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SHA','상해/홍차오'); closeLayer(); return false;">상해/홍차오</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'BJS','북경'); closeLayer(); return false;">북경</a></td>
				</tr>				
				<tr>
					<th style="display: none;">중국</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'DLC','대련'); closeLayer(); return false;">대련</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'TAO','청도'); closeLayer(); return false;">청도</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'WEH','위해'); closeLayer(); return false;">위해</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'YNJ','연길'); closeLayer(); return false;">연길</a></td>
				</tr>				
				<tr>
					<th style="display: none;">중국</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'TSN','천진'); closeLayer(); return false;">천진</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'XMN','하문'); closeLayer(); return false;">하문</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'KMG','곤명'); closeLayer(); return false;">곤명</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'TXN','황산'); closeLayer(); return false;">황산</a></td>
				</tr>				
				<tr>
					<th style="display: none;">중국</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CKG','중경'); closeLayer(); return false;">중경</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
				</tr>				
				<tr>
					<th rowspan="5">아시아</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SIN','싱가포르'); closeLayer(); return false;">싱가포르</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'BKK','방콕'); closeLayer(); return false;">방콕</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MNL','마닐라'); closeLayer(); return false;">마닐라</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SGN','호치민'); closeLayer(); return false;">호치민</a></td>
				</tr>				
				<tr>
					<th style="display: none;">아시아</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'HKG','홍콩'); closeLayer(); return false;">홍콩</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'TPE','대만/타오위안'); closeLayer(); return false;">대만/타오위안</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CEB','세부'); closeLayer(); return false;">세부</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'HKT','푸켓'); closeLayer(); return false;">푸켓</a></td>
				</tr>				
				<tr>
					<th style="display: none;">아시아</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'HAN','하노이'); closeLayer(); return false;">하노이</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'KUL','쿠알라룸푸르'); closeLayer(); return false;">쿠알라룸푸르</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'DPS','발리'); closeLayer(); return false;">발리</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'KLO','칼리보'); closeLayer(); return false;">칼리보</a></td>
				</tr>				
				<tr>
					<th style="display: none;">아시아</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CNX','치앙마이'); closeLayer(); return false;">치앙마이</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'JKT','자카르타'); closeLayer(); return false;">자카르타</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'DAD','다낭'); closeLayer(); return false;">다낭</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'KTM','카트만두'); closeLayer(); return false;">카트만두</a></td>
				</tr>				
				<tr>
					<th style="display: none;">아시아</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'PNH','프놈펜'); closeLayer(); return false;">프놈펜</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'REP','씨엠립'); closeLayer(); return false;">씨엠립</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CMB','콜롬보'); closeLayer(); return false;">콜롬보</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MLE','몰디브/말레'); closeLayer(); return false;">몰디브/말레</a></td>
				</tr>				
				<tr>
					<th rowspan="5">미주/중남미</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'EWR','뉴욕/뉴왁'); closeLayer(); return false;">뉴욕/뉴왁</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SAO','상파울로'); closeLayer(); return false;">상파울로</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'JFK','뉴욕/존에프케네디'); closeLayer(); return false;">뉴욕/존에프케네디</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'LGA','뉴욕/라과디아'); closeLayer(); return false;">뉴욕/라과디아</a></td>
				</tr>				
				<tr>
					<th style="display: none;">미주/중남미</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'LAX','로스앤젤레스'); closeLayer(); return false;">로스앤젤레스</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'YVR','밴쿠버'); closeLayer(); return false;">밴쿠버</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MEX','멕시코시티'); closeLayer(); return false;">멕시코시티</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SFO','샌프란시스코'); closeLayer(); return false;">샌프란시스코</a></td>
				</tr>				
				<tr>
					<th style="display: none;">미주/중남미</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SEA','시애틀'); closeLayer(); return false;">시애틀</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'YTO','토론토'); closeLayer(); return false;">토론토</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'HNL','하와이/호놀룰루'); closeLayer(); return false;">하와이/호놀룰루</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'DFW','댈러스'); closeLayer(); return false;">댈러스</a></td>
				</tr>				
				<tr>
					<th style="display: none;">미주/중남미</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'WAS','워싱턴'); closeLayer(); return false;">워싱턴</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CHI','시카고'); closeLayer(); return false;">시카고</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'ATL','애틀랜타'); closeLayer(); return false;">애틀랜타</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'LAS','라스베가스'); closeLayer(); return false;">라스베가스</a></td>
				</tr>				
				<tr>
					<th style="display: none;">미주/중남미</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'HOU','휴스톤'); closeLayer(); return false;">휴스톤</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
				</tr>				
				<tr>
					<th rowspan="4">유럽</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'LON','런던'); closeLayer(); return false;">런던</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'ROM','로마'); closeLayer(); return false;">로마</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'PAR','파리'); closeLayer(); return false;">파리</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MAD','마드리드'); closeLayer(); return false;">마드리드</a></td>
				</tr>				
				<tr>
					<th style="display: none;">유럽</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'IST','이스탄불'); closeLayer(); return false;">이스탄불</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'PRG','프라하'); closeLayer(); return false;">프라하</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'FRA','프랑크푸르트'); closeLayer(); return false;">프랑크푸르트</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MOW','모스크바'); closeLayer(); return false;">모스크바</a></td>
				</tr>				
				<tr>
					<th style="display: none;">유럽</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'AMS','암스테르담'); closeLayer(); return false;">암스테르담</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'ZRH','취리히'); closeLayer(); return false;">취리히</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'BCN','바르셀로나'); closeLayer(); return false;">바르셀로나</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MIL','밀라노'); closeLayer(); return false;">밀라노</a></td>
				</tr>				
				<tr>
					<th style="display: none;">유럽</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'VIE','비엔나'); closeLayer(); return false;">비엔나</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'VVO','블라디보스토크'); closeLayer(); return false;">블라디보스토크</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'TAS','타쉬켄트'); closeLayer(); return false;">타쉬켄트</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'NCE','니스'); closeLayer(); return false;">니스</a></td>
				</tr>				
				<tr>
					<th rowspan="2">대양주</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'GUM','괌'); closeLayer(); return false;">괌</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SYD','시드니'); closeLayer(); return false;">시드니</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'BNE','브리즈번'); closeLayer(); return false;">브리즈번</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'MEL','멜버른'); closeLayer(); return false;">멜버른</a></td>
				</tr>				
				<tr>
					<th style="display: none;">대양주</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'AKL','오클랜드'); closeLayer(); return false;">오클랜드</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'SPN','사이판'); closeLayer(); return false;">사이판</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'NAN','난디'); closeLayer(); return false;">난디</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'PER','퍼스'); closeLayer(); return false;">퍼스</a></td>
				</tr>				
				<tr>
					<th rowspan="2">중동/아프리카</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'DXB','두바이'); closeLayer(); return false;">두바이</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'NBO','나이로비'); closeLayer(); return false;">나이로비</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'JNB','요하네스버그'); closeLayer(); return false;">요하네스버그</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CAI','카이로'); closeLayer(); return false;">카이로</a></td>
				</tr>				
				<tr>
					<th style="display: none;">중동/아프리카</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'DOH','도하'); closeLayer(); return false;">도하</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CPT','케이프타운'); closeLayer(); return false;">케이프타운</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
				</tr>				
				<tr>
					<th rowspan="2">국내</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'ICN','인천'); closeLayer(); return false;">인천</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'GMP','김포'); closeLayer(); return false;">김포</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'PUS','부산'); closeLayer(); return false;">부산</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'YNY','양양'); closeLayer(); return false;">양양</a></td>
				</tr>				
				<tr>
					<th style="display: none;">국내</th>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'CJU','제주'); closeLayer(); return false;">제주</a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
					<td><a href="#_modal" class="k1_cpoint_over1" onclick="javascript:fn_setCtyCdNm(3,'',''); closeLayer(); return false;"></a></td>
				</tr>				
				</tbody>
		</table>
		<!-- //도시 선택 -->

    </div>
	<a class="airSearchPopClose" href="javascript:;">팝업창 닫기</a>
</div>
</div>

	<a href="#" class="openairSearchPopWrap">검은 막 띄우기</a>

