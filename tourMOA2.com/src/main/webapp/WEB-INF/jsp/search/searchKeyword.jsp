<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<%
String searchKeyword = request.getParameter("searchKeyword");
String searchCondition = request.getParameter("searchCondition");
%>
<script src="/js/jquery.number.min.js"></script>
<link rel="stylesheet" href="/css/search-total.css" />
<link rel="stylesheet" href="/css/goods-search.css" />
<c:set var="existKeyword" value="<%=searchKeyword %>"/>
<script>

$(document).ready(function(){
	
	 $("#departDate").datepicker({
	       	showButtonpanel : true,
	           beforeShow:function( input, inst ) {
	               var dp = $(inst.dpDiv);
	               var offset = $(input).outerWidth(false) - dp.outerWidth(false) + 1;
	               dp.css('margin-left', offset);
	           }, showMonthAfterYear: true ,
	           dateFormat : 'yymmdd',
	           minDate: 1,
	           currentText : '월전체'
	           
	       });
});
$(document).ready(function(){
	   

	var viewOpen = ${viewOpen};
	if(viewOpen == true){
		$("#rankWrap").css("display","none");
		$("#if_SearchWrap").css("display","block");
	}else{
		$("#rankWrap").css("display","block");
		$("#if_SearchWrap").css("display","none");
	}
	 //선택상품비교하기
	$("#btnCompare").click(function(event){
		
		event.preventDefault();
		
		var checkedVal = "";
		var cnt = 0;			
		
		$("input:checkbox[name='chk']:checked").each(function(){
			cnt++;
			checkedVal += ((checkedVal == "" ? "" : ",") + $(this).val());
		});		
		
		if(cnt != 2){
			alert("상품비교는 2개를 선택하셔야 가능합니다");
			return true;
		}else{
			var roleUrl = $(this).attr('role-url');
			roleUrl = "/product/compareMaster.do";
			$(this).attr('role-url', roleUrl + "?compareGoodCd=" + checkedVal + "&menu=&did=");
			showLayer(this);
			$(this).attr('role-url', roleUrl);	//최초 URL로 복원
		}		
	});

});
</script>
	<section id="content"><!--[[ content Start ]]-->
	
        <div id="searchWrap"><!--[[ 통합검색 searchWrap Start ]]-->
            <div class="title" title="검색하기"></div>
            <div class="tab">
                <ul>
                    <a href="/search/searchKeyword.do" ><li class="t01 on">
                        <p>키워드검색</p>
                    </li></a>
                    <a href="/search/searchDate.do" ><li class="t02 ">
                        <p>출발일검색</p>
                    </li></a>
                    <a href="/search/searchPrice.do" ><li class="t03 ">
                        <p>가격별검색</p>
                    </li></a>
                </ul>
            </div>
			<form name="searchforms" id="totalSearch" action="/search/searchKeyword.do" method="POST" >
			<input type="hidden" name="sort" value="">
			<input type="hidden" name="collection" value="">
			<input type="hidden" name="realQuery" value="" />
            <div class="tabview tab01 block"><!--[[ 키워드검색 tab01 Start ]]-->
                <span class="noti" >상품번호를 알고 계시다면, 상품번호로 간편하게 검색하세요!</span>
                <div id="keywordSrh">
                
                    <input type="text" id="searchKeyword" name="searchKeyword" title="키워드입력" value="" style="ime-mode:active;"    />
                    <input type="hidden" name="product" value="전체상품">                    
                    <span class="divide"></span>
                    <button type="submit" class="btnTotalSearch" title="검색"></button>
                    <!-- <a href="/search/searchKeyword.do" onclick="document.forms['searchform'].submit(); return false;"><img src="/images/top_search.png" alt="검색"></a> -->
                </div>
                <div id="ark2" ></div>
                <div class="relKeywordBox">
                추천검색어 |
                <span class="Keyword">
                <a href="/search/searchKeyword.do?query=보라카이"><span>보라카이</span></a>
                <a href="/search/searchKeyword.do?query=제주도"><span>제주도</span></a>
                <a href="/search/searchKeyword.do?query=대만"><span>대만</span></a>
                <a href="/search/searchKeyword.do?query=사이판"><span>사이판</span></a>
                <a href="/search/searchKeyword.do?query=코타키나발루"><span>코타키나발루</span></a>
                <a href="/search/searchKeyword.do?query=오키나와"><span>오키나와</span></a>
                </span>
               </div>
            </div><!--[[ 키워드검색 tab01 End ]]-->
			</form>

        </div><!--[[ 통합검색 searchWrap End ]]-->
        
        <div class="notiWrapCon">
			
	        <div id="rankWrap"><!--[[ 검색 전 인기검색어 rankWrap Start ]]-->
	            <span class="tab">인기검색어</span><span class="tab" style="border-left: 1px solid #d6d6d6;width:547px">추천검색어</span>
	            <ul class="rankList tab01" style="border-left:">
	            <a href="/search/searchKeyword.do?query=오사카">
	            <li>
	            <span class="no grade">1</span>
	            <span class="name">오사카</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=장가계">
	            <li>
	            <span class="no grade">2</span>
	            <span class="name">장가계</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=북해도">
	            <li>
	            <span class="no grade">3</span>
	            <span class="name">북해도</span>
	            <span class="updown"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=다낭">
	            <li>
	            <span class="no">4</span>
	            <span class="name">다낭</span>
	            <span class="updown"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=서유럽">
	            <li>
	            <span class="no">5</span>
	            <span class="name">서유럽</span>
	            <span class="updown up"></span>
	            <span class="num">2</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=터키">
	            <li>
	            <span class="no">6</span>
	            <span class="name">터키</span>
	            <span class="updown"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=라오스">
	            <li>
	            <span class="no">7</span>
	            <span class="name">라오스</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=미서부">
	            <li>
	            <span class="no">8</span>
	            <span class="name">미서부</span>
	            <span class="updown down"></span>
	            <span class="num">3</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=홍콩">
	            <li>
	            <span class="no">9</span>
	            <span class="name">홍콩</span>
	            <span class="updown down"></span>
	            <span class="num">1</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=스페인 포르투갈 모로코">
	            <li>
	            <span class="no">10</span>
	            <span class="name">스페인 포르투갈 모로코</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            </ul>
	            <ul class="rankList tab02">
	            <a href="/search/searchKeyword.do?query=보라카이">
	            <li>
	            <span class="no grade">1</span>
	            <span class="name">보라카이</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=제주도">
	            <li>
	            <span class="no grade">2</span>
	            <span class="name">제주도</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=대만">
	            <li>
	            <span class="no grade">3</span>
	            <span class="name">대만</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=사이판">
	            <li>
	            <span class="no">4</span>
	            <span class="name">사이판</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=코타키나발루">
	            <li>
	            <span class="no">5</span>
	            <span class="name">코타키나발루</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=오키나와">
	            <li>
	            <span class="no">6</span>
	            <span class="name">오키나와</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=괌">
	            <li>
	            <span class="no">7</span>
	            <span class="name">괌</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=몽골">
	            <li>
	            <span class="no">8</span>
	            <span class="name">몽골</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=러시아">
	            <li>
	            <span class="no">9</span>
	            <span class="name">러시아</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=동유럽">
	            <li>
	            <span class="no">10</span>
	            <span class="name">동유럽</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            </ul>
	        </div>
