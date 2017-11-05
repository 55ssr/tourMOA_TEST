<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/css/etc.css" />
<link rel="stylesheet" href="/css/jquery-ui.css" />

<style>
.ui-datepicker {
	width: 100%;
	height: 100%;
	padding-left: 0;
	padding-right: 0;
	border: 0;
	text-align: center;
}

.ui-datepicker .ui-datepicker-title {
	width: 100%;
	height: 30px;
	padding: 0 0;
}

.ui-datepicker .ui-datepicker-prev,.ui-datepicker .ui-datepicker-next {
	display: none;
}

.ui-datepicker-calendar {
	display: none;
}

.ui-datepicker .ui-datepicker-buttonpane {
	display: none;
}

.ui-datepicker select.ui-datepicker-month {
	width: 55px;
	font-family: 'Nanum Gothic', 나눔고딕, '맑은 고딕', Dotum, 돋움, Gulim, 굴림,
		verdana, HelveticaNeue, Apple-Gothic, sans-serif;
	font-size: 18px;
	font-stretch: normal;
	font-style: normal;
	font-variant: normal;
	font-weight: 600;
}

.ui-datepicker select.ui-datepicker-year {
	width: 80px;
	font-family: 'Nanum Gothic', 나눔고딕, '맑은 고딕', Dotum, 돋움, Gulim, 굴림,
		verdana, HelveticaNeue, Apple-Gothic, sans-serif;
	font-size: 18px;
	font-stretch: normal;
	font-style: normal;
	font-variant: normal;
	font-weight: 600;
}

.ui-widget select option {
/* 	font-family: Trebuchet MS, Tahoma, Verdana, Arial, sans-serif; */
/* 	font-size: 1em; */
    font-family: 'Nanum Gothic', '나눔고딕', '맑은 고딕', Dotum, '돋움', Gulim, '굴림', verdana, HelveticaNeue, Apple-Gothic, sans-serif;
	font-size: 14px;
    color: #666666;
}
</style>
<script>

/****************************************
 * datepicker setting defaults
 */
$.datepicker.setDefaults({
	changeMonth: true,
	changeYear: true,
	dateFormat: 'yy-mm',
	rangeSelect: true, 
	minDate: '-5y',
    maxDate: '+3y'
});

/****************************************
 * 달력 출력
 */
var year = 0;
var month = 0;
function getCalendar(selectYear, selectMonth) {
	if (selectMonth > 12) {
		year = parseInt(selectYear,10) + 1;
		month = 1;
	} else if (selectMonth < 1) {
		year = parseInt(selectMonth,10) - 1;
		month = 12;
	} else {
		year = selectYear;
		month = selectMonth;
	}
	
	$.ajax({
		url:"/common/paperCalendar.do"
		, type: "GET"
		, data:{
			  "year"			:	year
			, "month"			:	month
		}
		, success:function(html) {
			$("#calendar_body").remove();
			$("#calendar").append(jQuery(html).filter('#calendar_body'));
		}
		, error: function(html) {
			alert("calendar error");
		}
	});
	
}

/****************************************
 * 신문광고 팝업
 */
function fnPopNews(title,imgPath,adDt){
	var url="/common/paperView.do?imgPath="+imgPath+"&adDt="+adDt;

    // Fixes dual-screen position                         Most browsers      Firefox
    var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
    var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;

    width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

    var left = ((width / 2) - (1024 / 2)) + dualScreenLeft;
    var top = ((height / 2) - (768 / 2)) + dualScreenTop;
	
    var newWindow = window.open(url, 'fpn', 'scrollbars=yes, width=' + 200 + ', height=' + 200 + ', top=' + top + ', left=' + left);
// 	newWindow.document.title=title;
	newWindow.focus();
}

/****************************************
 * 년.월 datepicker 출력
 */
