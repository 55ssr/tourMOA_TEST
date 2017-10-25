<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
    <script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	 $('.lnb02').addClass('lnb02 on'); $("ul.sub_2").css("display","block");       $('.sub02_01').addClass('sub02_01 on'); $('#one').show();
	
	//고객의소리
	
	
	//소비자중심경영
	
    
    //서비스안내
    
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
        <div class="tit faq_tit" title="자주하는질문"><span class="tit_txt faq_sub">고객님이 많이 문의하시는 질문 및 답변을 모아두었습니다.</span></div>        
        <form name="searchForm" id="searchForm" action="/customer/faqList.do" method="post" onsubmit="return frmSubmit();">
			<input type="hidden" name="searchCateCd" id="searchCateCd" value="" />	
	        <div class="board_search"><!--[[ Search Form Start ]]-->	            
                <span class="select_wrap">
	                <i>
		                <select name="searchCnd" id="searchCnd" title="검색조건">
		                    <option value="TITLE" selected="selected">제목</option>
			                <option value="CONTENTS" >내용</option>
		                </select>
	                </i>
                </span>
	            <input type="text" name="searchWrd" id="searchWrd" title="검색어" value="" >
	            <button id="btn_search" title="검색" >검색</button>	            
	        </div><!--[[ Search Form End ]]-->
		</form>
        <table class="cat_area"><!--[[ tab Start ]]-->
            <caption>FAQ 카테고리</caption>
            <tbody>
               <tr>
                   <th scope="col" class="on" ><a href="/customer/faqList.do?searchCateCd=&amp;searchCnd=&amp;searchWrd=" >전체</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=PRS&amp;searchCnd=&amp;searchWrd=" >상품예약</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=PPT&amp;searchCnd=&amp;searchWrd=" >상품결제</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=TPD&amp;searchCnd=&amp;searchWrd=" >여행상품</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=ATK&amp;searchCnd=&amp;searchWrd=" >해외항공</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=DMA&amp;searchCnd=&amp;searchWrd=" >국내항공</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=CRS&amp;searchCnd=&amp;searchWrd=" >크루즈</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=TGC&amp;searchCnd=&amp;searchWrd=" >여행상품권</a></th>
                   <th scope="col"  ><a href="/customer/faqList.do?searchCateCd=WEB&amp;searchCnd=&amp;searchWrd=" >홈페이지</a></th>
                   <th scope="col"   class="last"><a href="/customer/faqList.do?searchCateCd=ETC&amp;searchCnd=&amp;searchWrd=" >기타</a></th>
               </tr>
            </tbody>
        </table><!--[[ tab End ]]-->

        <div class="board_area"><!--[[ faq board area Start ]]-->
            <div class="faq_area">            
            	<div class="faq_list">
                    <ul class="que" id="que_20000000221">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">항공 마일리지도 적립되나요?</li>
                    </ul>
	                <ul class="ans">
	                    <li>
	                        <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">	                             	 
									<br />문의하신 항공사 마일리지 적립 관련하여 안내해 드리겠습니다.
									<br />
									<br />1. 항공편을 이용하시는 분이 탑승 이전부터 해당 항공사  회원으로 가입되어 있어야 합니다.
									<br />2. 항공편 탑승 수속시 해당 항공사 데스크에 마일리지 적립 요청을 하셔야 하며 자동 적립 되지 않습니다.
									<br />3. 만약 탑승시 적립을 못하셨다면 이용한 항공편에 해당하는 항공권(E-ticket)과 보딩 패스(탑승권)을 보관하고 있어야 하며
									<br />   항공편 이용 후 1년 이내에 적립 가능합니다.
									<br />
									<br />만약 해당 항공사 회원이 아니시라면 회원가입을 하셔야 합니다.
									<br />보다 자세한 사항은 해당 항공사에 문의해주세요. 
									<div class="grade_box">
	                                    <input type="radio" name="faq_grade1" id="faq_grade1_1" value="5" class="grade_radio grade_1"><label for="faq_grade1_1"><span class="g1_lbl"></span></label>
	                                    <input type="radio" name="faq_grade1" id="faq_grade1_2" value="4" class="grade_radio grade_2"><label for="faq_grade1_2"><span class="g2_lbl"></span></label>
	                                    <input type="radio" name="faq_grade1" id="faq_grade1_3" value="3" class="grade_radio grade_3"><label for="faq_grade1_3"><span class="g3_lbl"></span></label>
	                                    <input type="radio" name="faq_grade1" id="faq_grade1_4" value="2" class="grade_radio grade_4"><label for="faq_grade1_4"><span class="g4_lbl"></span></label>
	                                    <input type="radio" name="faq_grade1" id="faq_grade1_5" value="1" class="grade_radio grade_5"><label for="faq_grade1_5"><span class="g5_lbl"></span></label>
	                                    <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000221','1')">별점주기</button>
                                 	</div>
                             	</li>
                         	</ul>	                            
	                   	</li>
	                </ul>
	            </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000220">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">한 명은 마일리지 결제, 한 명은 현금 결제가 가능한가요? </li>
                    </ul>
		            <ul class="ans">
		                <li>
		                    <ul>
		                        <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
		                        <li class="aq_ans">네, 가능합니다. 자세한 사항은 해당 상품 담당자에게 문의 주시기 바랍니다. <br /> 
		                        	<div class="grade_box">
                                        <input type="radio" name="faq_grade2" id="faq_grade2_1" value="5" class="grade_radio grade_1"><label for="faq_grade2_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade2" id="faq_grade2_2" value="4" class="grade_radio grade_2"><label for="faq_grade2_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade2" id="faq_grade2_3" value="3" class="grade_radio grade_3"><label for="faq_grade2_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade2" id="faq_grade2_4" value="2" class="grade_radio grade_4"><label for="faq_grade2_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade2" id="faq_grade2_5" value="1" class="grade_radio grade_5"><label for="faq_grade2_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000220','2')">별점주기</button>
	                            	</div>
	                        	</li>
                        	</ul>                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000217">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">투어모아 롯데카드 발급가능한가요?</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">네, 발급가능합니다.<br />자세한 사항은 투어모아홈페이지 > 이벤트에서 확인가능합니다.
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade3" id="faq_grade3_1" value="5" class="grade_radio grade_1"><label for="faq_grade3_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade3" id="faq_grade3_2" value="4" class="grade_radio grade_2"><label for="faq_grade3_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade3" id="faq_grade3_3" value="3" class="grade_radio grade_3"><label for="faq_grade3_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade3" id="faq_grade3_4" value="2" class="grade_radio grade_4"><label for="faq_grade3_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade3" id="faq_grade3_5" value="1" class="grade_radio grade_5"><label for="faq_grade3_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000217','3')">별점주기</button>
                                    </div>
                                </li>
                            </ul>	                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000216">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">비회원으로 예약했는데 선불카드를 받을 수 없나요?</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">롯데면세점 선불카드 교환권은 상품결제를 완납한 투어모아 웹회원에게 제공되는 혜택입니다.<br /><br />비회원으로 예약하신 경우, 회원가입후 담당자에게 예약내역 연동처리를 요청하시면 ′My 투어모아′에서 교환권 출력하신뒤 실물로 교환하실 수 있습니다.<br /><br />자세한 사항은 투어모아홈페이지 > 이벤트에서 확인가능합니다.<br />(만 18세 미만 제외 / 외부 제휴사이트를 통한 구매제외)
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade4" id="faq_grade4_1" value="5" class="grade_radio grade_1"><label for="faq_grade4_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade4" id="faq_grade4_2" value="4" class="grade_radio grade_2"><label for="faq_grade4_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade4" id="faq_grade4_3" value="3" class="grade_radio grade_3"><label for="faq_grade4_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade4" id="faq_grade4_4" value="2" class="grade_radio grade_4"><label for="faq_grade4_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade4" id="faq_grade4_5" value="1" class="grade_radio grade_5"><label for="faq_grade4_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000216','4')">별점주기</button>
                                    </div>
                                </li>
                            </ul>                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000215">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">롯데면세점 선불카드 교환권은 어떻게 사용하나요?</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">′My 투어모아′에서 ′선불카드 교환권′ 출력이 가능합니다. (완납한 웹회원 대상)<br /><br />자세한 사항은 투어모아홈페이지 > 이벤트에서 확인가능합니다.
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade5" id="faq_grade5_1" value="5" class="grade_radio grade_1"><label for="faq_grade5_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade5" id="faq_grade5_2" value="4" class="grade_radio grade_2"><label for="faq_grade5_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade5" id="faq_grade5_3" value="3" class="grade_radio grade_3"><label for="faq_grade5_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade5" id="faq_grade5_4" value="2" class="grade_radio grade_4"><label for="faq_grade5_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade5" id="faq_grade5_5" value="1" class="grade_radio grade_5"><label for="faq_grade5_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000215','5')">별점주기</button>
                                    </div>
                                </li>
                            </ul>	                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000214">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">롯데인터넷면세점 적립금은 어떻게 사용하나요?</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">′My 투어모아′에서 ′적립금 교환번호′ 확인이 가능합니다. (완납한 웹회원 대상)<br /><br />확인하신 적립금 교환번호를 롯데인터넷면세점 이벤트 페이지에 입력 하시면 <br />적립금 교환받으셔서 사용하실 수 있습니다.<br /><br />자세한 사항은 투어모아홈페이지 > 이벤트에서 확인가능합니다.<br />
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade6" id="faq_grade6_1" value="5" class="grade_radio grade_1"><label for="faq_grade6_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade6" id="faq_grade6_2" value="4" class="grade_radio grade_2"><label for="faq_grade6_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade6" id="faq_grade6_3" value="3" class="grade_radio grade_3"><label for="faq_grade6_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade6" id="faq_grade6_4" value="2" class="grade_radio grade_4"><label for="faq_grade6_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade6" id="faq_grade6_5" value="1" class="grade_radio grade_5"><label for="faq_grade6_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000214','6')">별점주기</button>
                                    </div>
                                </li>
                            </ul>	                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000213">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">30만원 이상 결제시 공인인증서 인증이 필수인가요?</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">2005년 11월 1일부터 금감원의 전자상거래 안정성 강화 정책에 따라 30만원 이상의 모든 신용카드 결제에 공인인증서 사용이 의무화 되었습니다. <br />(단, 30만원 이하 결제시는 공인인증서 없이도 결제 가능합니다) <br />따라서, 30만원 이상 결제시는 반드시 공인인증서가 있어야 결제가 가능합니다. <br />공인인증서 발급은 거래 은행이나 증권사를 방문하셔서 인터넷뱅킹 및 사이버 트레이닝을 신청하신 후, <br />은행/증권사 홈페이지에 접속하여 PC에 공인인증서를 다운로드하여 설치하시면 됩니다.
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade7" id="faq_grade7_1" value="5" class="grade_radio grade_1"><label for="faq_grade7_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade7" id="faq_grade7_2" value="4" class="grade_radio grade_2"><label for="faq_grade7_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade7" id="faq_grade7_3" value="3" class="grade_radio grade_3"><label for="faq_grade7_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade7" id="faq_grade7_4" value="2" class="grade_radio grade_4"><label for="faq_grade7_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade7" id="faq_grade7_5" value="1" class="grade_radio grade_5"><label for="faq_grade7_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000213','7')">별점주기</button>
                                    </div>
                                </li>
                            </ul>	                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000212">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">신용카드 결제가 정상적으로 완료되지 않습니다</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">■ 신용카드 결제창이 뜨지 않는 경우
									<br />① 팝업 차단 체크 : 팝업차단 기능이 설정되어 있는 경우 이용이 불가능합니다.
									<br />- 상단의 팝업 차단 알림줄 선택 > ′현재 사이트의 팝업을 항상 허용′ 선택 또는 
									<br />- 도구 > 팝업 차단 > ′현재사이트의 팝업을 항상 허용′
									<br />위 과정을 마친 후 재시도하여 주시기 바랍니다. 
									<br />참고로 툴바(야후, 네이버 등)를 사용하고 계신 경우 팝업 차단 기능이 설정되어 있다면 해제하셔야 합니다. 
									<br />
									<br />
									<br />■ 인터넷안전결제(ISP)/안심클릭이 정상적으로 호출되지 않는 경우 
									<br />① 신용카드별 인터넷안전결제(ISP)/안심클릭 신청 여부 인터넷안전결제(ISP) 서비스는 회원님께서 소지하신 KB카드, 비씨카드
									<br />    또는 우리카드 각 1장마다 별도 신청하셔야 합니다. 
									<br />② 장소 변경시 서비스 이용 가능 여부 : 인터넷안전결제(ISP)관리 메뉴에서 [ISP 재발급 신청] 버튼을 클릭하시면 동일한 ISP서비스가
									<br />    설치되어 이용이 가능합니다.
									<br />
									<br />
									<br />■ 결제창 종료 후 에러가 표시되는 경우
									<br />카드사로 결제 요청이 완료되었으나 카드사에서 거부한 경우 에러메시지를 표시합니다.
									<br />메시지를 참고하시어 표시된 안내전화번호로 문의하여 주시기 바랍니다.
									<div class="grade_box">
                                        <input type="radio" name="faq_grade8" id="faq_grade8_1" value="5" class="grade_radio grade_1"><label for="faq_grade8_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade8" id="faq_grade8_2" value="4" class="grade_radio grade_2"><label for="faq_grade8_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade8" id="faq_grade8_3" value="3" class="grade_radio grade_3"><label for="faq_grade8_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade8" id="faq_grade8_4" value="2" class="grade_radio grade_4"><label for="faq_grade8_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade8" id="faq_grade8_5" value="1" class="grade_radio grade_5"><label for="faq_grade8_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000212','8')">별점주기</button>
                                    </div>
                                </li>
                            </ul>                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000211">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">아이디와 비밀번호가 기억나지 않습니다</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">홈페이지 로그인 페이지에서 아이디/비밀번호 찾기를 클릭하시면 확인이 가능하십니다.<br />비밀번호의 경우 고객님의 해당 메일 주소로 자동 전송됩니다. <br />만약 메일이 오지 않거나, 로그인이 되지 않는 경우에는 당사 고객만족팀(1544-2288>0번)으로 문의하여주시면 안내도와드리겠습니다.
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade9" id="faq_grade9_1" value="5" class="grade_radio grade_1"><label for="faq_grade9_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade9" id="faq_grade9_2" value="4" class="grade_radio grade_2"><label for="faq_grade9_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade9" id="faq_grade9_3" value="3" class="grade_radio grade_3"><label for="faq_grade9_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade9" id="faq_grade9_4" value="2" class="grade_radio grade_4"><label for="faq_grade9_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade9" id="faq_grade9_5" value="1" class="grade_radio grade_5"><label for="faq_grade9_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000211','9')">별점주기</button>
                                    </div>
                                </li>
                           </ul>                            
                        </li>
                    </ul>
                </div>
                <div class="faq_list">
                    <ul class="que" id="que_20000000210">
                        <li class="aq"><img src="/images/customer/question.png" alt="질문"></li>
                        <li class="aq_que">내가 쓴 글을 수정, 삭제하려면?</li>
                    </ul>
                    <ul class="ans">
                        <li>
                            <ul>
                                <li class="aq"><img src="/images/customer/answer.png" alt="답변"></li>
                                <li class="aq_ans">로그인 후, [마이페이지] -> [상담문의 O건] 부분을 클릭하시면 ,  남겨주신 문의 글을 확인하실수있고<br />클릭하여 해당 글이 있는 페이지로 이동하시면 글 내용 하단에 삭제/수정 기능이 있습니다.
                                	<div class="grade_box">
                                        <input type="radio" name="faq_grade10" id="faq_grade10_1" value="5" class="grade_radio grade_1"><label for="faq_grade10_1"><span class="g1_lbl"></span></label>
                                        <input type="radio" name="faq_grade10" id="faq_grade10_2" value="4" class="grade_radio grade_2"><label for="faq_grade10_2"><span class="g2_lbl"></span></label>
                                        <input type="radio" name="faq_grade10" id="faq_grade10_3" value="3" class="grade_radio grade_3"><label for="faq_grade10_3"><span class="g3_lbl"></span></label>
                                        <input type="radio" name="faq_grade10" id="faq_grade10_4" value="2" class="grade_radio grade_4"><label for="faq_grade10_4"><span class="g4_lbl"></span></label>
                                        <input type="radio" name="faq_grade10" id="faq_grade10_5" value="1" class="grade_radio grade_5"><label for="faq_grade10_5"><span class="g5_lbl"></span></label>
                                        <button name="btn_grade" id="btn_grade" class="btn_grade" onclick="saveReview('20000000210','10')">별점주기</button>
                                    </div>
                                </li>
                            </ul>                            
                        </li>
                    </ul>
                </div>
            </div><!--[[ faq board area End ]]-->
	        <div class="board_navi_area"><!--[[ board navi Start ]]-->
	            <span class="paging">
	                <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class=""><a href="/customer/faqList.do?pageIndex=2&searchCnd=&searchWrd=&searchCateCd=" title="2">2</a></span><span class=""><a href="/customer/faqList.do?pageIndex=3&searchCnd=&searchWrd=&searchCateCd=" title="3">3</a></span><span class=""><a href="/customer/faqList.do?pageIndex=4&searchCnd=&searchWrd=&searchCateCd=" title="4">4</a></span><span class=""><a href="/customer/faqList.do?pageIndex=5&searchCnd=&searchWrd=&searchCateCd=" title="5">5</a></span><span class=""><a href="/customer/faqList.do?pageIndex=6&searchCnd=&searchWrd=&searchCateCd=" title="6">6</a></span><span class=""><a href="/customer/faqList.do?pageIndex=7&searchCnd=&searchWrd=&searchCateCd=" title="7">7</a></span><span class=""><a href="/customer/faqList.do?pageIndex=8&searchCnd=&searchWrd=&searchCateCd=" title="8">8</a></span><span class=""><a href="/customer/faqList.do?pageIndex=9&searchCnd=&searchWrd=&searchCateCd=" title="9">9</a></span><span class=""><a href="/customer/faqList.do?pageIndex=10&searchCnd=&searchWrd=&searchCateCd=" title="10">10</a></span><span class="next on"><a href="/customer/faqList.do?pageIndex=2&searchCnd=&searchWrd=&searchCateCd="  title="다음페이지">다음</a></span><span class="last on"><a href="/customer/faqList.do?pageIndex=16&searchCnd=&searchWrd=&searchCateCd=" title="마지막페이지">&gt;</a></span></span>		 
	        </div><!--[[ board navi End ]]-->
        </div>
    </section>
</div>
</div>