<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="/css/customer.css" />

<script>

function fn_loc(a) {
	document.hiddenFrm1.unq.value = a;
	alert(document.hiddenFrm1.unq.value);
	document.hiddenFrm1.submit();
}

	function fnMenuSelect() {
		//공지사항
		$('.lnb01').addClass('lnb01 on');
		$("ul.sub_1").css("display", "block");
		$('.sub01_01').addClass('sub01_01 on');
		$('#one').show();

		//여행이야기

		//여행상담

		//고객의소리

		//소비자중심경영

		//서비스안내

	}
	$(document).ready(function() {
		fnMenuSelect();
		$('#lnb').mouseleave(function() {
			setTimeout(function() {
				$("#one > li").removeClass('on'); // 1depth 초기화
				$("ul.sub").css("display", "none"); // 2depth 사라짐
				$("ul.sub > li").removeClass('on'); // 2depth 초기화
				fnMenuSelect();
			}, 3000);
		});
	});

	function loginConfirm() {

		document.location.href = '/customer/complaintWrite.do';

	}
</script>
<script type="text/javaScript" language="javascript" defer="defer">
	$(document).ready(function() {

		//카테고리 클릭 이벤트 삭제
		$(".cat_area > tbody > tr > th").unbind('click');
	});
</script>
<section id="content">
	<!--[[ content Start ]] -->
	<div class="tit notice_tit" title="공지사항">
		<span class="tit_txt notice_sub">투어모아의 새로운 소식과 공지사항을 알려드립니다.</span>
	</div>
	<form name="searchForm" id="searchForm" action="/customer/noticeList.do" method="post">
		<input type="hidden" name="searchNoticeCd" id="searchNoticeCd" value="" />
		<div class="board_search">
			<!--[[ Search Form Start ]]-->
			<span class="select_wrap"> <i> <!--[[ 구분 영역 ]]--> 
				<select name="selectNoti" id="searchCnd1" title="공지구분" onchange="location.href=this.value">
						<option>전체</option>
						<option	value="?searchCondition=gubun&searchKeyword=허니문">허니문</option>
						<option	value="?searchCondition=gubun&searchKeyword=골프">골프</option>
						<option	value="?searchCondition=gubun&searchKeyword=크루즈">크루즈</option>
						<option	value="?searchCondition=gubun&searchKeyword=국내">국내</option>
						<option	value="?searchCondition=gubun&searchKeyword=부산/대구">부산/대구</option>
						<option	value="?searchCondition=gubun&searchKeyword=항공권소식">항공권소식</option>		
				</select>
				<!--[[ 검색 영역 ]]--> 
				<select name="searchCondition" id="searchCnd" title="검색조건">
						<option value="title">제목</option>
						<option value="content">내용</option>
				</select>
			</i>
			</span> <input type="text" name="searchKeyword" id="searchWrd" title="검색어" value="">
			<button id="btn_search" title="검색">검색</button>
		</div>
		<!--[[ Search Form End ]]-->
	</form>
	<div class="board_area">
		<!--[[ board area Start ]]-->
		<table>
			<caption>공지사항</caption>
			<colgroup>
				<col class="no" />
				<col />
				<col class="dt" />
			</colgroup>
			<tbody>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
				</tr>
			</tbody>
		</table>
		<table>
			<c:forEach var="result" items="${resultList}" varStatus="status">
				<tr>
					<c:if test="${result.allview == 'Y'}">
						<td headers="번호"><span class="bul bul_yellow">상시공지</span></td>
					</c:if>
					<c:if test="${result.allview == 'N'}">
						<td headers="번호" >${number}</td>
					</c:if>
						<td headers="제목" class="subject">
							<a href="#" onclick="fn_loc('${result.unq}')">${result.title}</a>
						</td>
						<td headers="등록일">${fn:substring(result.rdate,0,10)}</td>	
				</tr>
				<c:set var="number" value="${number-1}" />
			</c:forEach>
		</table>
	</div>
	<!--[[ board area End ]]-->
	<div class="board_navi_area">
		<!-- [[ board navi Start ]] -->
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
		<c:if test="${before == 0}">
			<li class="page-item disabled">
				<a class="page-link" href="/customer/noticeList.do?pageIndex=1&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" tabindex="-1" aria-label="Previous">
					<span aria-hidden="true">&laquo;&laquo;</span>	
					<span class="pre"><!-- Previous --></span>
				</a>
			</li>
		</c:if>
		<c:if test="${before > 0}"> 
			<li class="page-item">
				<a class="page-link" href="/customer/noticeList.do?pageIndex=${firstPage-1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" tabindex="-1" aria-label="">
					<span aria-hidden="true">&laquo;</span>
					<span class="pre"></span>
				</a>
			</li>
		</c:if>
		<li class="page-item">
				<a class="page-link" href="/customer/noticeList.do?pageIndex=${firstPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" tabindex="1" aria-label="">
					<span aria-hidden="true">&laquo;</span>
					<!-- <span class="pre">Previous</span> -->
				</a>
			</li>
		
		<c:forEach var="i" begin="${firstPage}" end="${lastPage}">
			<c:if test="${i <= totalPage}">
				<c:if test="${i == searchVO.pageIndex}">
					<li class="page-item disabled"><a class="page-link" href="/customer/noticeList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
				</c:if>
				<c:if test="${i != searchVO.pageIndex}">
					<li class="page-item inline"><a class="page-link" href="/customer/noticeList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
				</c:if>
				&nbsp;
			</c:if>
		</c:forEach>
		<c:if test="${next == 0}">
			<li class="page-item disabled">
				<a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="pre"><!-- Next --></span>
				</a>
			</li>
		</c:if>
		<c:if test="${next > 0}">
			<li class="page-item">
				<a class="page-link" href="/customer/noticeList.do?pageIndex=${lastPage+1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="">
					<span aria-hidden="true">&raquo;</span>
					<span class="pre"></span>
				</a>
			</li>
		</c:if>
			<li class="page-item">
				<a class="page-link" href="/customer/noticeList.do?pageIndex=${totalPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="">
					<span aria-hidden="true">&raquo;&raquo;</span>
					<!-- <span class="pre">Next</span> -->
				</a>
			</li>
		</ul>
	</nav>
