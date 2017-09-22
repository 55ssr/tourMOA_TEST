<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	//가격별 검색 직업입력 부분 숫자 처리
	$("input:text[numberOnly]").number(true);

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
				<a href="/search/searchDate.do"><li class="t02 ">
						<p>출발일검색</p>
				</li></a>
				<a href="/search/searchPrice.do"><li class="t03 on">
						<p>가격별검색</p>
				</li></a>
			</ul>
		</div>
		<form name="searchforms" id="totalSearch"
			action="/search/searchPrice.do" method="POST"
			onSubmit="resultSearchPrice(event); return false;">
			<input type="hidden" name="sort" value=""> <input
				type="hidden" name="collection" value=""> <input
				type="hidden" name="realQuery" value="" />
			<div class="tabview tab03 block">
				<!--[[ 가격별검색 tab03 Start ]]-->
				<div class="rangeWrap">
					<span class="tit">직접입력</span> <input type="text" name="lowPrice"
						id="lowPrice2" class="minPrice" value="" numberOnly /> <span
						class="divide">~</span> <input type="text" name="highPrice"
						id="highPrice2" class="maxPrice" value="" numberOnly /> <span
						class="chkRange start">30만원 이하</span> <span class="chkRange">30~40만원</span>
					<span class="chkRange">40~50만원</span> <span class="chkRange">50~100만원</span>
					<span class="chkRange">100~200만원</span> <span class="chkRange">200만원
						이상</span>
					<button type="submit" class="btnTotalSearch" title="검색">검색</button>
				</div>
			</div>
			<!--[[ 가격별검색 tab03 End ]]-->
		</form>
		<script>
			function fn_popup() {
				var url = "/ctgRegPop.do";
				window.open(url, "ctgReg",
						"width=500,height=500,resizeble=yes,left=500,top=200");
			}
		</script>

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
							<li><span class="no">5</span> <span class="name">서유럽</span>
								<span class="updown up"></span> <span class="num">2</span></li>
						</a>
						<a href="/search/searchKeyword.do?query=터키">
							<li><span class="no">6</span> <span class="name">터키</span> <span
								class="updown"></span> <span class="num">0</span></li>
						</a>
						<a href="/search/searchKeyword.do?query=라오스">
							<li><span class="no">7</span> <span class="name">라오스</span>
								<span class="updown  new"></span> <span class="num">0</span></li>
						</a>
						<a href="/search/searchKeyword.do?query=미서부">
							<li><span class="no">8</span> <span class="name">미서부</span>
								<span class="updown down"></span> <span class="num">3</span></li>
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
							<li><span class="no">4</span> <span class="name">사이판</span>
								<span class="updown"></span> <span class="num"></span></li>
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
							<li><span class="no">9</span> <span class="name">러시아</span>
								<span class="updown"></span> <span class="num"></span></li>
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