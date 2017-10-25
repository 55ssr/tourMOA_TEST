<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/product/jquery.bxslider.js"></script>
<script src="/js/ui.js" type="text/javascript"></script>

   <script type="text/javascript">
        $(document).ready(function () {
            $('.w140').each(function () {
                $(this).click(function () {
                    $(this).addClass('on');            
                    $(this).siblings().removeClass('on');  
                });
            });
        });
    </script>

<div id="content">
	<div id="theme_block">
		<div id="haedline">
			<div id="title">${vo.title}</div>
			<div id="pNum"><span>[상품번호</span><span class="num">${vo.code}</span>]
				<span class="dev_comm">상품코드를 일관성있게 만들어야함</span>
			</div>
		</div>
		<div id="infoBox">
            <ul class="infoTxt">
                <li>
                    <span class="tit">상품가격</span>
                    <span class="txt price">
                    	<fmt:formatNumber value="${vo.price}" groupingUsed="true" /> 원 ~ 
                    	3,590,000 원
                    	<span class="dev_comm">가격 범위는 같은 code 상품중에서 최저가와 최대가를 계산하여 출력해야 함</span>
                    </span>
                    <div class="sns">                    	
						<span><a href="http://www.facebook.com" onclick="fnGoSns(this.href,'facebook',''); return false; "><img src="/images/product/detail/sns1.png" alt="페이스북 링크"></a></span>
						<span><a href="http://twitter.com/" onclick="fnGoSns(this.href,'twitter',''); return false; "><img src="/images/product/detail/sns2.png" alt="트위터 링크"></a></span>
                        <span><a href="#email" onclick="fnSendEmail(); return false;"><img src="/images/product/detail/mms.png" alt="상품 추천 메일보내기"></a></span>
                    	<span><a href="#clipboard" onclick="fnCopyToClipboard(); return false;"><img src="/images/product/detail/co.png" alt="링크 복사하기"></a></span>
                    </div>
                </li>
                <li><span class="tit">여행기간</span><span class="txt">${vo.period}</span></li>
                <li><span class="tit">간략일정</span><span class="txt">${vo.schd}</span></li>
                <li><span class="tit">상품설명</span><span class="txt">${vo.detail2}</span></li>
				</ul>
				
			<div class="infoPhoto">
				<span class="dev_comm">이미지파일명 데이터 베이스 화</span>
				<ul class="slide_v1">
					<%-- <li><img src="/images/product/detail/${vo.code}/${vo.images01}" alt=""></li>
					<li><img src="/images/product/detail/${vo.code}/${vo.images02}" alt=""></li>
					<li><img src="/images/product/detail/${vo.code}/${vo.images03}" alt=""></li> --%>
					<li><img src="/images/product/detail/${vo.code}/images.jpg" alt=""></li>
				</ul>
			</div>
		</div>
			<div class="departure_month slider">
			<div class="tab_month slick-initialized slick-slider">
			<button type="button" data-role="none" class="slick-prev slick-arrow slick-disabled" aria-label="Previous" role="button" aria-disabled="true" style="display: block;">Previous</button>
				<!--class="month_on"  -->
					<div aria-live="polite" class="slick-list">
					<div class="slick-track" role="listbox" style="opacity: 1; width: 1144px; transform: translate3d(0px, 0px, 0px);">
					<div onclick="monthClick('2017','10')" id="div201710" class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 143px;">
						2017.10</div><div onclick="monthClick('2017','11')" id="div201711" class="slick-slide slick-active month_on" data-slick-index="1" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide01" style="width: 143px;">
						2017.11</div><div onclick="monthClick('2017','12')" id="div201712" class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide02" style="width: 143px;">
						2017.12</div><div onclick="monthClick('2018','01')" id="div201801" class="slick-slide slick-active " data-slick-index="3" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide03" style="width: 143px;">
						2018.01</div><div onclick="monthClick('2018','02')" id="div201802" class="slick-slide slick-active" data-slick-index="4" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide04" style="width: 143px;">
						2018.02</div><div onclick="monthClick('2018','03')" id="div201803" class="slick-slide slick-active" data-slick-index="5" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide05" style="width: 143px;">
						2018.03</div><div onclick="monthClick('2018','04')" id="div201804" class="slick-slide slick-active" data-slick-index="6" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide06" style="width: 143px;">
						2018.04</div><div onclick="monthClick('2018','05')" id="div201805" class="slick-slide" data-slick-index="7" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide07" style="width: 143px;">
						2018.05</div>
						</div>
						</div>
				<!--class="month_on"  -->
					
				<!--class="month_on"  -->
					
				<!--class="month_on"  -->
					
				<!--class="month_on"  -->
					
				<!--class="month_on"  -->
					
				<!--class="month_on"  -->
					
				<!--class="month_on"  -->
					
				<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;" aria-disabled="false">Next</button></div>
			</div>
			
			<div class="month_list"><table class="tbl_month">
		<caption>
		출발일 목록
		</caption>
		<tbody><tr>
			<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						</tr>
		<tr>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('01');">1</a>
					</td>
			<td class="pdt_close" title="예약마감">
					<a href="javascript:none;" onclick="fnReturnDay('02');">2</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('03');">3</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('04');">4</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('05');">5</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('06');">6</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('07');">7</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('08');">8</a>
					</td>
			<td class="pdt_standby" title="예약대기">
					<a href="javascript:none;" onclick="fnReturnDay('09');">9</a>
					</td>
			<td class="pdt_close" title="예약마감">
					<a href="javascript:none;" onclick="fnReturnDay('10');">10</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('11');">11</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('12');">12</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('13');">13</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('14');">14</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('15');">15</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('16');">16</a>
					</td>
			<td class="pdt_standby" title="예약대기">
					<a href="javascript:none;" onclick="fnReturnDay('17');">17</a>
					</td>
			<td class="pdt_standby" title="예약대기">
					<a href="javascript:none;" onclick="fnReturnDay('18');">18</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('19');">19</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('20');">20</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('21');">21</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('22');">22</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('23');">23</a>
					</td>
			<td class="pdt_close" title="예약마감">
					<a href="javascript:none;" onclick="fnReturnDay('24');">24</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('25');">25</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('26');">26</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('27');">27</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('28');">28</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('29');">29</a>
					</td>
			<td class="pdt_possible" title="예약가능">
					<a href="javascript:none;" onclick="fnReturnDay('30');">30</a>
					</td>
			</tr>
	</tbody></table>
 
 
 <script type="text/javaScript" language="javascript">
