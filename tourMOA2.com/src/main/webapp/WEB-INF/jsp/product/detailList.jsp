<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/product/jquery.bxslider.js"></script>
<script src="/js/ui.js" type="text/javascript"></script>

 <script>
	function fnMenuSelect() {

	    
	}
	
	$( document ).ready(function() {
	    $('#gnbsub1').mouseleave(function(){
	        setTimeout(function() {
	            $("#one > li").removeClass('on'); // 1depth 초기화
	            fnMenuSelect();
	        }, 2000);
	    });
	});

/* 	function setAreaDtl(did) {
		var bSelect = false;
		$('#codeAreaDetail').val("");
		$('#codeAreaDetail option').hide();
		$('#codeAreaDetail option').each(function(idx, el){
			if($(el).data('pid') == did) {
				$(el).show();
				if($(el).data('did') == '76') {
					bSelect = true;
				}
			}
		});
//	 	console.log('val', bSelect);
		$('#codeAreaDetail').val( bSelect ? $('#codeAreaDetail option[data-did=76]').val() : $('#codeAreaDetail option:eq(0)').val() );
	}
	$(document).on('change', '#codeArea[data-dtl=Y]', function(e){
		setAreaDtl($(this).val());
		return false;
	});
	$( document ).ready(function() {
		$('#codeArea[data-dtl=Y]') && setAreaDtl('849');
	}); */

</script> 

