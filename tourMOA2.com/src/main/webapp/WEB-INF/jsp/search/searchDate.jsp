<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="promotion_text">
		<a href="http://www.ybtour.co.kr/promotion/overseas/2017/0914_ev_offseason/" class="color_type2" target="_self">
		황금연휴에 여행 못가시는 분! 이 날짜는 어떠세요?<span>&gt;</span>
		</a>
</div>

	<div id="topBanner"></div>
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
<section id="content"> <!--[[ content Start ]]-->

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
<script>
			function fn_popup() {
				var url = "/ctgRegPop.do";
				window.open(url, "ctgReg",
						"width=500,height=500,resizeble=yes,left=500,top=200");
			}
		</script>

	<section id="content"> <!--[[ content Start ]]-->

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
					<li><span class="no">6</span> <span class="name">오키나와</span> <span
						class="updown"></span> <span class="num"></span></li>
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
					<li><span class="no">10</span> <span class="name">동유럽</span> <span
						class="updown"></span> <span class="num"></span></li>
				</a>
			</ul>
		</div>
		<!--[[ 검색 전 인기검색어 rankWrap End ]]-->
	</div>
	</section>
	<!--[[ content End ]]-->
