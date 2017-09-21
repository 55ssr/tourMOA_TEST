<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	
	
	//소비자중심경영
	
    
    //서비스안내
     $('.lnb05').addClass('lnb05 on'); $("ul.sub_5").css("display","block");        $('.sub05_01').addClass('sub05_01 on'); $('#one').show();
}

$( document ).ready(function() {
	fnMenuSelect();
	$('#lnb').mouseleave(function(){
        setTimeout(function() {
        	$("#one > li").removeClass('on'); // 1depth 초기화
        	$("ul.sub").css("display","none"); // 2depth 사라짐
        	$("ul.sub > li").removeClass('on'); // 2depth 초기화
            fnMenuSelect();
        }, 3000);
    });
});

function loginConfirm(){	
	
			document.location.href='/customer/complaintWrite.do';
		 
}
</script>

<section id="content"><!--[[ content Start ]]-->
        <div class="tit payment_tit" title="결제방법안내"><span class="tit_txt payment_sub">결제를 쉽고 빠르게 도와드립니다.</span></div>
        <div class="pay_info_body">
        <table class="cat_area"><!--[[ tab Start ]]-->
            <caption>결제방법탭</caption>
                <tbody>
		        <tr>
		            <th scope="col" class="on"><a href="#wrap">ARS결제</a></th>
			        <th scope="col"><a href="#wrap">무통장입금</a></th>
			        <th scope="col" class="last"><a href="#wrap">신용카드결제</a></th>
		        </tr>
                </tbody>
        </table>

        <div id="pay_info_1" class="pay_info"><!--[[ ARS pay Start ]]-->
            <p class="subTit">ARS 결제</p>
            <ul class="step_list">
             	<li>
             		<span class="num">1</span>
             		<p>여행상품 상담 및 계약<br>또는 WEB 예약 완료</p>
             	</li>
             	<li>
             		<span class="num">2</span>
             		<p>ARS 결제 관련<br />안내 문자 전송</p>
             	</li>
             	<li>
             		<span class="num">3</span>
             		<p>수신받은 번호로 전화를 걸어<br />음성 안내에 따라 입력</p>
             	</li>
             	<li>
             		<span class="num">4</span>
             		<p class="line01">ARS 결제 완료</p>
             	</li>
             </ul>
             <div class="today_sel_pay_info">
             	<div class="pay_sel01 "> <!-- 선택될시 on 을 붙여줍니다 -->
             		<p class="pay_method_tit">LG U+ (1644-6922)</p>
             		<p class="parTitB">ARS 결제 순서</p>
		             <div class="pay_proc">
		                 <dl>
		                     <dt>1</dt><dd>1644-6922로 전화를 걸어 음성 안내에 따라 입력</dd>
		                     <dt>2</dt><dd>예약번호를 입력한 후 # 버튼 입력</dd>
		                     <dt>3</dt><dd>카드번호를 입력한 후 # 버튼 입력</dd>
		                     <dt>4</dt><dd>카드 유효기간 4자리 입력 (유효기간이 2017년 01월까지인 경우 "1701" 입력)</dd>    
		                     <dt>5</dt><dd>카드 비밀번호 앞 2자리 입력</dd>                                                  
		                     <dt>6</dt><dd>주민등록번호 앞 6자리를 입력한 후 # 버튼 입력</dd>                                      
		                     <dt>7</dt><dd>결제 금액 입력한 후 # 버튼 입력</dd>                                                  
		                     <dt>8</dt><dd>결제 완료</dd>                                                               
		                     <dt>9</dt><dd>결제 완료 내역 및 승인 번호 문자 메시지로 전송</dd>                                   
		                 </dl>
		             </div>
             	</div>
             	<div class="pay_sel02 on">
             		<p class="pay_method_tit">이니시스 (1666-5190)</p>
             		<p class="parTitB">ARS 결제 순서</p>
		             <div class="pay_proc">
		                 <dl>
		                     <dt>1</dt><dd>1666-5190으로 전화를 걸어 음성 안내에 따라 입력</dd>
		                     <dt>2</dt><dd>(SMS 수신 받은 전화가 아닐 경우) 주문인증번호 입력</dd>                             
		                     <dt>3</dt><dd>신용카드번호 입력</dd>                             
		                     <dt>4</dt><dd>신용카드 유효기간 4자리 입력 (유효기간이 2017년 01월인 경우 "1701" 입력)</dd>                             
		                     <dt>5</dt><dd>주민등록번호 앞 6자리 입력 / 사업자등록번호 10자리 입력</dd>                             
		                     <dt>6</dt><dd>신용카드 비밀번호 앞 2자리 입력</dd>                             
		                     <dt>7</dt><dd>결제완료</dd>                             
		                     <dt>8</dt><dd>결제완료내역 문자메시지로 전송</dd>                             
		                 </dl>
		             </div>
             	</div>
             </div>  
                <div class="free_info_top">
		      		<p class="free_tit">무이자 할부 안내 (이니시스)</p>
		      		<p class="sub_txt">하단에 안내되는 무이자할부는 금일 기준입니다. 결제 시점에 무이자할부 내용이 달라질 수 있으니 재확인하시기 바랍니다.</p>
		      	</div>
		      	<table class="free_tbl_info">
               	<caption>노랑풍선 ARS/전자결재 (LG데이콤) 무이자 할부 안내 </caption>
               	<colgroup>
               		<col width="33.3%" /><col width="33.3%" /><col width="33.4%" />
               	</colgroup>
               	<thead>
               		<tr>	
               			<th>카드사</th>
               			<th colspan="2" class="bd_last">할부안내</th>
               		</tr>
               	</thead>
               	<tbody>
               	
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_06.jpg" alt="롯데카드"></td>
              			<td>2~6개월, 10개월 무이자할부</td>
              			<td class="bd_last"></td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_01.jpg" alt="신한카드"></td>
              			<td>2~6개월 무이자할부 </td>
              			<td class="bd_last"></td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_07.jpg" alt="하나은행"></td>
              			<td> 2~5개월 무이자할부</td>
              			<td class="bd_last">10개월(1,2회차 고객부담, 잔여할부수수료 면제/하나BC제외)</td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_05.jpg" alt="국민카드"></td>
              			<td>2~6개월 무이자할부</td>
              			<td class="bd_last"></td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_03.jpg" alt="삼성카드"></td>
              			<td>2~5개월 무이자할부</td>
              			<td class="bd_last">6개월 (1회차 고객부담, 잔여할부수수료 면제)<br>10개월(1,2회차 고객부담, 잔여할부수수료 면제)</td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_09.jpg" alt="비씨카드"></td>
              			<td>2~5개월 무이자할부</td>
              			<td class="bd_last"></td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_08.jpg" alt="농협"></td>
              			<td> 2~6개월 무이자할부</td>
              			<td class="bd_last"></td>
              		</tr>
               	<tr>
               		<td rowspan="1"><img src="/images/card/cardci_04.jpg" alt="현대카드"></td>
              			<td>2~5개월 무이자 할부</td>
              			<td class="bd_last"></td>
              		</tr>
               	</tbody> 
               	</table>
               	<div class="free_add_txts">
               		<strong>- 무이자 할부 기간 2017년 9월 1일 ~ 9월30일 </strong><br>
