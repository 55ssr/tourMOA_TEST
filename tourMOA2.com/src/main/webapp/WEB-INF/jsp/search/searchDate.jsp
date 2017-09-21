<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<div id="content" style="height: 200px;">
	<html>
<head>

<script type="text/javascript">

	<div class="promotion_text">
		<a
			href="http://www.ybtour.co.kr/promotion/overseas/2017/0914_ev_offseason/"
			class="color_type2" target="_self">황금연휴에 여행 못가시는 분! 이 날짜는 어떠세요?<span>&gt;</span>
		</a>
	</div>

	<div id="topBanner"></div>
</div>
</div>
<!--[[ topSearch End ]]-->
<nav id="gnb">
	<!--[[ GNB Start ]]-->
	<ul>
		<li class="gnb01"><a href="/product/main.do?menu=pkg"><span>해외패키지</span></a></li>
		<li class="gnb02"><a href="/product/main.do?menu=fit"><span>자유여행</span></a></li>
		<li class="gnb03"><a href="/product/main.do?menu=hym"><span>허니문</span></a></li>
		<li class="gnb04"><a href="/product/main.do?menu=glf"><span>골프</span></a></li>
		<li class="gnb05"><a href="/product/main.do?menu=fbd"><span>부산/대구출발</span></a></li>
		<li class="gnb06"><a href="#"
			onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/INT/AIRINTTRP0100100000.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I', '');return false;"><span>해외항공</span></a></li>
		<li class="gnb07"><a href="/product/main.do?menu=dma"><span>국내항공</span></a></li>
		<li class="gnb08"><a href="/product/main.do?menu=dmt"><span>국내여행</span></a></li>
		<li><a
			href="http://www.ybtour.co.kr/promotion/event/2016/1108_ev_holiday/"><img
				src="/images/gnb/gnb_banner.png" alt=" " /></a></li>
	</ul>
</nav>
<!--[[ GNB End ]]-->

