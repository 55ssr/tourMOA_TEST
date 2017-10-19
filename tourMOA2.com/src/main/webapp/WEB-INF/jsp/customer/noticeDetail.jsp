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
<section id="content">
	<!--[[ content Start ]] -->

	<div class="tit notice_tit" title="공지사항"></div>


	<div class="board_view">
		<!--[[ board contents Start ]]-->
		<div class="viewListBox">
			<ul class="viewList_tit">
				<li class="subject"><span class="bul bul_yellow">상시공지</span>
					&nbsp;&nbsp;&nbsp;[해외항공][2017년 10월 유류할증료 변경 안내-외국계항공사]</li>
				<li class="author">[투어모아]</li>
				<li class="dt">2017-10-12</li>
				<li class="click">조회수 1</li>
			</ul>
		</div>
		<div class="viewContent nowrap">
			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">※ 항공사별 항공편에 대해 2017년 10월 이후 여객
						유류할증료(Fuel Surcharge), 항공 운임이 다음과 같이 조정 될 예정입니다.</span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="color: rgb(0, 0, 255);"><strong><span
							style="font-size: 14px;">&nbsp;&nbsp; (10월 1일부터는&nbsp;변경된
								금액으로&nbsp;발권 진행하오니 9월 29일(금) 17:00시까지 결제 완료해주시기 바랍니다)</span></strong></span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="color: rgb(0, 0, 255);"><strong>&nbsp;&nbsp;<span
							style="font-size: 14px;"> (9월 29일 17:00시 이후 결제건부터는 인상된
								유류할증료로 결제 진행 됩니다)</span></strong></span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="color: rgb(0, 0, 255);"><strong><span
							style="font-size: 14px;">&nbsp;&nbsp; (단, 델타항공은 9월 29일부터
								인상되므로, 9월 28일(목) 17:00시까지 결제 완료 해주시기 바랍니다)</span></strong></span></span>
			</p>
			<!-- 목록 -->
		<div class="btnarea">
			<button id="btn_list" class="btnGray" title="목록보기"
				onclick="document.location.href='/customer/noticeList.do?pageIndex=1&amp;searchCnd=&amp;searchWrd=&amp;searchNoticeCd=&amp;'">목록보기</button>
		</div>
		</div>
</section>
</div>