- 무이자건은 포인트/마일리지적립/할인서비스 등 다른혜택과 중복 적용되지 않습니다<br>
- 항공권 제외, 항공권은 항공페이지의 무이자할부를 참조하시기 바랍니다.<br>
- 결제창에 '무' 표시가 되어있어도 제외카드는 무이자할부가 적용되지 않습니다.<br>
- 본 행사 는 카드사 사정에 따라 변경 또는 중단될 수 있음 <br>
- 법인(기업)/체크/선불/기프트/은행계열카드(BC마크가 없는 NON BC카드 불가) 제외(ex>수협카드 등)<br> </div>                                            
            </div><!--[[ ARS pay End ]]-->

            <!--[[ CASH pay Start ]]-->
	        <div id="pay_info_2" class="pay_info">
	            <p class="subTit">무통장 입금</p>                                                                      
	            <ul class="step_list">
	          	<li>
	          		<span class="num">1</span>
	          		<p>여행상품<br>WEB 예약 완료</p>
	          	</li>
	          	<li>
	          		<span class="num">2</span>
	          		<p>입금 계좌 번호<br>안내 문자 전송</p>
	          	</li>
	          	<li>
	          		<span class="num">3</span>
	          		<p>안내된 계좌번호로<br>결제 금액 입금</p>
	          	</li>
	          	<li>
	          		<span class="num">4</span>
	          		<p class="line01">무통장 입금 결제 완료</p>
	          	</li>
	          </ul>                                                           
	            <span>상품 예약이 완료되면 담당자가 예약 현황을 확인 후, 고객님께 무통장 입금 결제를 진행하기 위한 안내 문자를 발송합니다.<br />
	            담당자가 보내준 입금 계좌 번호와 보내시는 분의 이름을 잘 확인하시고, 결제 금액을 입금합니다.<br />     
	            입금이 완료되면 담당자가 확인 후, 결제 완료 확인 문자를 발송해 드립니다.                               
	            </span>                                                                                                
	            <p class="parTitB" style="margin-top: 40px;">여행상품별 입금 계좌</p>         
	            <p class="tbl_tit">국민은행 | 예금주:(주)노랑풍선</p>        
	                <table class="tbl_horizontal_type">                                                                                            
	                    <caption>여행상품별 입금 계좌</caption>                                                        
	                    <tr>                                                                                           
	                        <th scope="col" colspan="2" class="txt_center">해외 패키지 상품</th>                             
	                        <th scope="col" colspan="2" class="txt_center">패키지 외 상품</th>                                           
	                    </tr>                                                                                          
	                    <tr>                                                                                           
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">유럽</span><span class="ac_number">796-01-0015-893</span></div></td>                                                                   
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">동남아</span><span class="ac_number">796-01-0015-907</span></div></td>                                                                   
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">자유여행</span><span class="ac_number">411401-01-120487</span></div></td>                                                                  
	                        <td class="bdr last"><div class="clearfix"><span class="ac_country">허니문</span><span class="ac_number">411401-01-187600</span></div></td>                                                     
	                    </tr>                                                                                          
	                    <tr>                                                                                           
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">필리핀/푸켓</span><span class="ac_number">411401-01-163718</span></div></td>                                                                  
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">중국</span><span class="ac_number">796-01-0015-915</span></div></td>                                                                   
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">골프</span><span class="ac_number">815601-04-038349</span></div></td>                                                                  
	                        <td class="bdr last"><div class="clearfix"><span class="ac_country">국내여행</span><span class="ac_number">796-01-0015-931</span></div></td>                                                      
	                    </tr>                                                                                          
	                    <tr>                                                                                           
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">일본</span><span class="ac_number">815601-04-014556</span></div></td>                                                                  
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">괌/사이판</span><span class="ac_number">796-01-0015-923</span></div></td>                                                                   
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">크루즈</span><span class="ac_number">815601-04-014543</span></div></td>                                                                  
	                        <td class="bdr last"><div class="clearfix"><span class="ac_country">항공권</span><span class="ac_number">411401-01-246134</span></div></td>                                                     
	                    </tr>                                                                                          
	                    <tr>                                                                                           
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">호주/뉴질랜드</span><span class="ac_number">796-01-0015-923</span></div></td>                                                                   
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">미주/특수</span><span class="ac_number">815601-04-014543</span></div></td>                                                                  
	                        <td class="bdr"><div class="clearfix"><span class="ac_country">성지순례</span><span class="ac_number">796-25-0004-586</span></div></td>                                                                   
	                        <td class="bdr last"><div class="clearfix"><span class="ac_country">기업단체</span><span class="ac_number">796-25-0004-586</span></div></td>                                                      
	                    </tr>                                                                                          
	                </table>                                                                                           
	            <p class="parTitB" style="margin-top: 50px;">문자메세지 발송의 예</p>                                                             
	            <span>무통장 입금 결제 전 후, 다음과 같은 안내 메시지가 고객님의 휴대폰으로 전송됩니다.</span>      
	            <ul class="sms02">                                                                                       
	                <li><img src="/images/customer/sms_ex02.png" alt="sms02"></li>                                                 
	            </ul>      
	      </div>
	      <!--[[ CASH pay End ]]-->

                <div id="pay_info_3" class="pay_info"><!--[[ CARD pay Start ]]-->
                    <ul class="free_tbl_tab">
	                 	<li class="on"><a href="#">여행상품 신용카드 결제/무이자 안내 </a></li>
	                 	<li><a href="#">항공권 신용카드 결제 /무이자 안내</a></li>
	                 </ul>
	                 <!-- start 무이자할부 추가 -->
	                 <div class="free_tab_cont" id="free_tab_card">
	                 	 <p class="subTit">신용카드 결제</p>
	                     <ul class="step_list">
	                     	<li>
	                     		<span class="num">1</span>
	                     		<p>여행상품<br />WEB 예약 완료</p>
	                     	</li>
	                     	<li>
	                     		<span class="num">2</span>
	                     		<p>예약확인 / 결제 메뉴에서<br />결제 가능여부 확인</p>
	                     	</li>
	                     	<li>
	                     		<span class="num">3</span>
	                     		<p>화면 내용에 따라 정보를<br />입력하여 결제 진행</p>
	                     	</li>
	                     	<li>
	                     		<span class="num">4</span>
	                     		<p class="line01">신용카드 결제 완료</p>
	                     	</li>
	                     </ul>
	                    <span>상품 예약이 완료되면 담당자가 확인 후, 최종 예약이 성립되면 [예약확인/결제] 페이지의 예약내역에 [결제하기]가 표시됩니다.<br />
	                    노랑풍선 웹사이트 회원이신 경우 회원 로그인을, 비회원이신 경우에는 이름과 예약번호를 입력하여 비회원 로그인을 하시면 [예약확인/결제] 페이지를 확인하실 수 있습니다.
	                    </span>
	                    <span>[결제하기]를 클릭한 후 표시되는 화면의 내용에 맞춰 결제 금액 등 결제 정보를 입력한 후,<br />
	                    [결제하기]를 클릭하면 결제하실 카드를 선택하는 창이 뜨고, 결제를 진행할 카드를 선택하면 각 카드사 별로<br />
	                    결제를 위한 창이 뜹니다. 카드번호를 입력하시고 공인인증서 인증을 받아 결제를 진행합니다.</span>
	                    <span>결제가 완료되면 예약확인/결제 페이지의 예약현황 항목이 [입금 대기중]에서 [입금 완료]로 변경됩니다.</span>
                    <p class="parTitB">신용카드 결제 순서</p>
                    <div class="pay_proc">
                        <dl>
                            <dt>1</dt><dd>예약확인/결제 화면 확인 (페이지 확인 하기)</dd>
                            <dt>2</dt><dd>결제 요청 화면</dd>
                            <dt>3</dt><dd>결제하기/완료</dd>
                        </dl>
                    </div>
                    <span style="margin-top: 20px;">앞 화면에서 선택한 각 카드샤 별 결제 진행 페이지가 표시됩니다.항목에 맞게 입력하신 후 결제를 진행하여 완료하시면 [예약확인/결제]페이지에서<br />
                    예약 현황이 [입금 완료]로 변경됩니다.</span>
                    <div class="free_info_top">
                 		<p class="free_tit">무이자 할부 안내 (이니시스)</p>
                 		<p class="sub_txt">하단에 안내되는 무이자할부는 금일 기준입니다. 결제 시점에 무이자할부 내용이 달라질 수 있으니 재확인하시기 바랍니다.</p>
                 	</div>
                    <input type="hidden" id="rdoSel" name="initform" value="CARD">
                 	<!-- start 무이자할부 추가 -->
	                 	<table class="free_tbl_info">
	                 	<caption>노랑풍선 ARS/전자결재 (LG데이콤) 무이자 할부 안내 </caption>
	                 	<colgroup>
	                 		<col width="33.3%" /><col width="33.3%" /><col width="33.4%" />
	                 	</colgroup>
	                 	<thead>
	                 		<tr>	
	                 			<th>카드사</th>
	                 			<th colspan="2" class="bd_last">할부안내</th>
	                 		</tr>
	                 	</thead>
	                 	<tbody>
	                 	
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_06.jpg" alt="롯데카드"></td>
                 			<td>2~6개월, 10개월 무이자할부</td>
                 			<td class="bd_last"></td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_01.jpg" alt="신한카드"></td>
                 			<td>2~6개월 무이자할부 </td>
                 			<td class="bd_last"></td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_07.jpg" alt="하나은행"></td>
                 			<td> 2~5개월 무이자할부</td>
                 			<td class="bd_last">10개월(1,2회차 고객부담, 잔여할부수수료 면제/하나BC제외)</td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_05.jpg" alt="국민카드"></td>
                 			<td>2~6개월 무이자할부</td>
                 			<td class="bd_last"></td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_03.jpg" alt="삼성카드"></td>
                 			<td>2~5개월 무이자할부</td>
                 			<td class="bd_last">6개월 (1회차 고객부담, 잔여할부수수료 면제)<br>10개월(1,2회차 고객부담, 잔여할부수수료 면제)</td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_09.jpg" alt="비씨카드"></td>
                 			<td>2~5개월 무이자할부</td>
                 			<td class="bd_last"></td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_08.jpg" alt="농협"></td>
                 			<td> 2~6개월 무이자할부</td>
                 			<td class="bd_last"></td>
                 		</tr>
	                 	<tr>
	                 		<td rowspan="1"><img src="/images/card/cardci_04.jpg" alt="현대카드"></td>
                 			<td>2~5개월 무이자 할부</td>
                 			<td class="bd_last"></td>
                 		</tr>
	                 	</tbody> 
	                 	</table>
	                 	<div class="free_add_txts">
	                 		<strong>- 무이자 할부 기간 2017년 9월 1일 ~ 9월30일 </strong><br>