</header>
<!--[[ header End ]]-->
<script src="/js/jquery-ui.multidatespicker.js"></script>
<script src="/js/jquery.number.min.js"></script>
<script>
	$(document).ready(
			function() {
				popKeyword(); // 인기검색어 DIV
				popRecommend(); //추천검색어 DIV
				popRecommendStr(); //추천검색어 String
				popLikeStr(); //연관검색어

				//가격별 검색 직업입력 부분 숫자 처리
				$("input:text[numberOnly]").number(true);

				//출발요일 전체 선택
				$("#weekall").click(
						function(event) {

							event.preventDefault();

							//클릭되었으면
							if ($("#weekall").prop("checked")) {
								//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
								$("input[name='departWDayTop']").prop(
										"checked", true);
								//클릭이 안되있으면
							} else {
								//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
								$("input[name='departWDayTop']").prop(
										"checked", false);
							}

						});

				$("#datepickers").multiDatesPicker({
					numberOfMonths : 3,
					dateFormat : "yymmdd",
					minDate : 1,
					altField : '#departDate'
				});

				$("#departDate").datepicker({
					dateFormat : 'yymmdd'
				});

				$("button[name='btnSchedule']").click(function(event) {

					event.preventDefault();

					var dspCls = $(this).val();
					if (dspCls == 'B') {
						$(location).attr('href', $(this).attr('role-url'));
					} else {
						showLayer($(this));
					}
				});

				//선택상품비교하기
				$("#btnCompare").click(
						function(event) {

							event.preventDefault();

							var checkedVal = "";
							var cnt = 0;

							$("input:checkbox[name='chk']:checked").each(
									function() {
										cnt++;
										checkedVal += ((checkedVal == "" ? ""
												: ",") + $(this).val());
									});

							if (cnt != 2) {
								alert("상품비교는 2개를 선택하셔야 가능합니다");
								return true;
							} else {
								var roleUrl = $(this).attr('role-url');
								roleUrl = "/product/compareMaster.do";
								$(this).attr(
										'role-url',
										roleUrl + "?compareGoodCd="
												+ checkedVal + "&menu=&did=");
								showLayer(this);
								$(this).attr('role-url', roleUrl); //최초 URL로 복원
							}
						});
			});

	function resultSearch(query, categoryDepth1, categoryDepth2, categoryName2,
			departDate, price, lowPrice, highPrice) {
		lowPrice = replaceAll(lowPrice, ",", "");
		highPrice = replaceAll(highPrice, ",", "");
		pageNum = 1;
		$.ajax({
			url : "/search/incSearch.do",
			async : true,
			data : {
				"query" : query,
				"categoryDepth1" : categoryDepth1,
				"categoryDepth2" : categoryDepth2,
				"categoryName2" : categoryName2,
				"departDate" : departDate,
				"price" : price,
				"lowPrice" : lowPrice,
				"highPrice" : highPrice
			},
			success : function(html) {
				$(".notiWrapCon").html(html);

			},
			error : function(html) {
				//alert("incMaster");
			}
		});
	}

	//전체 replace 함수 
	function replaceAll(str, searchStr, replaceStr) {

		return str.split(searchStr).join(replaceStr);
	}

	//가격별 검색 
	function resultSearchDepartDay(event) {

		event.preventDefault();

		var query = $("input:text[name='query']").val();

		var urlStr = "/search/incSearch.do";
		$.ajax({
			url : urlStr,
			data : {
				"query" : query
			},
			success : function(html) {
				$(".notiWrapCon").empty();
				$(".notiWrapCon").html(html);
			},
			error : function(html) {

			}
		});
	}

	//출발일 검색 
	function resultSearchDepartDay() {
		var departDate = $("input:hidden[name='departDate']").val();
		var departWDay = $("input:checkbox[name='departWDay']").val();

		departDate = replaceAll(departDate.replace(/ /gi, ''), ',', '|');

		var wDay = "";
		$("input:checkbox[name='departWDayTop']:checked").each(function(index) {
			wDay += $(this).val() + "|";
		});

		var departWDay = wDay;

		if (departDate == "" && departWDay == "") {
			alert("출발일 또는 출발요일을 선택하세요.");
			return false;
		}

		var urlStr = "/search/incSearch.do";
		$.ajax({
			url : urlStr,
			data : {
				"departDate" : departDate,
				"departWDay" : departWDay,
				"query" : ''
			},
			success : function(html) {
				$(".notiWrapCon").empty();
				$(".notiWrapCon").html(html);
			},
			error : function(html) {

			}
		});
	}

	//가격별 검색 
	function resultSearchPrice(event) {

		event.preventDefault();

		lowPrice = $('input:text[name="lowPrice"]').val();
		highPrice = $('input:text[name="highPrice"]').val();

		if (lowPrice == "" && highPrice == "") {
			alert("가격을 입력하세요.");
			return false;
		}

		var urlStr = "/search/incSearch.do";

		$.ajax({
			url : urlStr,
			data : {
				"lowPrice" : lowPrice,
				"highPrice" : highPrice,
				"query" : ''
			},
			success : function(html) {
				$(".notiWrapCon").html(html);
			},
			error : function(html) {

			}
		});
	}

	$(document).on("keyup", "input:text[numberOnly]", function() {
		$(this).number(true);

	});
</script>
<section id="content">
	<!--[[ content Start ]]-->

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
		<form name="searchforms" id="totalSearch"
			action="/search/searchDate.do" method="POST"
			onSubmit="resultSearchDepartDay(event); return false;">
			<input type="hidden" name="sort" value=""> <input
				type="hidden" name="collection" value=""> <input
				type="hidden" name="realQuery" value="" />
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
							<button type="submit" class="btnSearch" title="검색">검색</button>
						</div>
					</div>
				</div>
			</div>
			<!--[[ 출발일검색 tab02 End ]]-->
		</form>
		</script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
table {
	margin: 0 auto;
}

@CHARSET "UTF-8";

/* #wrap header nav#gnb ul { border-bottom: 1px solid #e1e1e1 !important; } */

/* �듯빀寃��� */
#searchWrap {
	width: 1100px;
	margin: 25px auto 0;
}

#searchWrap .title {
	position: relative;
	display: table;
	width: 100%;
	height: 33px;
	background: url("/images/title/title_search.png") no-repeat;
}

