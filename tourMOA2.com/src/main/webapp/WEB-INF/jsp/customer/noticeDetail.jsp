<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script>
function fileDownloadCount() {

	$.ajax({
		url:"/customer/noticeFileDownloadCount.do"
		, dataType : 'JSON'
		, data : {
			  "noticeNo"					:	20000002821
		}
		, success : function(data)	{
			$("#downloadCnt").text(data);
		}
		, error: function(data) {
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

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">1. 유류할증료 적용 기간 : 2017.10.01~</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">2. 유류할증료 변경 항공사</span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>&nbsp;&nbsp; :
							델타항공, 유나이티드항공, 아메리칸항공, 하와이안항공, 에어캐나다, 일본항공, 중화항공, 필리핀항공, 타이항공,
							라오항공, 홍콩익스프레스, 홍콩항공, 에어마카오항공,&nbsp;중국국제항공, 산동항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶&nbsp;델타항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong><img alt=""
							height="274"
							src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/21/201709211338369210.png"
							width="648" /></strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 유나이티드항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="211"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/25/201709251707337770.png"
					width="747" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 아메리칸항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p dir="ltr"
				style="color: rgb(0, 0, 0); font-family: &amp; quot; Malgun Gothic&amp;quot; , &amp; quot; 맑은 고딕&amp;quot; , AppleGothic , sans-serif, &amp;quot; EmojiFont &amp;quot; , &amp; quot; Apple Color Emoji&amp;quot; , &amp; quot; Segoe UI Emoji&amp;quot; , NotoColorEmoji , &amp;quot; Segoe UI Symbol&amp;quot; , &amp; quot; Android Emoji&amp;quot; , EmojiSymbols; font-size: 10pt;">
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">1) 시행 일자 : 2017년 10월 1일부 (발권일 기준)</span></span>
			</p>

			<div dir="ltr"
				style="color: rgb(0, 0, 0); font-family: &amp; quot; Malgun Gothic&amp;quot; , &amp; quot; 맑은 고딕&amp;quot; , AppleGothic , sans-serif, &amp;quot; EmojiFont &amp;quot; , &amp; quot; Apple Color Emoji&amp;quot; , &amp; quot; Segoe UI Emoji&amp;quot; , NotoColorEmoji , &amp;quot; Segoe UI Symbol&amp;quot; , &amp; quot; Android Emoji&amp;quot; , EmojiSymbols; font-size: 10pt;">
				<p>
					<span style="font-family: 맑은 고딕;"><span
						style="font-size: 14px;">2) 부과 노선 : 한국 출발 국제선 요금</span></span>
				</p>

				<p>
					<span style="font-family: 맑은 고딕;"><span
						style="font-size: 14px;">3) 부과 금액 : KRW 6,000 (편도 기준)</span></span>
				</p>
			</div>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 하와이안항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><span style="font-size: 14px;">1)
							시행 일자 : 2017년 10월 1일부 (발권일 기준)</span></span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><span style="font-size: 14px;">2)
							유류 할증료 : USD 5.00 (편도 기준)</span></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 에어캐나다항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-size: 14px;"><span
					style="font-family: 맑은 고딕;">1) 적용 기간 : <font
						style="background-color: rgb(252, 214, 254);">2017년 10월
							(발권일 기준)</font><br /> <br /> - 밴쿠버 : <u><font
							style="background-color: rgb(252, 214, 254);">편도&nbsp;</font><font
							style="background-color: rgb(252, 214, 254);">KRW7,200</font><font
							style="background-color: rgb(252, 214, 254);"> / 왕복&nbsp;</font></u><font
						color="#000000" style="background-color: rgb(252, 214, 254);"><u>KRW14,400</u></font></span></span>
			</p>

			<p>
				<span style="font-size: 14px;"><span
					style="font-family: 맑은 고딕;">- 토론토&nbsp;: <u><font
							style="background-color: rgb(252, 214, 254);">편도&nbsp;</font><font
							style="background-color: rgb(252, 214, 254);">KRW8,400</font><font
							style="background-color: rgb(252, 214, 254);"> / 왕복 </font></u><font
						color="#000000" style="background-color: rgb(252, 214, 254);"><u>KRW16,800</u></font></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 일본항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="458"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/21/201709211339111270.png"
					width="1012" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶&nbsp;중화항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="364"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/21/201709211345172330.png"
					width="808" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 필리핀항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong><img alt=""
							height="276"
							src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/22/201709221740330710.png"
							width="522" /></strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 타이항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><span
						style="color: rgb(102, 102, 102);">(1) 기간 : 2017년 10월 1일 ~
							2017년 10월 31일</span><br
						style="color: rgb(102, 102, 102); font-family: 나눔고딕, nanumgothic, NG, 돋움, dotum;" />
						<span style="color: rgb(102, 102, 102);">(2) 해당 사항</span><br
						style="color: rgb(102, 102, 102); font-family: 나눔고딕, nanumgothic, NG, 돋움, dotum;" />
						<span style="color: rgb(102, 102, 102);">ICN-TPE v.v PER
							SECTOR / USD 2&nbsp;( 기존 USD 0)</span><br
						style="color: rgb(102, 102, 102); font-family: 나눔고딕, nanumgothic, NG, 돋움, dotum;" />
						<span style="color: rgb(102, 102, 102);">ICN-HKG v.v PER
							SECTOR / USD 2&nbsp;(기존 USD 0)</span><br
						style="color: rgb(102, 102, 102); font-family: 나눔고딕, nanumgothic, NG, 돋움, dotum;" />
						<span style="color: rgb(102, 102, 102);">ICN-BKK v.v PER
							SECTOR / USD 2&nbsp;(기존 USD 0)</span><br
						style="color: rgb(102, 102, 102); font-family: 나눔고딕, nanumgothic, NG, 돋움, dotum;" />
						<span style="color: rgb(102, 102, 102);">PUS-BKK v.v PER
							SECTOR / USD 2&nbsp;(기존 USD 0)</span></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 라오항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="245"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/21/201709211805417940.png"
					width="427" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 홍콩익스프레스</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="274"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/22/201709221734573270.png"
					width="650" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 홍콩항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="149"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/22/201709221737085510.png"
					width="401" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 에어마카오항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">1.&nbsp;&nbsp;&nbsp; 유류할증료 (출발지 기준
						편도 운임 기준)</span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">* 인천-마카오 (변경 전 : USD 0 // 변경 후 :
						USD 2)</span></span>
			</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">* 마카오-인천 (변경 전 : USD 7.5 // 변경 후 :
						USD 7.5)<br /> &nbsp;&nbsp;
				</span><br /> <span style="font-size: 14px;"><span
						style="font-size: 14px;">2.&nbsp;&nbsp;&nbsp; 시행일 : 2017년
							10월 01일 (발권일 기준)</span></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 중국국제항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><img alt="" height="189"
					src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/22/201709220924336250.png"
					width="432" /></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 산동항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong><img alt=""
							height="271"
							src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/22/201709220946273070.png"
							width="534" /></strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;">=====================================================================================</span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong>▶ 중국동방항공</strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>
				<span style="font-family: 맑은 고딕;"><span
					style="font-size: 14px;"><strong><img alt=""
							height="754"
							src="https://cimgcdn.ybtour.co.kr/attachHome/img/webImg/2017/9/28/201709281406352540.jpg"
							width="665" /></strong></span></span>
			</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>
		</div>

	</div>
	<!--[[ board contents End ]]-->

	<!-- 목록 -->
	<div class="btnarea">
		<button id="btn_list" class="btnGray" title="목록보기"
			onclick="document.location.href='/customer/noticeList.do?pageIndex=1&amp;searchCnd=&amp;searchWrd=&amp;searchNoticeCd=&amp;'">목록보기</button> 
	</div>
</section>
</div>