- 무이자건은 포인트/마일리지적립/할인서비스 등 다른혜택과 중복 적용되지 않습니다<br>
- 항공권 제외, 항공권은 항공페이지의 무이자할부를 참조하시기 바랍니다.<br>
- 결제창에 '무' 표시가 되어있어도 제외카드는 무이자할부가 적용되지 않습니다.<br>
- 본 행사 는 카드사 사정에 따라 변경 또는 중단될 수 있음 <br>
- 법인(기업)/체크/선불/기프트/은행계열카드(BC마크가 없는 NON BC카드 불가) 제외(ex>수협카드 등)<br> </div>
	                 </div>
	                 <div class="free_tab_cont" id="free_tab_air">
	                 	<p class="subTit">항공권 카드 결제 방법 안내</p>
	                 	<ul class="step_list st01">
	                     	<li>
	                     		<span class="num">1</span>
	                     		<p>해외항공권<br />WEB 예약확정</p>
	                     	</li>
	                     	<li>
	                     		<span class="num">2</span>
	                     		<p>마이페이지 메뉴에서<br />‘해외항공권 예약내역’ 확인</p>
	                     	</li>
	                     	<li>
	                     		<span class="num">3</span>
	                     		<p>화면 내용에 따라 정보를<br />입력하여 결제 진행</p>
	                     	</li>
	                     	<li>
	                     		<span class="num">4</span>
	                     		<p class="line01">신용카드 결제 완료</p>
	                     	</li>
	                     </ul>
	                 	<div class="free_info_top">
	                 		<p class="free_tit">해외 항공권 카드 무이자 할부 안내 </p>
	                 		<div class="free_s_txt">
	                 			<input type="radio" id="free_radio01" name="free_radio" value="" checked="checked" onclick="fn_searchType('CARD')"/><label for="free_radio01">카드사</label> <!-- label for값과 input radio id값을 맞춰주세요 -->
	                 			<input type="radio" id="free_radio02" name="free_radio" value="" onclick="fn_searchType('AIR')"/><label for="free_radio02">항공사별</label> <!-- label for값과 input radio id값을 맞춰주세요 --> 
	                 			<select title="카드 항공사 선택" id="airSel"style="width:146px" onchange="fn_searchList(this.value)">
		                 			<option value="" >전체</option>
		                 			<option value="01" >국민카드</option>
		                 			<option value="04" >비씨카드</option>
		                 			<option value="11" >롯데카드</option>
		                 			<option value="13" >삼성카드</option>
		                 			<option value="14" >신한카드</option>
		                 			<option value="21" >하나은행</option>
		                 			<option value="26" >씨티은행</option>
		                 			<option value="31" >농협</option>
		                 			<option value="33" >현대카드</option>
		                 			<option value="34" >우리카드</option>
		                 			</select>
	                 			</div>	
	                 	</div>
	                 	<form id="airSearch" action="/customer/paymentArs.do"  method="post" >
	                 	<table class="free_tbl_info">
	                 	<caption>노랑풍선 항공권 무이자 할부 안내</caption>
	                 	<colgroup>
	                 		<col style="width:17%"><col style="width:22%"><col style="width:18%"><col style="width:17%"><col style="width:26%">
	                 	</colgroup>	                 	
	                 	<thead>
	                 		<tr>	
	                 			<th>카드사</th>
	                 			<th>기간</th>
	                 			<th>항공사</th>
	                 			<th colspan="2" class="bd_last">할부안내</th>
	                 		</tr>
	                 	</thead>
	                 	<tbody>
	                 	
                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_03.jpg" alt="삼성카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/올앳/선불/GIFT카드 제외 </td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_05.jpg" alt="국민카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">국민BC/농협/법인/체크/GIFT/선불 카드 제외</td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_01.jpg" alt="신한카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~6개월 무이자할부 </td>
	                 			<td class="bd_last">신한BC/법인/체크/선불/GIFT카드 제외</td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_09.jpg" alt="비씨카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외 <br> <br><font color="#FF0000"> 우리카드, SC제일은행, 하나카드, NH농협카드 <br> IBK기업은행, KB국민카드, DGB대구은행<br>BNK부산은행, BNK경남은행, 한국씨티은행<br>신한카드에서 발행된 BC개인 신용카드 </font></td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="3"><img src="/images/card/cardci_06.jpg" alt="롯데카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~6개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/GIFT카드 제외 </td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외 <br> <br><font color="#FF0000"> BC카드 온/오프라인 행사 혜택적용<br></td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>10개월 슬림할부</td>
	                 			<td class="bd_last">법인/GIFT카드 제외 <br> 1~2회차 할부 수수료 고객부담 </td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_04.jpg" alt="현대카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부 </td>
	                 			<td class="bd_last">법인/체크/GIFT/하이브리드/선불카드 제외<br>M포인트, X캐시백 적립 및 할인제외</td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="4"><img src="/images/card/cardci_02.jpg" alt="씨티은행"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불/BC카드 제외<br>포인트, 마일리지 미제공</td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>6개월 슬림할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외<br>1회차 할부 수수료 고객부담<br><font color="#FF0000">씨티BC/기업카드 제외, 포인트/마일리지 미제공</fron></td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>7~10개월 슬림할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외<br>1~2회차 할부 수수료 고객부담<br><font color="#FF0000">씨티BC/기업카드 제외, 포인트/마일리지 미제공</fron></td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>11~12개월 슬림할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외<br>1~3회차 할부 수수료 고객부담<br><font color="#FF0000">씨티BC/기업카드 제외, 포인트/마일리지 미제공</fron></td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="3"><img src="/images/card/cardci_07.jpg" alt="하나은행"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외 </td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>10개월 슬림할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외<br>1~2회차 할부 수수료 고객부담</td>
	                 		</tr>
	                 		<tr>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>15개월 슬림할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외<br>1~3회차 할부 수수료 고객부담</td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_08.jpg" alt="농협"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외</td>
	                 		</tr>
	                 		<tr>
	                 			<td rowspan="1"><img src="/images/card/cardci_12.jpg" alt="우리카드"></td>
	                 			<td class="period">2017/09/01~2017/09/30</td>
	                 			<td class="ft_list">
	                 				<ul class="ft_list">
	                 					<li>전 항공사</li>
	                 					</ul>
	                 			</td>
	                 			<td>2~5개월 무이자할부</td>
	                 			<td class="bd_last">법인/체크/GIFT/선불카드 제외 <br> <br><font color="#FF0000"> BC카드 온/오프라인 행사 혜택적용<br> </td>
	                 		</tr>
	                 		</tbody>
	                 	</table>
	                 	</form>	
	                 	<div class="free_add_txts">
	                 		<font color="#FF0000"><strong>※5만원 이상 결제시 이용 가능</strong> </font><br> 