#searchWrap .tab {
	position: relative;
	width: 1100px;
	margin: 30px auto 0;
}

#searchWrap .tab ul {
	width: 1098px;
	height: 48px;
	border: 1px solid #dddddd;
}

#searchWrap .tab ul li {
	position: relative;
	float: left;
	height: 48px;
	line-height: 48px;
	letter-spacing: -1px;
	font-size: 15px;
	color: #0d0d0d;
	font-weight: 600;
	text-align: center;
	background: url("/images/sub/tab_div.png") center right no-repeat;
	cursor: pointer;
}

#searchWrap .tab ul li p {
	display: inline-block;
	width: 100%;
	height: 100%;
}

#searchWrap .tab ul li.t01 {
	width: 369px;
}

#searchWrap .tab ul li.t02 {
	width: 364px;
}

#searchWrap .tab ul li.t03 {
	width: 361px;
	background: none;
}

#searchWrap .tab ul li a {
	position: absolute;
	z-index: 999999;
	display: block;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	background: transparent;
	text-indent: -2000000px;
}

#searchWrap .tab ul li.on {
	background: #42454c;
	height: 47px;
	margin: -1px 0 -1px -1px;
	padding-left: 1px;
	color: #fff;
}

#searchWrap .tabview {
	position: relative;
	width: 1098px;
	min-height: 100px;
	border: 1px solid #dddddd;
	border-top: none;
}
/* �듯빀寃��� : �ㅼ썙�쒓��� */
#searchWrap .tabview.tab01 {
	text-align: center;
}

#searchWrap .tabview.tab01 span.noti {
	display: block;
	width: 550px;
	margin: 20px auto 20px;
	font-size: 14px;
	color: #666666;
}

#searchWrap .tabview.tab01 #keywordSrh {
	position: relative;
	width: 550px;
	height: 36px;
	margin: 0 auto;
	border: 2px solid #fec300;
	width: 554px;
	height: 40px;
}

#searchWrap .tabview.tab01 #keywordSrh>input {
	float: left;
	width: 480px;
	border: none;
	border: 0;
	margin: 0 0 0 0;
	padding: 9px 10px 10px 10px;
	padding: 9px 10px 9px 10px \9;
	font-size: 14px;
	color: #333333;
	font-weight: 600;
}

#searchWrap .tabview.tab01 #keywordSrh>.divide {
	float: left;
	display: block;
	height: 22px;
	margin: 7px 1px 0 1px;
	border-left: 1px solid #d1d1d1;
}

#searchWrap .tabview.tab01 #keywordSrh>.btnTotalSearch {
	float: left;
	width: 47px;
	height: 36px;
	border: none;
	background: url("/images/searchPage/top_search.png") center center
		no-repeat;
}

#searchWrap .tabview.tab01 span.keyword {
	display: inline-block;
	margin: 0 auto;
	margin: 14px 0 20px 0;
	font-size: 13px;
	color: #999999;
	text-align: left;
}

#searchWrap .tabview.tab01 span.keyword span {
	display: inline;
	padding: 0 8px;
	background: url("/images/totSearch_bul.png") left center no-repeat;
}

#searchWrap .tabview.tab01 span.keyword span:first-child {
	background: none;
}

#searchWrap .relKeywordBox {
	width: 700px;
	height: 47px;
	padding: 14px;
	margin: 0 auto;
	font-size: 13px;
	font-weight: 600;
	color: #999;
}

#searchWrap .tabview.tab01 span.likekeyword {
	display: inline-block;
	margin: 0 auto;
	margin: 14px 0 20px 0;
	font-size: 13px;
	color: #999999;
	text-align: left;
}

#searchWrap .tabview.tab01 span.likekeyword span {
	display: inline;
	padding: 0 8px;
	background: url("/images/totSearch_bul.png") left center no-repeat;
}

#searchWrap .tabview.tab01 span.likekeyword span:first-child {
	background: none;
}

/* �듯빀寃��� : 異쒕컻�쇨��� */
#searchWrap .tabview.tab02 {
	text-align: center;
}

#searchWrap .tabview.tab02 .calendarBox {
	clear: both;
	position: relative;
	width: 100%;
	height: 346px;
	overflow: hidden;
}