</div>

<!-- --------------------------------------------------------------------------------- -->	
	<!-- paging -->
<!-- <div class="paging">
  <a href="#" class="btn_arr first"><span class="hide">처음페이지</span></a>            
  <a href="#" class="btn_arr prev"><span class="hide">이전페이지</span></a>     
  <a href="#" class="on">1</a>D : 활성화페이지일 경우 : on 처리
  <a href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#" class="btn_arr next"><span class="hide">다음페이지</span></a>             
  <a href="#" class="btn_arr last"><span class="hide">마지막페이지</span></a>            
</div> -->
	<!-- //paging -->
<!-- --------------------------------------------------------------------------------- -->

<!--[[ board navi End ]]-->

<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- 	<div class="board_navi_area">
		[[ board navi Start ]]
		<span class="paging"> <span class="first">&lt;</span><span
			class="pre">이전</span><span class="on"><a>1</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=2&searchCnd=&searchWrd=&searchNoticeCd="
				title="2">2</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=3&searchCnd=&searchWrd=&searchNoticeCd="
				title="3">3</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=4&searchCnd=&searchWrd=&searchNoticeCd="
				title="4">4</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=5&searchCnd=&searchWrd=&searchNoticeCd="
				title="5">5</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=6&searchCnd=&searchWrd=&searchNoticeCd="
				title="6">6</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=7&searchCnd=&searchWrd=&searchNoticeCd="
				title="7">7</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=8&searchCnd=&searchWrd=&searchNoticeCd="
				title="8">8</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=9&searchCnd=&searchWrd=&searchNoticeCd="
				title="9">9</a></span><span class=""><a
				href="/customer/noticeList.do?pageIndex=10&searchCnd=&searchWrd=&searchNoticeCd="
				title="10">10</a></span><span class="next on"><a
				href="/customer/noticeList.do?pageIndex=2&searchCnd=&searchWrd=&searchNoticeCd="
				title="다음페이지">다음</a></span><span class="last on"><a
				href="/customer/noticeList.do?pageIndex=41&searchCnd=&searchWrd=&searchNoticeCd="
				title="마지막페이지">&gt;</a></span></span>
	</div> -->
	<!--[[ board navi End ]]-->
	
	<form id="hiddenFrm1" name="hiddenFrm1" method="post" action="/customer/noticeDetail.do">
		<input type="hidden" id="unq" name="unq" />
	</form>


</section>
</div>