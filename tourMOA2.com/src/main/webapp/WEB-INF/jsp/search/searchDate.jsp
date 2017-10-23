<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script src="/js/jquery-ui.multidatespicker.js"></script>
<script src="/js/jquery.number.min.js"></script>
<script src="/js/jquery-ui.css"></script>

<script>
$(document).ready(function(){
	$("#datepickers").multiDatesPicker({
		numberOfMonths: 3,
		dateFormat: "yy-mm-dd",
		minDate: 1,
		altField: "#departDate"
		
	});
	
	$("#btnSearch").click(function(){
		alert($("#departDate").val());
		document.searchforms.submit();
	});
});
</script>

<div id ="wrap">

 <!--[[ content Start ]]-->
<section id="content">

<div id="searchWrap">
	<!--[[ 통합검색 searchWrap Start ]]-->
	<div class="title" title="검색하기"></div>
	<div class="tab">
		<ul>
			<a href="/search/searchKeyword.do"><li class="t01 ">
					<p>키워드검색</p>
			</li></a>
			<a href="/search/searchDate.do"><li class="t02 on">
					<p>출발일검색</p>
			</li></a>
			<a href="/search/searchPrice.do"><li class="t03 ">
					<p>가격별검색</p>
			</li></a>
		</ul>
	</div>
	<form name="searchforms" id="totalSearch" action="/search/searchKeyword.do" method="POST">
		<input type="hidden" name="sort" value=""> 
		<input type="hidden" name="departDate" id="departDate" value=""> 
		<input type="hidden" name="realQuery" value="" />
		<div class="tabview tab02 block">
			<!--[[ 출발일검색 tab02 Start ]]-->
			<div class="calendarBox">
				<div class="calendarWrap">
					<div id="datepickers"></div>
					<div class="control">
						<span class="tit">출발요일</span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="weekall" value=""><label
							for="weekall">전체</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week01" value="월"><label
							for="week01">월</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week02" value="화"><label
							for="week02">화</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week03" value="수"><label
							for="week03">수</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week04" value="목"><label
							for="week04">목</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week05" value="금"><label
							for="week05">금</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week06" value="토"><label
							for="week06">토</label></span> <span class="chk"><input
							type="checkbox" name="departWDayTop" id="week07" value="일"><label
							for="week07">일</label></span> <input type="hidden" name="departDate"
							id="departDate" value="">
						<button type="button" class="btnSearch" id="btnSearch" title="검색">검색</button>
					</div>
				</div>
			</div>
		</div>
		 
<!--[[ 검색 전 인기검색어 rankWrap End ]]-->
			</form>
		</div>
		
		 <div class="notiWrapCon">
			
	        <div id="rankWrap"><!--[[ 검색 전 인기검색어 rankWrap Start ]]-->
	            <span class="tab">인기검색어</span>
	            <span class="tab" style="border-left: 1px solid #d6d6d6;width:547px">추천검색어</span>
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
	</section>
</div>
	