#searchWrap .control {
	float: left;
	width: 100%;
	height: 60px;
	position: absolute;
	bottom: 0;
	border-top: 1px solid #dddddd;
	background: #f7f8f9;
}

#searchWrap .control span {
	display: block;
	float: left;
	font-size: 14px;
}

#searchWrap .control span.tit {
	margin: 22px 30px 0 50px;
	color: #333333;
	font-weight: 600;
}

#searchWrap .control span.chk {
	width: 55px;
	margin: 22px 5px 0 0;
	color: #666666;
}

#searchWrap .control span.chk input[type="checkbox"] {
	margin: 2px 5px 0 0;
	margin: -2px 8px 0 0 \9;
	vertical-align: top;
}

#searchWrap .control button.btnSearch {
	float: left;
	width: 64px;
	height: 29px;
	margin: 15px 0 0 10px;
	background: #777777;
	border: 1px solid #777777;
	font-size: 12px;
	color: #fff;
	font-weight: 600;
}

/* �듯빀寃��� : 媛�寃⑸퀎寃��� */
#searchWrap .tabview.tab03 {
	text-align: center;
}

#searchWrap .tabview.tab03 .rangeWrap {
	display: inline-block;
	width: 760px;
	margin: 30px auto;
}

/* 寃��됯껐怨� �뚮┝ */
#notiWrap {
	width: 1098px;
	margin: 15px auto 0;
	padding: 15px 0;
	text-align: center;
	border: 1px solid #ececec;
}

#notiWrap span {
	display: block;
	font-size: 16px;
	color: #333333;
}

#notiWrap span p {
	display: inline;
	font-size: 16px;
	color: #f8931f;
	font-weight: 600;
}

#notiWrap span p.keywd {
	padding-right: 5px;
}

#notiWrap div.noti {
	display: inline-block;
	width: 300px;
	margin: 0 auto;
	text-align: left;
}

#notiWrap div.noti span {
	display: block;
	margin-bottom: 15px;
	text-align: center;
}

#notiWrap div.noti p {
	margin: 10px 0 0 0;
	padding-left: 8px;
	background: url("/images/totSearch_bul02.png") left center no-repeat;
	font-size: 13px;
	color: #666666;
}

/* 寃��됯껐怨� 移댄뀒怨좊━ */
#catWrap {
	width: 1100px;
	margin: 40px auto 0;
}

#catWrap .title {
	width: 100%;
	font-size: 16px;
	color: #333333;
	font-weight: 600;
}

#catWrap .title span.bul {
	float: left;
	display: block;
	width: 5px;
	height: 5px;
	margin: 4px 8px 0 0;
	background: #ffc200;
}

#catWrap .title p {
	display: inline-block;
	padding: 0 0 0 5px;
	color: #f8931f;
}

#catWrap table {
	width: 100%;
	margin: 20px 0 0 0;
	border-top: 1px solid #d6d6d6;
}

#catWrap table tr {
	width: 100%;
	border-bottom: 1px solid #d6d6d6;
	font-size: 14px;
	text-align: left;
}

#catWrap table tr th, #catWrap table tr td {
	padding: 20px 0 5px;
	vertical-align: top;
}

#catWrap table tr th {
	width: 175px;
	color: #333333;
	font-weight: 600;
}

#catWrap table tr th span a {
	color: #333;
	text-decoration: none;
}

#catWrap table tr th span a:hover, #catWrap table tr th span a:active,
	#catWrap table tr th span a:visited {
	color: #f8931f !important;
	font-weight: 600 !important;
}

#catWrap.catWrap table tr th span a:hover, #catWrap.catWrap table tr th span a:active,
	#catWrap.catWrap table tr th span a:visited {
	color: #333 !important;
	font-weight: 600 !important;
}

#catWrap table tr td span {
	display: inline-block;
	float: left;
	width: 170px;
	margin: 0 15px 15px 0;
}

#catWrap table tr td span a {
	color: #666666;
}

#catWrap table tr td span a:hover, #catWrap table tr td span a:active,
	#catWrap table tr td span a:visited {
	color: #666666;
}

