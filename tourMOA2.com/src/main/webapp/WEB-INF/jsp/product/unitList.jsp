<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

<link rel="stylesheet" href="/css/main-unit.css" />
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
			</div>
		</div>
		<div id="infoBox">
            <ul class="infoTxt">
                <li>
                    <span class="tit">상품가격</span>
                    <span class="txt price">
                    	<fmt:formatNumber value="${vo.price}" groupingUsed="true" /> 원 ~ 
                    	3,590,000 원
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
                <li><span class="tit">상품설명</span><span class="txt">
                ${vo.detail1}
                </span>
                </li>
				</ul>
				
				
			<div class="infoPhoto">
				<ul class="slide_v1">
					<li><img src="/images/product/detail/de-s1.PNG" alt=""></li>
					<li><img src="/images/product/detail/de-s2.PNG" alt=""></li>
					<li><img src="/images/product/detail/de-s3.PNG" alt=""></li>
				</ul>
			</div>
			</div>
			<div class="departure_month slider">
			<div class="tab_month slick-initialized slick-slider">
			<button type="button" data-role="none" class="slick-prev slick-arrow slick-disabled" aria-label="Previous" role="button" aria-disabled="true" style="display: block;">Previous</button>
				<!--class="month_on"  -->
					<div aria-live="polite" class="slick-list">
					<div class="slick-track" role="listbox" style="opacity: 1; width: 1144px; transform: translate3d(0px, 0px, 0px);">
							<c:set var="year" value="${year}"/>
                            <c:set var="monthDigits" value="${month}"/>
	                            <c:forEach begin="1" end="8" var="plusYear" step="1">
	                            <!-- fmt: 두자리 수 맞춰주기 -->
                           		<fmt:formatNumber var="monthDigits2" value="${monthDigits}" minIntegerDigits="2" type="number"/>
	                            
									<c:choose>
							
										<c:when test="${monthDigits2 == month}">
											<div onclick="monthClick('${year}','${monthDigits2}')" id="div201710" class="slick-slide slick-current slick-active month_on" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 143px;">
												${year}.${monthDigits2}
											</div>
										</c:when>
										
										<c:otherwise>
											<div onclick="monthClick('${year}','${monthDigits2}')" id="div201710" class="slick-slide slick-current slick-active " data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 143px;">
												${year}.${monthDigits2}
											</div>
										</c:otherwise>
										
									</c:choose>
	                            <c:set var="monthDigits" value="${monthDigits+1}"/>
	                            <c:if test="${monthDigits > '12'}">
	                            <c:set var="monthDigits" value="${monthDigits-12}"/>
	                            <c:set var="year" value="${year+1}"/>
	                            </c:if>
	                   			</c:forEach>
						
					
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
			
			<div class="month_list">
			<table class="tbl_month">
			<caption>
			출발일 목록
			</caption>
		<%-- 	<!-- 월별 요일 -->			
			<c:set var="day_of_week" value="${day_of_week}"/>
			<!-- 월별 1일 -->
			<c:set var="minimumday" value="${minimumday}"/>
			<!-- 월별 마지막일 -->
			<c:set var="maximumday" value="${maximumday}"/>
			<!-- 월별 1일 -->
			<c:set var="minimumday2" value="${minimumday}"/>
			 --%>
			<c:set var="weekList" value="${weekList}"/>
			
			<tbody>
						<tr>
						<c:forEach begin="${minimumday-1}" end="${maximumday-1}" var="seMonth" step="1">
						<%-- <th>${weekList[seMonth]}</th> --%>
<%-- 						<c:if test="${seMonth%7==6}">
						<th class="sat">${weekList[seMonth]}</th>
						</c:if>
						<c:if test="${seMonth%7==0}">
						<th>${weekList[seMonth]}</th>
						<th class="sun">${weekList[seMonth]}</th>
						</c:if> --%>
						<c:choose>
						
							<c:when test="${seMonth%7==6}">
								<th class="sat">${weekList[seMonth]}</th>
							</c:when>
							<c:when test="${seMonth%7==0}">
								<th class="sun">${weekList[seMonth]}</th>
							</c:when>
							
							<c:otherwise>
								<th>${weekList[seMonth]}</th>
							</c:otherwise>
						</c:choose>
						
						</c:forEach>
						</tr>
						
						
						<tr>
						<c:forEach begin="${minimumday}" end="${maximumday}" var="numMonth" step="1">
						<%-- <c:if test="${minimumday == '예약가능'}">
						<th class="sat">${minimumday}</th>
						<td class="pdt_possible" title="예약가능">
						<a href="javascript:none;" onclick="fnReturnDay('${minimumday}');">${minimumday}</a>
						</td>
						</c:if>
						<c:if test="${minimumday == '예약마감'}">
						<td class="pdt_close" title="예약마감">
						onclick="fnReturnDay('${minimumday}');">${minimumday}</a>
						</td>
						</c:if> --%>
						
						<c:choose>
						
							<c:when test="${numMonth<date}">
								<td>
								<span>${numMonth}</span>
								</td>
							</c:when>
							<%-- <c:when test="${numMonth<date}">
								
							</c:when> --%>
							
							<c:otherwise>
								<td class="pdt_possible" title="예약가능">
								<a href="javascript:none;" onclick="fnReturnDay('${numMonth}');">${numMonth}</a>
								</td>
							</c:otherwise>
						</c:choose>
						
						
						<c:set var="minimumday2" value="${minimumday2+1}"/>
						</c:forEach>
			
					<!-- <td class="pdt_standby" title="예약대기">
					<a href="javascript:none;" onclick="fnReturnDay('18');">18</a>
					</td> -->
			
			</tr>
	</tbody>
	</table>
 
 
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
			<c:forEach items="${unitList}" var="unitList">
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="${unitList.code}" title="체크"></td>
				<td><span class="depart_time">${unitList.sdate}</span>
				<span class="arrive_time">${unitList.edate}</span>
				</td>
				<td>
					<img src="/images/air/${unitList.airline}.png" alt="${unitList.airline}"><br>${unitList.airline}</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					<!-- <span class="ico_limited ">리미티드세일</span> -->
					</span>
				<a href="detailPackage.do?unq=26">${unitList.title}</a>
				</td>
				<td class="pdt_date">${unitList.period}</td>

				<td class="pdt_price">${unitList.price}<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: ${unitList.pricech}</li>
							<li>유아: ${unitList.pricein}</li>
						</ul>
					</a>
				</td>
				<td>
				<c:if test="${unitList.use=='사용'}">
				<span class="condition_standby">예약대기</span>										
                <span class="condition_hurryup">마감임박</span>
				</c:if>
												
				<c:if test="${unitList.use=='중지'}">
				<span class="condition_booking">예약접수</span>	
				</c:if>	
                </td>
				</tr>
                			</c:forEach>
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

  
         
	
	
