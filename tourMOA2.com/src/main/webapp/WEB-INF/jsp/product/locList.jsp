<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div id="content">

<link rel="stylesheet" href="/css/main_product.css">



<!--[[ header End ]]-->
<script type="text/javaScript" defer="defer">

var pageNum = 1;
var pageSize = 100 ;  // 페이지당 게시글 수
var pdtSort = "";
var flag = "";

function callMaster(menu, loc, pid, did, pdtSort, searchNa, searchCity, selectPageNum){
	pageNum = 1;
	$.ajax({
    	url:"/product/incLocList.do"
    	,async:false
    	,data:{
    		  "menu"		: menu
      		, "loc"			: loc
      		, "pid"			: pid
      		, "did"			: did
      		, "pdtSort"		: pdtSort
      		, "searchNa"	: searchNa
      		, "searchCity"	: searchCity
      		, "startRow"		: pageNum
      		, "endRow"		: pageNum*pageSize
    	}        	
    	,success:function(html){
    		$("#product02").html(html);
    		pageNum = pageNum + 1;
    		
    		if (parseInt($("#totalCnt").text())<=parseInt($("#cnt").text())) {
    			$("button[name='btnMore']").css("display","none");
        		$("#cnt").text($("#totalCnt").text());
    		}
    		
    	}
    	,error: function(html) {
			//alert("incMaster");
		}
    });
}

function callMasterSort(menu, loc, pid, did, selectPdtSort, searchNa, searchCity, selectPageNum){
	pdtSort = selectPdtSort;
	pageNum = 1;
	$.ajax({
    	url:"/product/incLocList.do"
    	,data:{
    		  "menu"		: menu
      		, "loc"			: loc
      		, "pid"			: pid
      		, "did"			: did
      		, "pdtSort"		: pdtSort
      		, "searchNa"	: searchNa
      		, "searchCity"	: searchCity
      		, "startRow"		: (pageNum-1)*pageSize+1
      		, "endRow"		: pageNum*pageSize
    	}        	
    	,success:function(html){
    		if (pageNum != 1) {
    			$(".listBar").append(jQuery(html).find(".listBar").children());
    		} else {
    			$("#product02").empty();
        		$("#product02").html(html);
    			$("#pdtSort").val(pdtSort).attr("selected", "selected");
	   		}
			
    		$("#cnt").text(pageNum*pageSize-1);
    		if (parseInt($("#totalCnt").text())<=parseInt($("#cnt").text())) {
    			$(".morelist").css("display","none");
        		$("#cnt").text($("#totalCnt").text());
    		}
    		pageNum = pageNum + 1;
    	}
    	,error: function(html) {
			//alert("incMaster");
		}
    });
}

function callMasterSelect(menu, loc, pid, did, selectPdtSort, searchNa, searchCity, selectPageNum){
	if(selectPdtSort != pdtSort) {
		pageNum = 1;
		pdtSort = selectPdtSort;
	}
	
	$.ajax({
    	url:"/product/incLocList.do"
    	,data:{
    		  "menu"		: menu
      		, "loc"			: loc
      		, "pid"			: pid
      		, "did"			: did
      		, "pdtSort"		: pdtSort
      		, "searchNa"	: searchNa
      		, "searchCity"	: searchCity
      		, "startRow"		: (pageNum-1)*pageSize+1
      		, "endRow"		: pageNum*pageSize
    	}        	
    	,success:function(html){
    		if (pageNum != 1) {
    			$(".listBar").append(jQuery(html).find(".listBar").children());
    		} else {
    			$("#product02").empty();
        		$("#product02").html(html);
    			$("#pdtSort").val(pdtSort).attr("selected", "selected");
	   		}
			
			pageNum = pageNum + 1;
    		$("#cnt").text(pageNum*pageSize-1);
			
			if (parseInt($("#totalCnt").text())<=parseInt($("#cnt").text())) {
    			$(".morelist").css("display","none");
        		$("#cnt").text($("#totalCnt").text());
    		}
    	}
    	,error: function(html) {
			//alert("incMaster");
		}
    });
}