#catWrap table tr td span.on {
	color: #f8931f !important;
}

/* 寃곌낵 �� �ш��� */
#reWrap {
	position: relative;
	width: 1100px;
	height: 406px;
	margin: 40px auto 0;
	overflow: hidden;
}

.titleBox {
	position: relative;
	width: 1100px;
	margin: 0 auto;
	top: 35px;
	z-index: 1;
}

.titleBox .title {
	float: left;
	width: 11%;
	font-size: 16px;
	color: #333333;
	font-weight: 600;
	top: 5px
}

.titleBox .title span.bul {
	float: left;
	display: block;
	width: 5px;
	height: 5px;
	margin: 4px 8px 0 0;
	background: #ffc200;
}

.titleBox .bntOption {
	display: block;
	float: left;
	padding: 5px 7px 3px 8px;
	border: 1px solid #ddd;
	background-color: #fff;
	font-size: 12px;
	color: #494949;
	letter-spacing: -1px;
	text-decoration: none;
	line-height: 15px;
}

.spim {
	overflow: hidden;
	background: url("/images/area/sp_layout.png") center center no-repeat;
	white-space: nowrap;
	vertical-align: middle;
}

.titleBox .bntOption .spim {
	display: inline-block;
	width: 7px;
	height: 5px;
	margin: 4px 0 -4px 5px;
	background-position: 0 0;
	vertical-align: top;
}

.titleBox .bntOption.on .spim {
	background-position: -10px 0;
}

#reWrap ul.frm {
	clear: both;
	float: left;
	display: inline-block;
	width: 825px;
	margin: 38px 0;
	border: 1px solid #d6d6d6;
	border-left: none;
	border-right: none;
}

#reWrap ul.frm li {
	float: left;
	width: 254px;
	min-height: 320px;
	padding: 0 0 0 20px;
	margin: 18px 0;
	border-left: 1px solid #ececec;
	font-size: 14px;
}

#reWrap ul.frm li:first-child {
	border-left: none;
}

#reWrap ul.frm li span.tit {
	display: block;
	clear: both;
	margin-bottom: 10px;
	color: #333333;
	font-weight: 600;
}

#reWrap ul.frm li #keyword {
	width: 208px;
	height: 32px;
	border: 1px solid #ddd;
	margin-bottom: 10px;
}

#reWrap ul.frm li span.txt {
	display: block;
	clear: both;
	font-size: 13px;
	color: #999999;
	line-height: 1.2;
}

#reWrap ul.frm li>select {
	float: left;
	width: 210px; /*height: 34px;*/
	margin: 0 0 30px 0;
	padding: 8px 10px 8px 10px;
	padding: 7px 10px 7px 10px \9;
	line-height: 30px;
	border: 1px solid #dddddd;
	font-size: 14px;
	color: #666666;
	font-weight: normal;
}

#reWrap ul.frm li span.inputWrap {
	float: left;
	width: 208px;
	height: 34px;
	margin: 0 0 30px 0;
	border: 1px solid #dddddd;
	overflow: hidden;
}

#reWrap ul.frm li span.inputWrap input {
	float: left;
	width: 155px; /*height: 34px;*/
	margin: 0 0 30px 0;
	padding: 9px 10px 9px 10px;
	padding: 8px \9;
	border: none;
	font-size: 14px;
	color: #666666;
	font-weight: normal;
}

#reWrap ul.frm li span.inputWrap button {
	float: right;
	width: 32px;
	height: 34px;
	border: none;
	background: #fff url('/images/find_icon02.png') center center no-repeat;
}

.optionMenu {
	display: block
}

#reWrap ul.frm li .term {
	width: 174px;
	margin: 0 0 30px 0;
	padding: 9px 20px 10px 14px;
	padding: 9px20px10px14px\9 !important;
	border: 1px solid #dddddd;
	background: #fff url("/images/find_icon02.png") no-repeat 184px center
		!important;
	font-size: 13px;
	cursor: pointer;
}

::-webkit-input-placeholder {
	font-size: 13px !important;
	color: #999 !important;
	font-weight: normal;
}