$(document).ready(function(){
	settingButton();
	fnChangeUnitList("2017","11","","");
});

/* ********************************************************
 * 월(클릭 이벤트)
 ******************************************************** */
function monthClick(year, month){
	fnMonthEvent("CHP1028",
			"1",
			year,
			month,
			"",
			"" );	
}

/* ********************************************************
 * 예약가능상품 필터
 ******************************************************** */
function fnRsrvfilter(){

	//달력
	fnMonthEvent("CHP1028",
					"1",
					"2017",
					"11",
					"Y",
					"");
}

/* ********************************************************
 * 예약가능상품전체보기 필터
 ******************************************************** */
function fnRsrvAllfilter(){

	//달력
	fnMonthEvent("CHP1028",
					"1",
					"2017",
					"11",
					"",
					"");
}


/* ********************************************************
 * 월(클릭 이벤트)
 ******************************************************** */
/* function fnMonthEvent(goodsCd,compId,year, month, evRsrvYn,webDisplayCls){
	 var pageUrl = (location.href).split('/')[3];
	    
	    var ajaxUrl = "";
	    if(pageUrl == 'mypage'){
	    	ajaxUrl = "/mypage/unitCalEvList.do";
	    }else{
	    	ajaxUrl = "/product/unitCalEvList.do";
	    }
	   	 $.ajax({
	   	    	url:ajaxUrl
	   			,async:false
	   	       	,data:{
	   	    		"goodsCd" 			: goodsCd,
	   	    		"compId" 			: compId,
	   	       		"year" 				: year,
	   	       		"month" 				: month, 
	   	       		"evRsrvYn"			: evRsrvYn,
	   	       		"menu"				: "pkg",
	   	       		"loc"					: "453",
	   	      		"pid"					: "7409",
	   	      		"did"					: "7410",
	   	      		"compareBtnYn"		: "",
	   	       		"webDisplayCls"		: webDisplayCls,
	   	       	}       	
	   	    	,success:function(html){
	   	    		$(".month_list").html(html);
	   	    		$("#dayTime").attr("style", "display:none");
	   	    		settingButton();
	   	    	}
	   	    	,error: function(html) {
	   				alert("fnMonthEvent 에러 발생");
	   			}
	   	    });
	   	$("#dayTime").html(dayHtml);
} */