function callMasterAppend(menu, loc, pid, did, selectPdtSort, selectPageNum){
	if(selectPdtSort != pdtSort) {
		pageNum = 1;
		pdtSort = selectPdtSort;
	}
	
	$.ajax({
    	url:"/product/incLocList.do"
    	,data:{
    		  "menu"		: menu
      		, "loc"			: loc
      		, "pid"			: pid
      		, "did"			: did
      		, "pdtSort"		: pdtSort
      		, "startRow"	: (pageNum-1)*pageSize+1
      		, "endRow"		: pageNum*pageSize
    	}        	
    	,success:function(html){
    		if (pageNum != 1) {
    			$(".listBar").append(jQuery(html).find(".listBar").children());
    		} else {
    			$("#product02").empty();
        		$("#product02").html(html);
    			$("#pdtSort").val(pdtSort).attr("selected", "selected");
	   		}
			
    		$("#cnt").text(pageNum*pageSize);
			
			if (parseInt($("#totalCnt").text())<=parseInt($("#cnt").text())) {
    			$(".morelist").css("display","none");
        		$("#cnt").text($("#totalCnt").text());
    		}
			pageNum = pageNum + 1;
    	}
    	,error: function(html) {
			//alert("incMaster");
		}
    });
}

$(document).ready(function(){
	callMasterAppend("pkg" ,"90" ,"336" ,"60", '', 0, '');
});