::-moz-placeholder {
	font-size: 13px !important;
	color: #999 !important;
	font-weight: normal;
} /* firefox 19+ */
:-ms-input-placeholder {
	font-size: 13px !important;
	color: #999 !important;
	font-weight: normal;
} /* ie */
input:-moz-placeholder {
	font-size: 13px !important;
	color: #999 !important;
	font-weight: normal;
}

input[type="text"].research_box {
	border: 1px solid #666;
	height: 30px;
	width: 205px;
}

#reWrap ul.frm li span.chk {
	display: block;
	float: left;
	width: 70px;
	margin: 0 10px 12px 0;
	font-size: 14px;
	color: #666666;
}

#reWrap ul.frm li span.chk input[type="checkbox"] {
	margin: 2px 5px 0 0;
	margin: -2px 5px 0 0 \9;
	vertical-align: top;
}

#reWrap ul.frm li span.chkPrice {
	display: block;
	margin: 0 0 15px 0;
	font-size: 14px;
	color: #666666;
}

#reWrap ul.frm li span.chkPrice input[type="checkbox"] {
	margin: 2px 5px 0 0;
	margin: -2px 5px 0 0 \9;
	vertical-align: top;
}

#reWrap ul.frm li span.chkPrice input[type="text"] {
	float: left;
	width: 75px;
	margin-top: -5px;
	padding: 7px 10px 7px 10px;
	padding: 8px \9;
	border: 1px solid #dddddd;
}

#reWrap ul.frm li span.chkPrice input[type="text"]:first-child {
	margin-left: 20px;
}

#reWrap ul.frm li span.chkPrice span.divide {
	float: left;
	margin: 4px;
}

#reWrap ul.frm li input#detailKeyword {
	float: left;
	width: 188px;
	width: 192px \9; /*height: 34px;*/
	margin: 0 0 10px 0;
	padding: 9px 10px 9px 10px;
	padding: 8px \9;
	border: 1px solid #dddddd;
	font-size: 14px;
	color: #666666;
	font-weight: normal;
}

#reWrap ul.frm li button.btnReSearch {
	float: left;
	width: 74px;
	height: 30px;
	margin: 10px 5px 0 0;
	background: #777777;
	border: 1px solid #777777;
	font-size: 12px;
	color: #fff;
	font-weight: 600;
}

#reWrap ul.frm li button.btnReset {
	float: left;
	width: 74px;
	height: 30px;
	margin: 10px 5px 0 0;
	background: #fff;
	border: 1px solid #777777;
	font-size: 12px;
	color: #666666;
	font-weight: 600;
}

#reWrap #rank {
	float: right;
	width: 245px;
	height: 395px;
	border: 1px solid #d6d6d6;
	overflow: hidden;
}

#reWrap #rank .tab {
	float: left;
	width: 122px;
	height: 34px;
	margin-bottom: 20px;
	border-bottom: 1px solid #d6d6d6;
	font-size: 15px;
	color: #333333;
	font-weight: 600;
	text-align: center;
	line-height: 2.2;
	cursor: pointer;
	background: #f7f8f9;
}

#reWrap #rank .tab:first-child {
	border-right: 1px solid #d6d6d6;
}

#reWrap #rank .tab.on {
	background: #fff;
	border-bottom: none !important;
	z-index: 1;
}

#reWrap #rank ul.rankList.tab01 {
	display: block;
}

#reWrap #rank ul.rankList.tab02 {
	display: none;
}

#reWrap #rank ul.rankList {
	clear: both;
	width: 100%;
	height: 100%;
}

#reWrap #rank ul.rankList li {
	position: relative;
	width: 100%;
	height: 18px;
	padding: 0 20px;
	margin: 15px 0 0 0;
}

#reWrap #rank ul.rankList li:first-child {
	margin: 20px 0 0 0;
}

#reWrap #rank ul.rankList li span {
	float: left;
	display: block;
	font-size: 14px;
	color: #333333;
	line-height: 1.2;
}

#reWrap #rank ul.rankList li span.no {
	clear: both;
	width: 16px;
	height: 16px;
	border: 1px solid #c4c4c4;
	font-size: 12px;
	background: #dddddd;
	color: #666666;
	text-align: center;
}