/* ********************************************************
 * 행사리스트
 ******************************************************** */	
/* function fnChangeUnitList(year, month, date ,evRsrvYn){
    var pageUrl = (location.href).split('/')[3];
    
    var ajaxUrl = "";
    if(pageUrl == 'mypage'){
    	ajaxUrl = "/mypage/unitMonList.do";
    }else{
    	ajaxUrl = "/product/unitMonList.do"
    }	
    $.ajax({
    	url		:	ajaxUrl
       	,async	:	false
    	,data:{
    		"menu"			: "pkg",
    		"goodsCd" 		: "CHP1028",
    		"compId" 		: "1",
      		"year" 			: year,
      		"month" 			: month, 
      		"startDate"		: date,
      		"evRsrvYn"		: evRsrvYn,
      		"loc"				: "453",
      		"pid"				: "7409",
      		"did"				: "7410",
      		"compareBtnYn"	: ""
    	}        	
    	,success:function(html){
    		$(".departure_list").html(html);
    	}
    	,error: function(html) {
			alert("fnChangeUnitList 에러 발생");
		}
    });
    
} */

/* ********************************************************
 * 결과연월일 반환
 ******************************************************** */
var dayHtml = "<button type=\"button\" class=\"btn_date_del\" id=\"dateDtlBtn\" onclick=\"fnDayDelete()\"><span>삭제</span></button>";
function fnReturnDay(day){
	$("#dayTime").html("11."+day+ dayHtml);
	fnChangeUnitList("2017","11",day,"");
	$("#dayTime").attr("style", "display:block");
}

function fnDayDelete(){
	$("#dayTime").html(dayHtml);
	fnChangeUnitList("2017","11","","");
	$("#dayTime").attr("style", "display:none");
}

