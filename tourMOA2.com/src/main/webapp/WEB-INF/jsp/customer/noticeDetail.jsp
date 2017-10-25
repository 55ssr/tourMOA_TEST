<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	function fileDownloadCount() {

		$.ajax({
			url : "/customer/noticeFileDownloadCount.do",
			dataType : 'JSON',
			data : {
				"noticeNo" : 20000002821
			},
			success : function(data) {
				$("#downloadCnt").text(data);
			},
			error : function(data) {
				/* console.log(data);
				console.log("downloadCnt error"); */
			}
		});

	}

	$(document).ready(function() {

		//탭 클릭 이벤트 삭제
		$(".cat_area > tbody > tr > th").unbind('click');

		byteCalculation();

	});
</script>
<section id="contentInNoticeList">
	<!--[[ content Start ]] -->

	<div class="tit notice_tit" title="공지사항"></div>


	<div class="board_view">
		<!--[[ board contents Start ]]-->
		<div class="viewListBox">
			<ul class="viewList_tit">
				<li class="subject"><span class="bul bul_yellow">${vo.gubun}</span>
					&nbsp;&nbsp;&nbsp;${vo.title}</li>
				<li class="author">[투어모아]</li>
				<li class="dt">${vo.rdate}</li>
				<li class="click">조회수 ${vo.hit}</li>
			</ul>
		</div>
		<div class="viewContent nowrap">

			${vo.content}
			<!-- 목록 -->
			<div class="btnarea">
				<button id="btn_list" class="btnGray" title="목록보기"
					onclick="document.location.href='/customer/noticeList.do?pageIndex=1&amp;searchCnd=&amp;searchWrd=&amp;searchNoticeCd=&amp;'">목록보기</button>
			</div>
		</div>
	</div>
</section>