<!--[[ 검색 전 인기검색어 rankWrap End ]]-->
		 
		
			
			<div id="if_SearchWrap">
					
			
			<div id="notiWrap"><!--[[ 검색결과 알림 notiWrap Start ]]-->

            <span class="">
	            <p class="keywd">
	            <c:if test="${existCondition==''}">
	            '${existKeyword}'
	            </c:if>
	            <c:if test="${existKeyword==''}">
	            '${existCondition}'
	            </c:if>
	            <c:if test="${existKeyword!=''&& existCondition!=''}">
	            '${existKeyword}'
	            </c:if>
	            &nbsp;
	            &nbsp;에 대한 총 
	             ${goodsCnt }
	             	건의 여행상품 검색 결과가 있습니다.
	             </p>
             </span>
            </div>
            <!--[[ 검색결과 알림 notiWrap End ]]-->
            
        <div class="titleBox">     
        	<div class="title"><span class="bul"></span>결과 내 재검색</div>
        	<a class="bntOption" href="#">검색옵션<span class="spim"></span></a>
        </div>
        <div class="optionMenu" id="optionMenu">
	        <form id="reSearch" action="/search/searchKeyword.do" method="post" onsubmit="resultReSearchList(event); return false;">
	        		<input type="hidden" name="query" value="asfdasd">
	        		<!--[[ 결과내재검색 reWrap Start ]]-->
	        		<div id="reWrap">
	       			 <div class="frm">
	           		 <ul class="frm">
	               	 <li>
	                    <span class="tit">출발월</span>
	                    <select name="departMonth" id="departMonth" title="출발월선택">
	                        <option value="">월별 전체 선택</option>
	                        
	                        
                            <c:set var="year" value="${year}"/>
                            <c:set var="month" value="${month}"/>
	                            <c:forEach begin="1" end="12" var="plusMonth" step="1">
	                            <!-- fmt: 두자리 수 맞춰주기 -->
                            	<fmt:formatNumber var="monthDigits2" value="${month}" minIntegerDigits="2" type="number"/>
	                            <option value="${year}년 ${monthDigits2}월"> ${year}년 ${monthDigits2}월</option>
	                            <c:set var="month" value="${month+1}"/>
	                            <c:if test="${month > '12'}">
	                            <c:set var="month" value="${month-12}"/>
	                            <c:set var="year" value="${year+1}"/>
	                            </c:if>
	                            </c:forEach>
	                            
	                            
	                    </select>
	                    <span class="tit">출발일</span>
	                    <input type="text" name="departDate" id="departDate" title="일자개별선택" placeholder="일자개별선택" value="" class="term hasDatepicker" readonly>
	                    <span class="tit">출발요일</span>
	                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweekall" value=""><label for="reweekall">전체</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek01" value="월"><label for="reweek01">월</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek02" value="화"><label for="reweek02">화</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek03" value="수"><label for="reweek03">수</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek04" value="목"><label for="reweek04">목</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek05" value="금"><label for="reweek05">금</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek06" value="토"><label for="reweek06">토</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek07" value="일"><label for="reweek07">일</label></span>
	                </li>
	                <li>
	                    <span class="tit">상품가격</span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p30hi">30만원 이하</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p3040">30~40만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p4050">40~50만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p50100">50~100만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p100200">100~200만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p200lo">200만원 이상</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="pricetext">직접입력</label></span>
	                    <span class="chkPrice"><input type="text" name="lowPrice" id="lowPrice" value="" numberonly="" readonly=""><span class="divide">~</span><input type="text" name="highPrice" id="highPrice" value="" numberonly="" readonly=""></span>
	                </li>
	                <li>
	                    <span class="tit">여행기간</span>
	                    <select name="period" id="period">
	                        <option value="">전체</option>
	                        <option value="4">4일 이하</option>
	                        <option value="5">5일 이하</option>
	                        <option value="6">6일 이하</option>
	                        <option value="7">7일 이하</option>
	                        <option value="8">8일 이하</option>
	                        <option value="9">9일 이하</option>
	                        <option value="10">10일 이상</option>
	                    </select>
	                    <span class="tit">출발도시</span>
	                    <select name="departCity" id="departCity">
	                        <option value="">전체</option>
	                        <option value="I">인천</option>
	                        <option value="G">김포</option>
	                        <option value="P">부산</option>                 
	                        <option value="T">대구</option>
	                        <option value="J">제주</option>
	                        <option value="Y">양양</option>
	                        <option value="C">청주</option>
	                        <option value="K">광주</option>
	                        <option value="M">무안</option>
	                        <option value="R">여수</option>
	                        <option value="Z">기타</option>
	                    </select>
	                    <span class="tit">상세키워드</span>
	                    <input type="text" name="keyword" id="keyword" value="">
	                    <button class="btnReSearch" type="submit" title="재검색" onclick="resultReSearchList(); return false;">재검색</button>
	                    <button type="reset" class="btnReset" title="초기화">초기화</button>
	                </li>
	            </ul>
				</div>
	            <div id="rank">
	                <span class="tab on">인기검색어</span><span class="tab">추천검색어</span>
	                <ul class="rankList tab01" style="display: block;"><a href="/search/searchKeyword.do?query=오사카"><li><span class="no grade">1</span><span class="name">오사카</span><span class="updown  new"></span><span class="num">0</span></li></a><a href="/search/searchKeyword.do?query=스페인 포르투갈 모로코"><li><span class="no grade">2</span><span class="name">스페인 포르투갈 모로코</span><span class="updown up"></span><span class="num">6</span></li></a><a href="/search/searchKeyword.do?query=오키나와"><li><span class="no grade">3</span><span class="name">오키나와</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=동유럽"><li><span class="no">4</span><span class="name">동유럽</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=장가계"><li><span class="no">5</span><span class="name">장가계</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=다낭"><li><span class="no">6</span><span class="name">다낭</span><span class="updown down"></span><span class="num">1</span></li></a><a href="/search/searchKeyword.do?query=미서부"><li><span class="no">7</span><span class="name">미서부</span><span class="updown down"></span><span class="num">1</span></li></a><a href="/search/searchKeyword.do?query=베트남"><li><span class="no">8</span><span class="name">베트남</span><span class="updown  new"></span><span class="num">0</span></li></a><a href="/search/searchKeyword.do?query=터키"><li><span class="no">9</span><span class="name">터키</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=호주"><li><span class="no">10</span><span class="name">호주</span><span class="updown  new"></span><span class="num">0</span></li></a></ul>
	                <ul class="rankList tab02"><a href="/search/searchKeyword.do?query=제주도"><li><span class="no grade">1</span><span class="name">제주도</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=보라카이"><li><span class="no grade">2</span><span class="name">보라카이</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=코타키나발루"><li><span class="no grade">3</span><span class="name">코타키나발루</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=러시아"><li><span class="no">4</span><span class="name">러시아</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=괌"><li><span class="no">5</span><span class="name">괌</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=대만"><li><span class="no">6</span><span class="name">대만</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=사이판"><li><span class="no">7</span><span class="name">사이판</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=큐슈"><li><span class="no">8</span><span class="name">큐슈</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=서유럽"><li><span class="no">9</span><span class="name">서유럽</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=몽골"><li><span class="no">10</span><span class="name">몽골</span><span class="updown"></span><span class="num"></span></li></a></ul>
	            </div>
	        </div><!--[[ 결과내재검색 reWrap End ]]-->        
	        </form>
        </div>
        <div id="product02">
        <!--[[ 여행상품목록 Start ]]-->
            <div class="title title02 none" title="여행상품"></div>
            <div class="searchBar">
            
                <span class="barL">
                    <span>전체 ${goodsCnt }개 상품</span>
                    <select name="sort" id="sort" class="mgr10" title="정렬순서선택">
                    	<option value="">정렬순서</option>
                        <option value="AMTASC">낮은가격순</option>
                        <option value="AMTDESC">높은가격순</option>
                    </select>
                    <select name="viewCount" id="viewCount" title="상품개수선택">
                        <option value="20">상품개수 20</option>
                        <option value="30">상품개수 30</option>
                        <option value="50">상품개수 50</option>
                        <option value="100">상품개수 100</option>
                    </select>
                </span>
                <span class="barR">
                    <select name="productRegion" id="productRegion" class="mgr10 none" title="국가선택">
                        <option value="국가선택">국가선택</option>
                    </select>
                    <select name="productRegion" id="productCity" class="none" title="도시선택">
                        <option value="도시선택">도시선택</option>
                    </select>
                    <button type="button" id="btnCompare" title="선택상품비교하기">선택상품비교하기</button>
                </span>
            </div>
            <c:if test="${goodsCnt==0}">
            <div class="listNoti"><!--[[ listWrap Start ]]-->
                <div class="noti"><!--[[ listBar Start ]]-->
                <span>검색된 결과가 없습니다.</span>
                <p>검색어가 올바르게 입력되었는지 확인해 보세요.</p>
                <p>일반적이고 포괄적인 단어로 재검색 해보세요.</p>
                <p>검색어의 띄어쓰기를 조정해 보세요.</p>
                <p>지역명 도는 국가명으로 검색해 보세요.</p>
                </div>
            </div>
            </c:if>
            <div class="list"><!--[[ listWrap Start ]]-->
                <ul class="listBar"><!--[[ listBar Start ]]-->
                <c:set var="cnt" value="1" />
                <c:forEach var="goodsList" items="${searchKeyword}" varStatus="status">
                <c:if test="${cnt%2==0 }">
                  <li class="odd">
                </c:if>
                 <c:if test="${cnt%2!=0 }">
                  <li class="">
                </c:if>
                        <ul>
                            <li class="t01">
                                <input type="checkbox" name="chk" value="ATP2049" title="체크">
                            </li>
                            <li class="t02">
                               <span class="pic">
                                <img src="https://dimgcdn.ybtour.co.kr/TN/f8/f8a688ca85305af2f836ba1acc6c7c0f.tn.410x280.jpg" alt="">
                                    </span>
                            </li>
                            <li class="t03">
                                <div class="productTop">
                                    <span class="path">${goodsList.gubun} &gt; ${goodsList.nation}</span>
                                    <a href="/product/unitList.do?menu=${existCondition}&code=${goodsList.code}">
                                    <span class="mark none"><span class="pie mint">특가</span></span>
                                    <span class="mark none"><span class="pie green">실속</span></span>
                                    <span class="mark none"><span class="pie blue">품격</span></span>
                                    <span class="mark none"><span class="pie pink">선착순</span></span>
                                    <span class="mark none"><span class="pie hotel">특급호텔</span></span>
                                    <span class="mark none"><span class="pie besthotel">초특급호텔</span></span>
                                    <span class="product">
                                       ${goodsList.title}
                                             </span>
                                    </a>
                                </div>
                                
                                <div class="productL">
                                		
                                		
                                		
                                        <span class="tit">여행코스</span><span class="period">${goodsList.bak}박${goodsList.bak+1}일</span>
                                        <span class="txt">${goodsList.schd }</span>
                                        <span class="line"></span>
                                        <span class="subTxt">
                                        ${goodsList.detail1 }
										</span>
                                        <dl>
                                            <dt>이용항공</dt>
                                           <dd class="air">
                                           <img src="/images/air/7C.png" alt="7C">
					                       <img src="/images/air/LJ.png" alt="LJ">
					                       <img src="/images/air/TW.png" alt="TW">
					                       <img src="/images/air/XJ.png" alt="XJ">
					                       <img src="/images/air/ZE.png" alt="ZE">
					                        	</dd>
                                            <dd class="divide"></dd>
                                            <dt>상품번호</dt>
                                            <dd class="pNum">${goodsList.code}</dd>
                                        </dl>
                                    </div>
                                <div class="productR">
                                    <span class="vline"></span>
                                    <span class="price">${goodsList.price}<p>원</p><p class="black">~</p></span>
                                    <span class="period"></span>
                                    <button type="button" name="btnSchedule" id="btnSchedule1" value="/product/unitList.do?menu=pkg&amp;did=851&amp;goodsCd=ATP2049" role-url="/product/unitListPop.do?menu=pkg&amp;did=851&amp;goodsCd=ATP2049" title="출발일보기">출발일보기</button>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <c:set var="cnt" value="${cnt+1 }" />
                    </c:forEach>
                    </ul><!--[[ listBar End ]]-->
            </div>
            
        </div>
		</div>
        </div>
        <!--[[ 여행상품목록 End ]]-->    
       
    </section>

    <!--[[ content End ]]-->