$(document).ready(function() {
	
	year = 2017;
	month = 9;
	
	$(".yyyymm").datepicker({
		defaultDate: new Date(2017,8,1),
        onChangeMonthYear: function(year, month){
            getCalendar(year,month);
        },
        autoclose: false
	});
	
	$("#calendar_prev").click(function() {
		if ((month-1) > 12) {
			year = parseInt(year,10) + 1;
			month = 1;
		} else if ((month-1) < 1) {
			year = parseInt(year,10) - 1;
			month = 12;
		} else {
			month = month - 1;
		}
		$(".yyyymm").datepicker().datepicker("setDate", new Date(year, month-1, 1));
// 		getCalendar(year, month - 1);
	});
	
	$("#calendar_next").click(function() {
		if ((month+1) > 12) {
			year = parseInt(year,10) + 1;
			month = 1;
		} else if ((month+1) < 1) {
			year = parseInt(year,10) - 1;
			month = 12;
		} else {
			month = month + 1;
		}
		$(".yyyymm").datepicker().datepicker("setDate", new Date(year, month-1, 1));
// 		getCalendar(year, month + 1);
	});
});

</script>

<div id="content">
<div id="wrap">
<section id="content">
	<!--[[ content Start ]]-->

	<div class="title title04"></div>

	<!-- 달력 //-->
	<div id="calendar">
		<div id="calendar_top">
			<span class="yyyymm" id="yyyymm"></span>
			<button type="button" id="calendar_prev" title="이전달" ></button>
			<button type="button" id="calendar_next" title="다음달" ></button>
		</div>
		<span class="thbg"></span>
		<table id="calendar_body">
			<caption>달력</caption>
			<tr>
				<th scope="col">일</th>
				<th scope="col">월</th>
				<th scope="col">화</th>
				<th scope="col">수</th>
				<th scope="col">목</th>
				<th scope="col">금</th>
				<th scope="col">토</th>
			</tr>
			<tr>
			<td>
				</td>
					<td>
				</td>
					<td>
				</td>
					<td>
				</td>
					<td>
				</td>
					<td>1</td>
					<td>2</td>
					</tr>
				<tr>
					<td>3</td>
					<td>4<span class="icon deepblue"> 
						<a href="javascript:fnPopNews('2017.9.4::부산일보','http://cimg.cdn.ybtour.co.kr/attachHome/MN/VB/201709/201709111033271810808003001041.jpg','2017-09-04');">
						부산일보</a>
					</span>
					</td>
					<td>5</td>
					<td>6<span class="icon deepblue"> 
						<a href="javascript:fnPopNews('2017.9.6::부산일보','http://cimg.cdn.ybtour.co.kr/attachHome/MN/VB/201709/201709111033530590808003001015.jpg','2017-09-06');">
						부산일보</a>
					</span>
					</td>
					<td>7</td>
					<td>8</td>
					<td>9</td>
					</tr>
				<tr>
					<td>10</td>
					<td>11<span class="icon deepblue"> 
						<a href="javascript:fnPopNews('2017.9.11::부산일보','http://cimg.cdn.ybtour.co.kr/attachHome/MN/VB/201709/201709111034228330808003001057.jpg','2017-09-11');">
						부산일보</a>
					</span>
					</td>
					<td>12</td>
					<td>13<span class="icon deepblue"> 
						<a href="javascript:fnPopNews('2017.9.13::부산일보','http://cimg.cdn.ybtour.co.kr/attachHome/MN/VB/201709/201709141110358450808003001030.jpg','2017-09-13');">
						부산일보</a>
					</span>
					</td>
					<td>14</td>
					<td>15</td>
					<td>16</td>
					</tr>
				<tr>
					<td>17</td>
					<td>18</td>
					<td>19</td>
					<td>20</td>
					<td>21</td>
					<td>22</td>
					<td>23</td>
					</tr>
				<tr>
					<td>24</td>
					<td>25</td>
					<td>26</td>
					<td>27</td>
					<td>28</td>
					<td>29</td>
					<td>30</tr>
		</table>
	</div>
	<!-- 달력 //-->
</section>

</div>
</div>