</script>

    <section id="content"><!--[[ content Start ]]-->

        <div id="product01" class="pdt50"><!--[[ MD추천상품 and 상품예약문의 Start ]]-->
            <div class="gridbox">

                <div class="gridL"><!--[[ MD추천상품 Start ]]-->
                    <h2 class="tit_con">
						<img src="/images/content/tit/tit_com_md.png" alt="MD 추천상품">					
					</h2>
                    
                    <div class="cont01 mgt20">
                        <ul>
                        	<li>
	                                <a href="/product/unitList.do?code=102">
	                                <span class="pic">
	                                <img src="https://dimgcdn.ybtour.co.kr/TN/5f/5fed74d174520acd1a1d274f98a7610d.tn.410x280.jpg" alt="이미지설명">
	                                	</span>	                                
	                                <span class="best01"></span>
	                                <div class="info">
	                                    <span class="detail">
	                                    	[콩닥콩닥,동유럽 불빛 아래 콩닥]동유럽5국12일OZ[...
												 </span>
	                                    <span class="price">1,902,000<p>원 ~</p></span>
	                                </div>
	                                </a>
	                            </li>
                        	<li>
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2012">
	                                <span class="pic">
	                                <img src="https://dimgcdn.ybtour.co.kr/TN/a4/a4744a5361ce6e47d8cdbace0344ff2e.tn.410x280.jpg" alt="이미지설명">
	                                	</span>	                                
	                                <span class="best02"></span>
	                                <div class="info">
	                                    <span class="detail">
	                                    	[예술문화의 도시] 베를린+드레스덴 동유럽5국(독/오/...
												 </span>
	                                    <span class="price">2,190,000<p>원 ~</p></span>
	                                </div>
	                                </a>
	                            </li>
                        	<li>
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EKP2006">
	                                <span class="pic">
	                                <img src="https://dimgcdn.ybtour.co.kr/TN/86/860dbe441d336172361e5bc4f15c76df.tn.410x280.jpg" alt="이미지설명">
	                                	</span>	                                
	                                <span class="best03"></span>
	                                <div class="info">
	                                    <span class="detail">
	                                    	[초록빛 잔디,꽃들의 속삭임]동유럽(체/오/헝)+발칸(...
												 </span>
	                                    <span class="price">2,490,000<p>원 ~</p></span>
	                                </div>
	                                </a>
	                            </li>
                        	</ul>
                    </div>
                </div><!--[[ MD추천상품 End ]]-->

                <div class="gridR"><!--[[ 상품예약문의 Start ]]-->
                    <h2 class="tit_con">
						<img src="/images/content/tit/tit_com_qa.png" alt="상품/예약 문의">					
					</h2>
                    <div class="cont01_2 mgt20">
                        <ul>
                        	<li class="cell01">
		                            <span class="txt01">유럽 여행 상담</span>
		                            <span class="txt01">02-2022-7285</span>
		                            <span class="txt02">대구지사 053-720-7744</span>
		                            <span class="txt02">부산지사 051-710-7744</span>
		                        </li>
		                        <li class="cell02">
		                            <span class="txt01">유럽전용 계좌번호</span>
		                            <span class="txt01 detail">796-01-0015-893</span>
		                            <span class="txt02">국민은행 (주)노랑풍선</span>
		                        </li>
				                <li class="cell03 pkg">
		                            <span class="txt03"><a href="/customer/faqList.do">자주하는 질문</a><span class="bul"></span></span>
		                            <span class="txt03"><a href="/customer/qnaList.do">묻고 답하기</a><span class="bul"></span></span>
		                        </li>
			                </ul>
                    </div>
                </div><!--[[ 상품예약문의 End ]]-->

            </div>
        </div><!--[[ MD추천상품 and 상품예약문의 End ]]-->

       <!-- <div class="noti">* 요금은 항공기본운임 ,유류할증료, 제세공과금이 모두 포함되어 있는 가격입니다.</div>-->
        
		
        
        <div id="product02" class="pdt50"><script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.cookie.js" type="text/javascript"></script> 
<script src="/js/ui.js"></script>

<script type="text/javaScript" language="javascript" defer="defer">

$(document).ready(function(){
	
	//국가선택
	$("#searchNa").change(function(){
		$.ajax({
			  type:'POST'
			, url : "/product/selectCityList.do"
			, data:{
			      "did"    		: "60"
			    , "searchNa"   : $(this).val()
			}
			, dataType: 'JSON'
			, async: false
			, success: function(resultJson){
				
				$("#searchCity").selectOptionAllDelete();
				$("#searchCity").selectOptionAppendCity(resultJson, "", "도시선택");
				
			}
			, error: function(){
				//alert("Loading error");
			 }
		});
	});
	
	
	//선택상품비교하기
	$("#btnCompare").click(function(){
		
		var checkedVal = "";
		var cnt = 0;
			
		
		$("input:checkbox[name='chk']:checked").each(function(){
			cnt++;
			checkedVal += ((checkedVal == "" ? "" : ",") + $(this).val());
		});
		
		if(cnt != 2){
			
			alert("상품비교는 2개를 선택하셔야 가능합니다");
			return;
			
		}else{

			var roleUrl = $(this).attr('role-url');
			$(this).attr('role-url', roleUrl + "?compareGoodCd=" + checkedVal + "&menu=pkg&did=60");
			showLayer(this);
			$(this).attr('role-url', roleUrl);	//최초 URL로 복원
		}
		
	});
	
	$("button[name='btnSchedule']").click(function(){
		var dspCls = $(this).val();
		if(dspCls == 'B'){
			$(location).attr('href',$(this).attr('role-url'));
		}else{
			showLayer($(this));
		}
	})
	
	
	/****************************************
	 * 더보기 버튼 클릭
	 */
	$("button[name='btnMore']").click(function() {
		callMasterSelect("pkg" ,"90" ,"336" ,"60", $("#pdtSort").val(), $("#searchNa").val(), $("#searchCity").val(), 0, '');
		//callMasterAppend("pkg" ,"90" ,"336" ,"60", $("select[name=pdtSort] option:selected").val(), 0, '');
	});
	
	//리스트 정렬, 국가 선택
	$("#searchNa").change(function(){
		callMaster("pkg" ,"90" ,"336" ,"60", $("#pdtSort").val(), $("#searchNa").val(), '', 0, '');
	});
	
	
	//리스트 정렬, 도시선택
	$("#searchCity").change(function(){
		callMaster("pkg" ,"90" ,"336" ,"60", $("#pdtSort").val(), $("#searchNa").val(), $("#searchCity").val(), 0, '');
	});
	
	//리스트 정렬
	$(".pdt_align li").on('click', function(){
		$("#pdtSort").val($(this).attr('data-val'));
		callMasterSort("pkg" ,"90" ,"336" ,"60", $("#pdtSort").val(), $("#searchNa").val(), $("#searchCity").val(), 0, '');
	});
// 	$("#pdtSort").change(function(){
// 		callMasterSort("pkg" ,"90" ,"336" ,"60", $("#pdtSort").val(), $("#searchNa").val(), $("#searchCity").val(), 0, '');
// 	});
	
});
</script>
			<input type="hidden" id="pdtSort" value="" selected="selected">
			<div class="list_type2 mgb20">
	        <h2 class="tit_con_condition">
				<img src="/images/content/tit/tit_com_tour.png" alt="여행상품"><span class="list_number">(6개)</span>
					<div class="condition_box">		
						 <select name="searchNa" id="searchNa" class="basic_sel" title="국가선택">
	                        <option value="">국가선택</option>
	                        <option value="CZ">체코</option>
	                        <option value="AE">아랍에미리트</option>
	                        <option value="DE">독일</option>
	                        <option value="SI">슬로베니아</option>
	                        <option value="HR">크로아티아</option>
	                        <option value="BA">보스니아-헤르체고비나</option>
	                        <option value="RU">러시아</option>
	                        <option value="KZ">카자흐스탄</option>
	                        <option value="PL">폴란드</option>
	                        <option value="CN">중국</option>
	                        <option value="AT">오스트리아</option>
	                        <option value="HU">헝가리</option>
	                        <option value="SK">슬로바키아</option>
	                        <option value="TR">터키</option>
	                        <option value="KR">대한민국</option>
	                        </select>
						<select name="searchCity" id="searchCity" class="basic_sel" title="도시선택">
	                        <option value="">도시선택</option>
	                        </select>
	                    <button type="button" class="btn_compare" name="btnCompare" id="btnCompare" role-w="1160" role-h="870" role-url="/product/compareMaster.do" title="선택상품비교하기">선택상품비교하기</button>
					</div>
					<ul class="pdt_align">
						<li class="on" data-val="BEST"><a href="#none">인기순</a></li>
						<li data-val="ASC"><a href="#none">낮은가격순</a></li>
						<li data-val="DESC"><a href="#none">높은가격순</a></li>
					</ul>
			</h2>
		</div>
            
            <div class="list"><!--[[ listWrap Start ]]-->
                <ul class="listBar"><!--[[ listBar Start ]]-->
                	<!-- [[1열 정렬]] -->
                	<li class="odd">
	                        <ul>
	                            <li class="t01">
	                                <input type="checkbox" name="chk" value="EKP2006" title="체크">
	                            </li>
	                            <li class="t02">
	                                <span class="pic">
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EKP2006">
	                                	<img src="https://dimgcdn.ybtour.co.kr/TN/86/860dbe441d336172361e5bc4f15c76df.tn.410x280.jpg" alt="이미지설명">
		                                	</a>
	                                </span>
	                            </li>	                                                    
	                            <li class="t03">
	                                <div class="productTop">
	                                
	                                    <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EKP2006">
											<!-- 												<span class="mark"><span class="pie redReal">집중</span></span> -->
<span class="product">
		                                    	[초록빛 잔디,꽃들의 속삭임]동유럽(체/오/헝)+발칸(크/슬)5국9일-플리트비체국립공원</span>
	                                    </a>
	                                </div>
	                                <div class="productL">
	                                    <span class="tit">여행코스</span><span class="period">7박9일</span>
	                                    <span class="txt"></span>
	                                    <span class="line"></span>
	                                    <span class="subTxt">
	                                   	 독일 하늘의 최강자 루프트한자 항공을 이용하여 발칸과 동유럽이 적절하게 합쳐져있는 효율성 상위권의 일정</span>
	                                    <dl>
	                                        <dt>이용항공</dt>
	                                        
	                                        <dd class="air">
	                                        			<a href="#none" class="air_icon">
		                                        		<img src="/images/air/LH.png" alt="루프트한자항공">
								                   				<span class="air_tooltip_name">루프트한자항공</span>
								                   			</a>
	                                        		</dd>	                                        
		                                        	<dd class="divide"></dd>
	                                        <dt>상품번호</dt>
	                                        <dd class="pNum">EKP2006</dd>
	                                    </dl>
	                                </div>
	                                <div class="productR">
	                                	<span class="vline"></span>
	                                    <span class="price">2,490,000<p>원</p><p class="black">~</p></span>
	                                    <span class="period">7박9일</span>
	                                    <button type="button" name="btnSchedule" id="btnSchedule" role-w="1160" role-h="800" value="A" role-url="/product/unitListPop.do?menu=pkg&amp;did=60&amp;goodsCd=EKP2006" title="출발일보기">출발일보기</button>
	                                </div>
	                            </li>
	                        </ul>
	                    </li>
                    <li>
	                        <ul>
	                            <li class="t01">
	                                <input type="checkbox" name="chk" value="EEP2018" title="체크">
	                            </li>
	                            <li class="t02">
	                                <span class="pic">
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2018">
	                                	<img src="https://dimgcdn.ybtour.co.kr/TN/5f/5fed74d174520acd1a1d274f98a7610d.tn.410x280.jpg" alt="이미지설명">
		                                	</a>
	                                </span>
	                            </li>	                                                    
	                            <li class="t03">
	                                <div class="productTop">
	                                
	                                    <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2018">
											<!-- 												<span class="mark"><span class="pie redReal">집중</span></span> -->
<span class="product">
		                                    	[콩닥콩닥,동유럽 불빛 아래 콩닥]동유럽5국12일OZ[체,폴,헝,오,독]</span>
	                                    </a>
	                                </div>
	                                <div class="productL">
	                                    <span class="tit">여행코스</span><span class="period">10박12일</span>
	                                    <span class="txt">인천-프랑크푸르트-라이프치히(1)-베를린-드레스덴-우스티 나드 라벰(1)-프라하(1)-체스키크룸로프-브르노(1)-오시비엥침-크라카우(1)-비엘리츠카-타트라(1)-부다페스트(1)-비엔나(1)-짤츠캄머굿-짤츠부르크(1)-퓌센-로텐부르크-프랑크푸르트-인천</span>
	                                    <span class="line"></span>
	                                    <span class="subTxt">
	                                   	 편안한 직항으로 동유럽의 중심지를 모두 둘러볼 수 있는 다채로운 일정입니다.<br>
체코의 프라하와 체스키크롬로프, 폴란드의 역사를 느낄 수 있는 아우슈비츠 및 크라코프, 우아하며 다이나믹한 헝가리의 부다페스트, 오스트리아의 비엔나, 잘츠부르크, '중세의 보석'이라 불리는 독일의 로텐부르크, 베를린, 드레스덴 등 예술과 낭만이 느껴지는 필수코스들로 구성이 되어있</span>
	                                    <dl>
	                                        <dt>이용항공</dt>
	                                        
	                                        <dd class="air">
	                                        			<a href="#none" class="air_icon">
		                                        		<img src="/images/air/OZ.png" alt="아시아나항공">
								                   				<span class="air_tooltip_name">아시아나항공</span>
								                   			</a>
	                                        		</dd>	                                        
		                                        	<dd class="divide"></dd>
	                                        <dt>상품번호</dt>
	                                        <dd class="pNum">EEP2018</dd>
	                                    </dl>
	                                </div>
	                                <div class="productR">
	                                	<span class="vline"></span>
	                                    <span class="price">1,902,000<p>원</p><p class="black">~</p></span>
	                                    <span class="period">10박12일</span>
	                                    <button type="button" name="btnSchedule" id="btnSchedule" role-w="1160" role-h="800" value="A" role-url="/product/unitListPop.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2018" title="출발일보기">출발일보기</button>
	                                </div>
	                            </li>
	                        </ul>
	                    </li>
                    <li class="odd">
	                        <ul>
	                            <li class="t01">
	                                <input type="checkbox" name="chk" value="EEP2011" title="체크">
	                            </li>
	                            <li class="t02">
	                                <span class="pic">
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2011">
	                                	<img src="https://dimgcdn.ybtour.co.kr/TN/cd/cd24fa42cf6fe9c7eeb56ea15ef4e5f6.tn.410x280.jpg" alt="이미지설명">
		                                	</a>
	                                </span>
	                            </li>	                                                    
	                            <li class="t03">
	                                <div class="productTop">
	                                
	                                    <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2011">
											<!-- 												<span class="mark"><span class="pie redReal">집중</span></span> -->
<span class="product">
		                                    	[그냥 막 찍어도 엽서같구나!]동유럽[독/오/체/헝/폴]5국10일TK</span>
	                                    </a>
	                                </div>
	                                <div class="productL">
	                                    <span class="tit">여행코스</span><span class="period">8박10일</span>
	                                    <span class="txt">인천-이스탄불-뮌헨-로텐부르크-타네스부르그(1)-잘츠부르크(1)-체스키크룸로프(1)-프라하(1)-크라코프(1)-타트라(1)-부다페스트(1)-비엔나(1)-이스탄불-인천</span>
	                                    <span class="line"></span>
	                                    <span class="subTxt">
	                                   	 꼼꼼히 비교해보아도 이것만한 일정이 없구나.<br>
막 찍어도 엽서가되는 자연친화적인 일정. 낭만이 가득한 동유럽에서 엽서한장 보내면 어떨까.<br>
독/오/체/헝/폴 동유럽 5개국을 돌아보는 알찬 일정</span>
	                                    <dl>
	                                        <dt>이용항공</dt>
	                                        
	                                        <dd class="air">
	                                        			<a href="#none" class="air_icon">
		                                        		<img src="/images/air/TK.png" alt="터키항공">
								                   				<span class="air_tooltip_name">터키항공</span>
								                   			</a>
	                                        		</dd>	                                        
		                                        	<dd class="divide"></dd>
	                                        <dt>상품번호</dt>
	                                        <dd class="pNum">EEP2011</dd>
	                                    </dl>
	                                </div>
	                                <div class="productR">
	                                	<span class="vline"></span>
	                                    <span class="price">1,390,000<p>원</p><p class="black">~</p></span>
	                                    <span class="period">8박10일</span>
	                                    <button type="button" name="btnSchedule" id="btnSchedule" role-w="1160" role-h="800" value="A" role-url="/product/unitListPop.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2011" title="출발일보기">출발일보기</button>
	                                </div>
	                            </li>
	                        </ul>
	                    </li>
                    <li>
	                        <ul>
	                            <li class="t01">
	                                <input type="checkbox" name="chk" value="EEP2003" title="체크">
	                            </li>
	                            <li class="t02">
	                                <span class="pic">
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2003">
	                                	<img src="https://dimgcdn.ybtour.co.kr/TN/7d/7d369cbc548f051f4943332e7a23c92e.tn.410x280.jpg" alt="이미지설명">
		                                	</a>
	                                </span>
	                            </li>	                                                    
	                            <li class="t03">
	                                <div class="productTop">
	                                
	                                    <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2003">
											<!-- 												<span class="mark"><span class="pie redReal">집중</span></span> -->
<span class="product">
		                                    	[국적기 직항] 백조의성+마리엔다리/베를린+드레스덴관광+동유럽6국12일 *2대야경관광</span>
	                                    </a>
	                                </div>
	                                <div class="productL">
	                                    <span class="tit">여행코스</span><span class="period">10박12일</span>
	                                    <span class="txt">오스트리아/체코/헝가리/슬로바키아/폴란드/독일</span>
	                                    <span class="line"></span>
	                                    <span class="subTxt">
	                                   	 국적기 직항으로 편안하게<br>
동유럽 핵심국가 오스트리아, 체코, 헝가리, 슬로바키아, 폴란드, 독일을 다녀오실수 있는 상품입니다.</span>
	                                    <dl>
	                                        <dt>이용항공</dt>
	                                        
	                                        <dd class="air">
	                                        			<a href="#none" class="air_icon">
		                                        		<img src="/images/air/OZ.png" alt="아시아나항공">
								                   				<span class="air_tooltip_name">아시아나항공</span>
								                   			</a>
	                                        		</dd>	                                        
		                                        	<dd class="divide"></dd>
	                                        <dt>상품번호</dt>
	                                        <dd class="pNum">EEP2003</dd>
	                                    </dl>
	                                </div>
	                                <div class="productR">
	                                	<span class="vline"></span>
	                                    <span class="price">2,002,000<p>원</p><p class="black">~</p></span>
	                                    <span class="period">10박12일</span>
	                                    <button type="button" name="btnSchedule" id="btnSchedule" role-w="1160" role-h="800" value="A" role-url="/product/unitListPop.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2003" title="출발일보기">출발일보기</button>
	                                </div>
	                            </li>
	                        </ul>
	                    </li>
                    <li class="odd">
	                        <ul>
	                            <li class="t01">
	                                <input type="checkbox" name="chk" value="EEP2021" title="체크">
	                            </li>
	                            <li class="t02">
	                                <span class="pic">
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2021">
	                                	<img src="https://dimgcdn.ybtour.co.kr/TN/a9/a906804869340971962aa41d0e09619d.tn.410x280.jpg" alt="이미지설명">
		                                	</a>
	                                </span>
	                            </li>	                                                    
	                            <li class="t03">
	                                <div class="productTop">
	                                
	                                    <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2021">
											<!-- 												<span class="mark"><span class="pie redReal">집중</span></span> -->
<span class="product">
		                                    	[동유럽 중심에 내가 있다] 판도로프아울렛방문+백조의성/동유럽일주 6국10일</span>
	                                    </a>
	                                </div>
	                                <div class="productL">
	                                    <span class="tit">여행코스</span><span class="period">8박10일</span>
	                                    <span class="txt">인천-프랑크푸르트-아우구스부르크(1)-퓌센-잘츠부르크(1)-체스키크롬로프(1)-비엔나(1)-부다페스트(1)-타트라-크라카우(1)-프라하(1)-프랑크푸르트(1)-하이델-프랑크푸르트-인천</span>
	                                    <span class="line"></span>
	                                    <span class="subTxt">
	                                   	 국적기 직항으로 편안하게 동유럽 독일, 오스트리아, 체코, 헝가리, 슬로바키아, 폴란드를 다녀오실수 있는 상품입니다.</span>
	                                    <dl>
	                                        <dt>이용항공</dt>
	                                        
	                                        <dd class="air">
	                                        			<a href="#none" class="air_icon">
		                                        		<img src="/images/air/OZ.png" alt="아시아나항공">
								                   				<span class="air_tooltip_name">아시아나항공</span>
								                   			</a>
	                                        		</dd>	                                        
		                                        	<dd class="divide"></dd>
	                                        <dt>상품번호</dt>
	                                        <dd class="pNum">EEP2021</dd>
	                                    </dl>
	                                </div>
	                                <div class="productR">
	                                	<span class="vline"></span>
	                                    <span class="price">1,990,000<p>원</p><p class="black">~</p></span>
	                                    <span class="period">8박10일</span>
	                                    <button type="button" name="btnSchedule" id="btnSchedule" role-w="1160" role-h="800" value="A" role-url="/product/unitListPop.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2021" title="출발일보기">출발일보기</button>
	                                </div>
	                            </li>
	                        </ul>
	                    </li>
                    <li class="mgb20">
	                        <ul>
	                            <li class="t01">
	                                <input type="checkbox" name="chk" value="EEP2012" title="체크">
	                            </li>
	                            <li class="t02">
	                                <span class="pic">
	                                <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2012">
	                                	<img src="https://dimgcdn.ybtour.co.kr/TN/a4/a4744a5361ce6e47d8cdbace0344ff2e.tn.410x280.jpg" alt="이미지설명">
		                                	</a>
	                                </span>
	                            </li>	                                                    
	                            <li class="t03">
	                                <div class="productTop">
	                                
	                                    <a href="/product/unitList.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2012">
											<!-- 												<span class="mark"><span class="pie redReal">집중</span></span> -->
<span class="product">
		                                    	[예술문화의 도시] 베를린+드레스덴 동유럽5국(독/오/체/헝/폴) 11일 (체스키크룸로프)</span>
	                                    </a>
	                                </div>
	                                <div class="productL">
	                                    <span class="tit">여행코스</span><span class="period">9박11일</span>
	                                    <span class="txt">인천-프라하(1)-체스키크룸로프(1)-짤츠캄머굿-잘츠부르크(1)-비엔나(1)-부다페스트(1)-타트라-비엘리츠카(1)-크라카우-오시비엥침(1)-베를린-우스티 나드 라벰(1)-드레스덴-카를로비바리-플젠(1)-로텐부르크-프랑크푸르트-인천</span>
	                                    <span class="line"></span>
	                                    <span class="subTxt">
	                                   	 직항으로 편안하게 동유럽 핵심국가 독일, 오스트리아, 체코, 헝가리, 폴란드를 다녀오실수 있는 상품입니다.</span>
	                                    <dl>
	                                        <dt>이용항공</dt>
	                                        
	                                        <dd class="air">
	                                        			<a href="#none" class="air_icon">
		                                        		<img src="/images/air/KE.png" alt="대한항공">
								                   				<span class="air_tooltip_name">대한항공</span>
								                   			</a>
	                                        		</dd>	                                        
		                                        	<dd class="divide"></dd>
	                                        <dt>상품번호</dt>
	                                        <dd class="pNum">EEP2012</dd>
	                                    </dl>
	                                </div>
	                                <div class="productR">
	                                	<span class="vline"></span>
	                                    <span class="price">2,190,000<p>원</p><p class="black">~</p></span>
	                                    <span class="period">9박11일</span>
	                                    <button type="button" name="btnSchedule" id="btnSchedule" role-w="1160" role-h="800" value="A" role-url="/product/unitListPop.do?menu=pkg&amp;did=60&amp;goodsCd=EEP2012" title="출발일보기">출발일보기</button>
	                                </div>
	                            </li>
	                        </ul>
	                    </li>
                    <!-- [[1열 정렬 End]] -->
                	
                </ul><!--[[ listBar End ]]-->
            <!--[[ listWrap End ]]--></div>
            <!-- 	            <div class="morelist"> -->
<!-- 	            <button type="button" name="btnMore" title="더보기">더보기 +</button> -->
<!-- 	            </div> -->
</div><!--[[ 여행상품목록 End ]]-->
		
        <div id="product09"><!--[[ 안내 Start ]]-->
            <div class="cont09">
                <span class="txt">본 화면의 모든 상품가격은 항공운임(항공권) 등이 포함된 총 금액이며, 유류할증료는 유가와 환율에 따라 변동될 수 있습니다.</span>
            </div>
        </div><!--[[ 안내 End ]]-->

    </section><!--[[ content End ]]-->
    <script src="/js/common.js"></script>


</div>