#reWrap #rank ul.rankList li span.no.grade {
	border: 1px solid #e3ae00;
	font-size: 12px;
	background: #fec300;
	color: #fff;
}

#reWrap #rank ul.rankList li span.name {
	width: 115px;
	margin: 0 0 0 14px;
	margin: 1px 0 0 14px \9;
	cursor: pointer;
}

#reWrap #rank ul.rankList li span.updown {
	width: 15px;
	height: 100%;
	margin: 0 15px;
	background: url('/images/totSearch_icon01.png') 7px center no-repeat;
}

#reWrap #rank ul.rankList li span.updown.new {
	background: url(/images/ico_search_new.png) no-repeat 50% 50%;
	width: 48px
}

#reWrap #rank ul.rankList li span.updown.new+span.num {
	display: none
}

#reWrap #rank ul.rankList li span.updown.up {
	background: url('/images/totSearch_icon02.png') 7px center no-repeat;
}

#reWrap #rank ul.rankList li span.updown.down {
	background: url('/images/totSearch_icon03.png') 7px center no-repeat;
}

#reWrap #rank ul.rankList li span.updown.ico_new {
	font-size: 10px;
	font-family: verdana;
	color: red
} /* new 異붽� */
#reWrap #rank ul.rankList li span.num {
	color: #999999;
}

/* 寃��� �� �멸린寃��됱뼱 */
#rankWrap {
	width: 1098px;
	height: 550px;
	margin: 40px auto 0;
	border: 1px solid #d6d6d6;
	overflow: hidden;
}

#rankWrap .tab {
	float: left;
	width: 548px;
	height: 48px;
	background: #f7f8f9;
	border-bottom: 1px solid #d6d6d6;
	border-top: 1px solid #d6d6d6;
	font-size: 15px;
	color: #333333;
	font-weight: 600;
	text-align: center;
	line-height: 3.2;
	cursor: pointer;
}

#rankWrap .tab:first-child {
	width: 549px;
}

#rankWrap ul.tab01 {
	width: 549px;
	clear: both;
}

#rankWrap ul.tab02 {
	width: 547px;
	border-left: 1px solid #d6d6d6;
}

#rankWrap ul {
	float: left;
	width: 540px;
	height: 100%;
}

#rankWrap ul li {
	position: relative;
	width: 100%;
	height: 18px;
	padding: 0 40px;
	margin: 10px 0 0 0;
	padding-right: 0
}

#rankWrap ul li:first-child {
	margin: 30px 0 0 0;
}

#rankWrap ul li span {
	float: left;
	display: block;
	font-size: 14px;
	color: #333333;
	line-height: 1.2;
}

#rankWrap ul li span.no {
	clear: both;
	width: 16px;
	height: 16px;
	border: 1px solid #c4c4c4;
	font-size: 12px;
	background: #dddddd;
	color: #666666;
	text-align: center;
}

#rankWrap ul li span.no.grade {
	border: 1px solid #e3ae00;
	font-size: 12px;
	background: #fec300;
	color: #fff;
}

#rankWrap ul li span.name {
	width: 385px;
	margin: 0 0 0 14px;
	margin: 1px 0 0 14px \9;
	cursor: pointer;
	text-align: left
}

#rankWrap ul li span.updown {
	width: 15px;
	height: 100%;
	margin: 0 15px;
	background: url('/images/totPage/totSearch_icon01.png') center no-repeat;
}

#rankWrap ul li span.updown.up {
	background: url('/images/totPage/totSearch_icon02.png') center no-repeat;
}

#rankWrap ul li span.updown.down {
	background: url('/images/totPage/totSearch_icon03.png') center center
		no-repeat;
}

#rankWrap ul li span.num {
	color: #999999;
}

#rankWrap ul li span.updown.new {
	background: url('/images/newPage/ico_search_new.png') no-repeat 50% 50%;
	width: 48px
}

#rankWrap ul li span.updown.new+span.num {
	display: none
}

.searchBar {
	margin-top: 0 !important;
}

.ui-datepicker .ui-datepicker-calendar .ui-state-highlight a {
	width: 17px;
	height: 17px;
	background: url("/images/unit/calendar/calendar_orange.png") center 2px
		no-repeat;
	margin: 0 auto;
	text-align: center;
	color: white;
}