<font color="#FF0000"><strong>※무이자 할부는 카드 승인일(발권일)을 기점으로 적용됩니다.</strong> </font><br> 
<font color="#FF0000"><strong>※무이자 할부 행사는 각 카드사 업종 기준으로 항공/여객 업종에 적용됩니다. 이와 관련하여 카드사에 사전 문의하시길 바랍니다.</strong> </font><br>
※무이자 할부 행사는 카드사와 항공사의 사정에 의해 공지 없이 변동될 수있으니,
   정확한 할부 정보 및 적용 가능 여부를 각 카드사로 재확인 하신 후 이용 바랍니다. <br>
※무이자 할부 이용시 마일리지 적립이 불가할 수 있습니다. <br>
※무이자 할부 이용시 카드사 포인트 적립 및 사용이 제한될 수있습니다.<br>
※일부 국외 항공사 홈페이지 결제시 해외매출로 반영되어 무이자 적용 불가합니다.<br>

<br>
※카드사별 연락처 안내 <br>
롯데카드 1588-8100 | 신한카드 1544-7000 | 비씨카드 1588-4000 | 현대카드 1577-6000  <br>
씨티카드 1566-1000 | 삼성카드 1588-8700 | 국민카드 1588-1688 | 우리카드 1588-9555 | 하나카드 1800-1111 <br></div>
	                 </div>
	                 <script>
	                 $(document).ready(function(){
	                 });
	                 $(function(){
	                	 //location href
	                	 var freeLocHref = location.href;  //?tab1=1&tab2=1
	                	 var freeLocHref2 = 0;; 
	                	 freeLocHref = freeLocHref.split("?tab1=")[1];
	                	 var freeLocHref1 = (freeLocHref != undefined) ? freeLocHref.substring(0,1) : 0;
	                	 if ((freeLocHref) && (freeLocHref1) && (freeLocHref.split("&tab2=")[1])){
	                	 	freeLocHref2 = freeLocHref.split("&tab2=")[1];
	                	 }
	                	 //tab click
	                	 $('.free_tbl_tab:not(".st01")>li>a').on('click', function(e){
	                		 e.preventDefault();
	                		 $('.free_tbl_tab:not(".st01")>li').removeClass('on');
	                		 $(this).parent().addClass('on');
	                		 var idx = $(this).parent().index();
	                		 $('.free_tab_cont:not(".st01")').hide();
	                		 $('.free_tab_cont:not(".st01")').eq(idx).show();
	                	 });
	                	 $('.cat_area th').eq(freeLocHref1).trigger('click');
                		 $('.free_tbl_tab:not(".st01")>li').eq(freeLocHref2).find('a').trigger('click');
	                 });
	                 //결제방법안내 클릭
                	 $(".pay_sel01, .pay_sel02").on("click", function(){
                		 var $pay_sel = $(".pay_sel01, .pay_sel02"); 
                		 $pay_sel.removeClass("on");
                		 $(this).addClass("on");
                	 });
	                 
	                 function fn_searchType(key){
	                	 $("#rdoSel").val(key);
	                	 $.ajax({
                	        url:"/customer/incSelectBoxPayment.do"
                	        ,data:{
                	        	"selectFlag" : key
                	        }
                	    	,success:function(html){
                	    		$("#airSel").html(html);
		              	    	fn_searchList("");
                	    	}
                	    	,error: function(html) {
                			}
                	    })
	                 }
                	 
	                 function fn_searchList(param){
	                	 $.ajax({
                	        url:"/customer/incPayment.do"
                	        ,data:{
                	        	"selectFlag" :  $("#rdoSel").val()
                	        	,"scheFlag" : param
                	        }
                	    	,success:function(html){
    							$("#airSearch").html(html);
                	    	}
                	    	,error: function(html) {
                			}
                	    })
	                 }
	                 </script>
                </div><!--[[ CARD pay End ]]-->


        </div>

    </section>