<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script src="/js/jquery-ui.multidatespicker.js"></script>
<script src="/js/jquery.number.min.js"></script>
<script src="/js/jquery-ui.css"></script>

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