function settingButton(){
	if("" != ""){
		$(".btn_condition").attr("onclick", "fnRsrvAllfilter()");
		$(".btn_condition").text("전체 상품보기");
	}else{
		if("pkg" == "fit" || "pkg" == "hym"){
			$(".btn_condition").attr("onclick", "fnRsrvfilter()");
			$(".btn_condition").text("예약접수가능 상품보기");
		}else{
			$(".btn_condition").attr("onclick", "fnRsrvfilter()");
			$(".btn_condition").text("예약가능 상품보기");
		}
	}
}
</script>
 
 </div>

			<div class="departure_block_btn">
			<dl class="departure_date">
				<dt>출발일</dt>
				<dd id="dayTime" style="display:none"><button type="button" class="btn_date_del" id="dateDtlBtn" onclick="fnDayDelete()"><span>삭제</span></button></dd>
			</dl>
			
			<ul class="pdt_condition">
				<li><img src="/images/product/detail/icon1.png" alt=" "><span class="possible">예약가능</span></li>
				<li><img src="/images/product/detail/icon2.png" alt=" "><span class="standby">예약대기</span></li>
				<li><img src="/images/product/detail/icon3.png" alt=" "><span class="pdtclose">예약마감</span></li>
				<li>
				<button type="button" class="btn_condition" onclick="fnRsrvfilter()">예약가능 상품보기</button>
				</li>
			</ul>			
		</div>
		<div class="departure_list">
		<table class="tablesorter tablesorter-default" role="grid" aria-labelledby="theCaption">
			<caption>
				행사 목록
			</caption>
			<colgroup>
			<col style="width:70px">
			<col style="width:150px">
			<col style="width:120px">
			<col style="width:400px">
			<col style="width:120px">
			<col style="width:120px">
			<col style="width:120px">
			</colgroup>
			<thead>
			<tr role="row" class="tablesorter-headerRow">
				<th class="sorter-false tablesorter-header tablesorter-headerUnSorted" data-column="0" tabindex="0" scope="col" role="columnheader" aria-disabled="true" unselectable="on" aria-sort="none" style="user-select: none;"><div class="tablesorter-header-inner"><button type="button" class="btn_compare" "="" id="btnCompare" role-url="/product/compareUnit.do">비교</button></div></th><th data-column="1" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="출/도착 시간: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">출/도착 시간</div></th>
				<th data-column="2" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="항공: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">항공</div></th>
				<th data-column="3" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="상품명: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">상품명</div></th>
				<th data-column="4" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="여행기간: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">여행기간</div></th>
				<th data-column="5" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="상품가격: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">상품가격</div></th>
				<th data-column="6" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="예약상태: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">예약상태</div></th>
			</tr>
			</thead>
			<tbody aria-live="polite" aria-relevant="all">
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5043-180504KE00" title="체크"></td>
				<td><span class="depart_time">05/04 (금) 13:00</span>
				<span class="arrive_time">05/13 (일) 17:00</span>
				</td>
				<td>
					<img src="/images/product/detail/KE.png" alt="대한항공"><br>대한항공</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					<!-- <span class="ico_limited ">리미티드세일</span> -->
					</span>
				<a href="detailPackage.do">[프리미엄][대한항공직항][국내선 항공포함]_스페인/포르투갈 10일[KE]</a>
				</td>
				<td class="pdt_date">8박10일</td>
				<td class="pdt_price">2,790,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 2,790,000</li>
							<li>유아: 500,000</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_standby">
                                 	예약대기</span>										
                              <span class="condition_hurryup">마감임박</span>
                              </td>
			</tr>
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5043-180511KE00" title="체크"></td>
				<td><span class="depart_time">05/11 (금) 13:00</span>
				<span class="arrive_time">05/20 (일) 17:00</span>
				</td>
				<td>
					<img src="/images/product/detail/KE.png" alt="대한항공"><br>대한항공</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					<!-- <span class="ico_limited ">리미티드세일</span> -->
					</span>
				<a href="detailPackage.do">[프리미엄][대한항공직항][국내선 항공포함]_스페인/포르투갈 10일[KE]</a>
				</td>
				<td class="pdt_date">8박10일</td>
				<td class="pdt_price">2,790,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 2,790,000</li>
							<li>유아: 500,000</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_booking">
                                 	예약가능</span>										
                              <span class="condition_other">별도문의</span>
                              </td>
			</tr>
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5043-180525KE00" title="체크"></td>
				<td><span class="depart_time">05/25 (금) 13:00</span>
				<span class="arrive_time">06/03 (일) 17:00</span>
				</td>
				<td>
					<img src="/images/product/detail/tway.png" alt="티웨이"><br>티웨이항공</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					</span>
				<a href="detailPackage.do">[프리미엄][국내선 항공포함]_스페인/포르투갈 10일[KE]</a>
				</td>
				<td class="pdt_date">7박9일</td>
				<td class="pdt_price">2,490,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 2,490,000</li>
							<li>유아: 400,000</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_booking">예약가능</span>										
                    <span class="condition_fix">출발확정</span>
                   </td>
        		</tr>
                <tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5023-171010AF00" title="체크"></td>
				<td><span class="depart_time">10/10 (화) 09:30</span>
				<span class="arrive_time">10/19 (목) 07:20</span>
				</td>
				<td>
					<img src="/images/product/detail/af.png" alt="에어프랑스"><br>에어프랑스</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_darkgreen">특가</span>
					</span>
				<a href="#">[10月/놓치면마감] 스페인+포르투칼_2대맛기행 완벽정복 10일 AF</a>
				</td>
				<td class="pdt_date">8박10일</td>
				<td class="pdt_price">1,590,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 1,590,000</li>
							<li>유아: 0</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_booking">
                                 	예약가능</span>										
                              <span class="condition_fix">출발확정</span>
                              </td>
			</tr>
				</tbody>				

			</table>

		</div>
			<div class="departure_other">
				<a href="#">해당 지역 상품 리스트로 이동</a>
			</div>
			<div class="bt_info">
					본 화면의 모든 상품가격은 항공운임(항공권) 등이 포함된 총 금액이며, 유류할증료는 유가와 환율에 따라 변동될 수 있습니다.
			</div>
         </div>
  </div>

  
         
	
	