<div id="content">
<div id="wrap"><!--[[ wrap Start ]]-->
	<header><!--[[ header Start ]]-->
	
		<nav id="gnbsub1" data-loc="">
            <ul id="one">
            	<li class="tit"><span><a href="/product/detailList.do"></a></span></li>
	            <li class="sub01"><a href="#">유럽</a></li>
	            <li class="sub02"><a href="#">동남아</a></li>
	            <li class="sub03"><a href="#">필리핀/푸켓</a></li>
	            <li class="sub04"><a href="#">중국</a></li>
	            <li class="sub05"><a href="#">홍콩/대만</a></li>
	            <li class="sub06"><a href="#">일본</a></li>
	            <li class="sub07"><a href="#">괌/사이판</a></li>
            </ul>
        </nav>
       </header>
       </div>
       <div id="region">
       		<label for="codeArea">선택된 지역</label>
	        <select name="product" id="codeArea" data-dtl="Y">
		        <option value="상품선택">상품선택</option>
		 		<option value="49">미서부</option>
				<option value="342">미동부</option>
				<option value="348">하와이</option>
				<option value="306">캐나다</option>
				<option value="3118">기타</option>
		  </select>
        <label for="codeAreaDetail">선택된 세부지역</label>
           <select name="product" id="codeAreaDetail" >
           	<option value="상품선택" style="display: none;">상품선택</option>
      		<option value="#" data-pid="49" data-did="235" style="display: block;">LA/라스베가스/샌프란시스코/샌디에고/옐로스톤/그랜드캐년/3대캐년</option>
 			<option value="#" data-pid="342" data-did="829"  style="display: block;">뉴욕/워싱턴/나이아가라/보스턴/시카고/필라델피아</option>
			<option value="#" data-pid="348" data-did="917" style="display: block;">오하우섬 일주</option>					    
			<option value="#" data-pid="306" data-did="7423"  style="display: block;">서부(시애틀/밴쿠버/로키/빅토리아)</option>
			<option value="#" data-pid="3118" data-did="7159" target="_self" style="display: block;">임직원 전용</option>
		</select>
  		 </div>
	</div>
	<section id="content">
	<div id="theme_block">
		<div id="haedline">
			<div id="title">&nbsp;[프리미엄][국내선 항공포함]_스페인/포르투갈 10일[KE]</div>
			<div id="pNum"><span>[상품번호</span><span class="num">EMP5043</span>]</div>
		</div>
		<div id="infoBox">
            <ul class="infoTxt">
                <li>
                    <span class="tit">상품가격</span>
                    <span class="txt price">2,490,000 원 ~ 3,590,000 원</span>
                    <div class="sns">                    	
						<span><a href="http://www.facebook.com" onclick="fnGoSns(this.href,'facebook',''); return false; "><img src="/images/product/detail/sns1.png" alt="페이스북 링크"></a></span>
						<span><a href="http://twitter.com/" onclick="fnGoSns(this.href,'twitter',''); return false; "><img src="/images/product/detail/sns2.png" alt="트위터 링크"></a></span>
                        <span><a href="#email" onclick="fnSendEmail(); return false;"><img src="/images/product/detail/mms.png" alt="상품 추천 메일보내기"></a></span>
                    	<span><a href="#clipboard" onclick="fnCopyToClipboard(); return false;"><img src="/images/product/detail/co.png" alt="링크 복사하기"></a></span>
                    </div>
                </li>
                <li><span class="tit">여행기간</span><span class="txt">8박10일</span></li>
                <li><span class="tit">간략일정</span><span class="txt">인천-바르셀로나(1)-지로나-몬세라트-바르셀로나(1)-바르셀로나(1)-그라나다-미하스-말라가(1)-론다-세비야(1)-리스본-까보다로까-파티마(1)-톨레도-마드리드(1)-세고비아-라그랑하-마드리드(1)-인천</span></li>
                <li><span class="tit">상품설명</span><span class="txt">왕복 직항으로 현지이동시 항공이동으로 불필요한 버스이동시간을 줄일수있는 THE편한 상품입니다.<br>
						스페인과 포르투칼 주요관광지를 즐길수있는 상품입니다.</span></li>
				</ul>
				
			<div class="infoPhoto">
				<ul class="slide_v1">
					<li><img src="/images/product/detail/de-s1.PNG" alt=""></li>
					<li><img src="/images/product/detail/de-s2.PNG" alt=""></li>
					<li><img src="/images/product/detail/de-s3.PNG" alt=""></li>
				</ul>
				</div>
			</div>
			<div class="departure_month slider">
			<div class="tab_month">
					<div class="w140" onclick="monthClick('2017','09')" id="div201709">
						2017.09</div>
					<div class="w140" onclick="monthClick('2017','10')" id="div201710">
						2017.10</div>
					<div class="w140" onclick="monthClick('2017','11')" id="div201711">
						2017.11</div>
					<div class="w140" onclick="monthClick('2017','12')" id="div201712">
						2017.12</div>
					<div class="w140" onclick="monthClick('2018','01')" id="div201801">
						2018.01</div>
					<div class="w140 month_on" onclick="monthClick('2018','02')" id="div201802">
						2018.02</div>
					<div class="w140" onclick="monthClick('2018','03')" id="div201803">
						2018.03</div>
				</div>
		</div>
			
			<div class="month_list">
				<table class="tbl_month">
					<caption>
						출발일 목록
					</caption>
					<tbody><tr>
			<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						<th class="sun">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th class="sat">토</th>
						</tr>
		<tr>
			<td>
					<span>1</span>
					</td>
			<td>
					<span>2</span>
					</td>
			<td>
					<span>3</span>
					</td>
			<td>
					<span>4</span>
					</td>
			<td>
					<span>5</span>
					</td>
			<td>
					<span>6</span>
					</td>
			<td>
					<span>7</span>
					</td>
			<td>
					<span>8</span>
					</td>
			<td>
					<span>9</span>
					</td>
			<td>
					<span>10</span>
					</td>
			<td>
					<span>11</span>
					</td>
			<td>
					<span>12</span>
					</td>
			<td>
					<span>13</span>
					</td>
			<td>
					<span>14</span>
					</td>
			<td>
					<span>15</span>
					</td>
			<td>
					<span>16</span>
					</td>
			<td>
					<span>17</span>
					</td>
			<td>
					<span>18</span>
					</td>
			<td>
					<span>19</span>
					</td>
			<td>
					<span>20</span>
					</td>
			<td>
					<span>21</span>
					</td>
			<td>
					<span>22</span>
					</td>
			<td>
					<span>23</span>
					</td>
			<td>
					<span>24</span>
					</td>
			<td>
					<span>25</span>
					</td>
			<td>
					<span>26</span>
					</td>
			<td>
					<span>27</span>
					</td>
			<td>
					<span>28</span>
					</td>
			<td>
					<span>29</span>
					</td>
			<td>
					<span>30</span>
					</td>
			</tr>
	</tbody>
				</table>
			</div>
			<div class="departure_block_btn">
			<dl class="departure_date">
				<dt>출발일</dt>
				<dd id="dayTime" style="display:none"><button type="button" class="btn_date_del" id="dateDtlBtn" onclick="fnDayDelete()"><span>삭제</span></button></dd>
			</dl>
			
			<ul class="pdt_condition">
				<li><img src="/images/product/detail/icon1.png" alt=" "><span class="possible">예약가능</span></li>
				<li><img src="/images/product/detail/icon2.png" alt=" "><span class="standby">예약대기</span></li>
				<li><img src="/images/product/detail/icon3.png" alt=" "><span class="pdtclose">예약마감</span></li>
				<li>
				<button type="button" class="btn_condition" onclick="fnRsrvfilter()">예약가능 상품보기</button>
				</li>
			</ul>			
		</div>
		<div class="departure_list">
		<table class="tablesorter tablesorter-default" role="grid" aria-labelledby="theCaption">
			<caption>
				행사 목록
			</caption>
			<colgroup>
			<col style="width:70px">
			<col style="width:150px">
			<col style="width:120px">
			<col style="width:400px">
			<col style="width:120px">
			<col style="width:120px">
			<col style="width:120px">
			</colgroup>
			<thead>
			<tr role="row" class="tablesorter-headerRow">
				<th class="sorter-false tablesorter-header tablesorter-headerUnSorted" data-column="0" tabindex="0" scope="col" role="columnheader" aria-disabled="true" unselectable="on" aria-sort="none" style="user-select: none;"><div class="tablesorter-header-inner"><button type="button" class="btn_compare" "="" id="btnCompare" role-url="/product/compareUnit.do">비교</button></div></th><th data-column="1" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="출/도착 시간: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">출/도착 시간</div></th>
				<th data-column="2" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="항공: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">항공</div></th>
				<th data-column="3" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="상품명: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">상품명</div></th>
				<th data-column="4" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="여행기간: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">여행기간</div></th>
				<th data-column="5" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="상품가격: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">상품가격</div></th>
				<th data-column="6" class="tablesorter-header tablesorter-headerUnSorted" tabindex="0" scope="col" role="columnheader" aria-disabled="false" unselectable="on" aria-sort="none" aria-label="예약상태: No sort applied, activate to apply an ascending sort" style="user-select: none;"><div class="tablesorter-header-inner">예약상태</div></th>
			</tr>
			</thead>
			<tbody aria-live="polite" aria-relevant="all">
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5043-180504KE00" title="체크"></td>
				<td><span class="depart_time">05/04 (금) 13:00</span>
				<span class="arrive_time">05/13 (일) 17:00</span>
				</td>
				<td>
					<img src="/images/product/detail/KE.png" alt="대한항공"><br>대한항공</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					<!-- <span class="ico_limited ">리미티드세일</span> -->
					</span>
				<a href="#">[프리미엄][대한항공직항][국내선 항공포함]_스페인/포르투갈 10일[KE]</a>
				</td>
				<td class="pdt_date">8박10일</td>
				<td class="pdt_price">2,790,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 2,790,000</li>
							<li>유아: 500,000</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_standby">
                                 	예약대기</span>										
                              <span class="condition_hurryup">마감임박</span>
                              </td>
			</tr>
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5043-180511KE00" title="체크"></td>
				<td><span class="depart_time">05/11 (금) 13:00</span>
				<span class="arrive_time">05/20 (일) 17:00</span>
				</td>
				<td>
					<img src="/images/product/detail/KE.png" alt="대한항공"><br>대한항공</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					<!-- <span class="ico_limited ">리미티드세일</span> -->
					</span>
				<a href="#">[프리미엄][대한항공직항][국내선 항공포함]_스페인/포르투갈 10일[KE]</a>
				</td>
				<td class="pdt_date">8박10일</td>
				<td class="pdt_price">2,790,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 2,790,000</li>
							<li>유아: 500,000</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_booking">
                                 	예약가능</span>										
                              <span class="condition_other">별도문의</span>
                              </td>
			</tr>
			<tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5043-180525KE00" title="체크"></td>
				<td><span class="depart_time">05/25 (금) 13:00</span>
				<span class="arrive_time">06/03 (일) 17:00</span>
				</td>
				<td>
					<img src="/images/product/detail/tway.png" alt="티웨이"><br>티웨이항공</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_pink">선착순</span>
					</span>
				<a href="#">[프리미엄][국내선 항공포함]_스페인/포르투갈 10일[KE]</a>
				</td>
				<td class="pdt_date">7박9일</td>
				<td class="pdt_price">2,490,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 2,490,000</li>
							<li>유아: 400,000</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_booking">예약가능</span>										
                    <span class="condition_fix">출발확정</span>
                   </td>
        		</tr>
                <tr role="row">
				<td><input type="checkbox" name="chk01" id="chk01" value="EMP5023-171010AF00" title="체크"></td>
				<td><span class="depart_time">10/10 (화) 09:30</span>
				<span class="arrive_time">10/19 (목) 07:20</span>
				</td>
				<td>
					<img src="/images/product/detail/af.png" alt="에어프랑스"><br>에어프랑스</td>
				<td class="tit_pdt">
				<span class="ico_block">
					<span class="ico_darkgreen">특가</span>
					</span>
				<a href="#">[10月/놓치면마감] 스페인+포르투칼_2대맛기행 완벽정복 10일 AF</a>
				</td>
				<td class="pdt_date">8박10일</td>
				<td class="pdt_price">1,590,000<a href="#none" class="mini_price">&nbsp;<img src="/images/product/detail/tool.png" alt="요금안내">
						<ul class="child_price">
							<li>아동: 1,590,000</li>
							<li>유아: 0</li>
						</ul>
					</a>
				</td>
				<td>
				<span class="condition_booking">
                                 	예약가능</span>										
                              <span class="condition_fix">출발확정</span>
                              </td>
			</tr>
				</tbody>				

			</table>

		</div>
			<div class="departure_other">
				<a href="#">해당 지역 상품 리스트로 이동</a>
			</div>
			<div class="bt_info">
					본 화면의 모든 상품가격은 항공운임(항공권) 등이 포함된 총 금액이며, 유류할증료는 유가와 환율에 따라 변동될 수 있습니다.
			</div>
         </div>
         </section>
         
	
	