#query2 {
	width: 500px !important;
	height: 35px;
}
</style>
</head>
<script>
			function fn_popup() {
				var url = "/ctgRegPop.do";
				window.open(url, "ctgReg",
						"width=500,height=500,resizeble=yes,left=500,top=200");
			}
		</script>
<body
	style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">

	<section id="content">
		<!--[[ content Start ]]-->

		<div id="searchWrap">
			<!--[[ 통합검색 searchWrap Start ]]-->
			<div class="tab"></div>

			<!--[[ 키워드검색 tab01 End ]]-->
			</form>
		</div>
		<!--[[ 통합검색 searchWrap End ]]-->

		<div class="notiWrapCon">
			<div id="rankWrap">
				<!--[[ 검색 전 인기검색어 rankWrap Start ]]-->
				<span class="tab">인기검색어</span><span class="tab"
					style="border-left: 1px solid #d6d6d6; width: 547px">추천검색어</span>
				<ul class="rankList tab01" style="border-left:">
					<a href="/search/searchKeyword.do?query=오사카">
						<li><span class="no grade">1</span> <span class="name">오사카</span>
							<span class="updown  new"></span> <span class="num">0</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=장가계">
						<li><span class="no grade">2</span> <span class="name">장가계</span>
							<span class="updown  new"></span> <span class="num">0</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=북해도">
						<li><span class="no grade">3</span> <span class="name">북해도</span>
							<span class="updown"></span> <span class="num">0</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=다낭">
						<li><span class="no">4</span> <span class="name">다낭</span> <span
							class="updown"></span> <span class="num">0</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=서유럽">
						<li><span class="no">5</span> <span class="name">서유럽</span> <span
							class="updown up"></span> <span class="num">2</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=터키">
						<li><span class="no">6</span> <span class="name">터키</span> <span
							class="updown"></span> <span class="num">0</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=라오스">
						<li><span class="no">7</span> <span class="name">라오스</span> <span
							class="updown  new"></span> <span class="num">0</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=미서부">
						<li><span class="no">8</span> <span class="name">미서부</span> <span
							class="updown down"></span> <span class="num">3</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=홍콩">
						<li><span class="no">9</span> <span class="name">홍콩</span> <span
							class="updown down"></span> <span class="num">1</span></li>
					</a>
					<a href="/search/searchKeyword.do?query=스페인 포르투갈 모로코">
						<li><span class="no">10</span> <span class="name">스페인
								포르투갈 모로코</span> <span class="updown  new"></span> <span class="num">0</span>
					</li>
					</a>
				</ul>
				<ul class="rankList tab02">
					<a href="/search/searchKeyword.do?query=보라카이">
						<li><span class="no grade">1</span> <span class="name">보라카이</span>
							<span class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=제주도">
						<li><span class="no grade">2</span> <span class="name">제주도</span>
							<span class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=대만">
						<li><span class="no grade">3</span> <span class="name">대만</span>
							<span class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=사이판">
						<li><span class="no">4</span> <span class="name">사이판</span> <span
							class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=코타키나발루">
						<li><span class="no">5</span> <span class="name">코타키나발루</span>
							<span class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=오키나와">
						<li><span class="no">6</span> <span class="name">오키나와</span>
							<span class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=괌">
						<li><span class="no">7</span> <span class="name">괌</span> <span
							class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=몽골">
						<li><span class="no">8</span> <span class="name">몽골</span> <span
							class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=러시아">
						<li><span class="no">9</span> <span class="name">러시아</span> <span
							class="updown"></span> <span class="num"></span></li>
					</a>
					<a href="/search/searchKeyword.do?query=동유럽">
						<li><span class="no">10</span> <span class="name">동유럽</span>
							<span class="updown"></span> <span class="num"></span></li>
					</a>
				</ul>
			</div>
			<!--[[ 검색 전 인기검색어 rankWrap End ]]-->
		</div>
	</section>
	<!--[[ content End ]]-->
	<script src="/js/common.js"></script>
</body>
	</html>
</div>
</body>
</html>
