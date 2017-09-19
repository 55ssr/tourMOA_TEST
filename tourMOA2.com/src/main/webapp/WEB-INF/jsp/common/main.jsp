<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<link rel="stylesheet" href="/css/jquery-ui.css" /> 
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/ui.js" type="text/javascript"></script>
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
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
	if(confirm("로그인 후 이용하실 수 있습니다. 로그인하시겠습니까?")){
		showLoginLayer(encodeURIComponent("/customer/complaintWrite.do"));
	}	 
}
</script>

<div id="content">
<div id="wrap">
	<header>
	<nav id="lnb"><!--[[ LNB Start ]]-->
        <ul id="one">
           	<a href="/customer/main.do"><li class="tit"></li></a>
            <li class="lnb01"><a href="/customer/noticeList.do" >공지사항</a>
                <ul class="sub sub_1">
                    <li class="sub01_01"><a href="/customer/noticeList.do" >공지사항</a></li>
                </ul>
            </li>
            <li class="lnb06"><a href="/customer/episodeList.do" >여행이야기</a>
   		<ul class="sub sub_6">
			<li class="sub06_01"><a href="/customer/episodeList.do" >여행후기</a></li>
 		</ul>
		</li>
            <li class="lnb02"><a href="/customer/faqList.do" >여행상담</a>
                <ul class="sub sub_2">
                    <li class="sub02_01"><a href="/customer/faqList.do" >자주하는질문</a></li>
                    <li class="sub02_02"><a href="/customer/qnaList.do" >묻고답하기</a></li>
                    <li class="sub02_03"><a href="/customer/estimateReq.do" title="견적문의">견적문의</a></li>
                </ul>
            </li>
            <li class="lnb03"><a href="/customer/praiseList.do" >고객의소리</a>
                <ul class="sub sub_3">
                    <li class="sub03_01"><a href="/customer/praiseList.do" >칭찬합시다</a></li>
                    <li class="sub03_02"><a href="/customer/bestGuide.do" >BEST여행도우미</a></li>
                    <li class="sub03_03"><a href="/customer/survey.do" >고객만족도조사</a></li>
                    <li class="sub03_04"><a href="#complain" onclick="loginConfirm(); return false;">고객불편신고하기</a></li><!--  -->
                    <li class="sub03_05"><a href="/customer/complaintProcess.do" >소비자불만처리절차안내</a></li>
                </ul>
            </li>
            <li class="lnb04"><a href="/customer/ccmIs.do" >소비자중심경영</a>
                <ul class="sub sub_4">
                    <li class="sub04_01"><a href="/customer/ccmIs.do" >CCM이란?</a></li>
                    <li class="sub04_02"><a href="/customer/awardsCcm.do" >노랑풍선수상내역</a></li>
                </ul>
            </li>
            <li class="lnb05"><a href="/customer/paymentArs.do" >서비스안내</a>
                <ul class="sub sub_5">
                    <li class="sub05_01"><a href="/customer/paymentArs.do" >결제방법안내</a></li>
                    <li class="sub05_02"><a href="/customer/giftcardBuy.do" >여행상품권안내</a></li>
                    <li class="sub05_03"><a href="/customer/helpline.do" >상담전화안내</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    </header>
    <script type="text/javaScript" language="javascript" defer="defer">
		$(document).ready(function(){
		
			//카테고리클릭 이벤트 삭제
			$(".cat_area > tbody > tr > th").click(function(){
				$(location).attr("href", $(this).children("a").attr("href"));
			});
		});
		
		function goFaq(){
		
			if($("input:text[name='searchWrd']").val() == ""){
				alert("검색어를 입력해 주세요");
				return;
			}
			
			$("#frm").submit();
		}
	</script>
	<section id="content"><!--[[ content Start ]]-->
        <div class="sec_wrap sec_01">
            <div class="para_01">
                <span>처음부터 끝까지</span>
                <span class="gr clear">고객님의 여행</span><span>을 챙겨드리겠습니다.</span>
                <span class="sm clear">궁금하신 점이 있으신가요?</span>
            </div>
            <div class="para_02">
                <ul>
                    <li><a href="/customer/qnaList.do" ><img src="/images/customer/icon_m_qna_off.png" alt="묻고답하기"></a></li>
                     <li><a href="/customer/estimateReq.do" title="견적문의"><img src="/images/customer/icon_e_inquiry_off.png" alt="견적문의"></a></li>
                    <li><a href="/customer/paymentArs.do" ><img src="/images/customer/icon_m_pay_off.png" alt="결제방법"></a></li>
                    <li><a href="/promotion/coupon.do" ><img src="/images/customer/icon_m_coupon_off.png" alt="할인쿠폰"></a></li>
                    <li class="last"><a href="/customer/survey.do" ><img src="/images/customer/icon_m_rsch_off.png" alt="만족도조사"></a></li>
                </ul>
            </div>
        </div>
        <div class="sec_wrap sec_02 ">
            <div class="cont_area">
                <table class="cat_area"><!--[[ tab Start ]]-->
                <caption>자주묻는 질문 카테고리</caption>
                    <tbody>
                    	<tr>
                            <th scope="col"  class="on"><a href="/customer/faqList.do?searchCateCd=PRS" >상품예약</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=PPT" >상품결제</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=TPD" >여행상품</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=ATK" >해외항공</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=DMA" >국내항공</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=CRS" >크루즈</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=TGC" >여행상품권</a></th>
                            <th scope="col" ><a href="/customer/faqList.do?searchCateCd=WEB" >홈페이지</a></th>
                            <th scope="col"  class="last"><a href="/customer/faqList.do?searchCateCd=ETC" >기타</a></th>
                        </tr>
                    </tbody>
                </table><!--[[ tab End ]]-->
				<form name="frm" id="frm" method="post" action="/customer/faqList.do"> 
				<input type="hidden" name="searchCnd" value="TITLE" />
				
                <div class="search_area">
                    <span>여행에 대한 모든것을 물어보세요!</span>
                    <input type="text" name="searchWrd"  id="searchWrd" title="검색어입력">
                    <button type="button" id="btnsearch" title="검색" onclick="goFaq();">검색</button>
                </div>
                </form>
            </div>
        </div>        
        
        <div class="sec_wrap sec_03">        
        	<!-- 공지사항 -->        
            <div class="latest_wrap latest_notice">
                <a href="/customer/noticeList.do" class="plus">더보기</a>
                <ul>
                    <li><a href="/customer/noticeView.do?noticeNo=20000002781">[중국국제항공] 라싸(LXA) 외 지역 공항 수속 마감 시간 안내</a></li>
					<li><a href="/customer/noticeView.do?noticeNo=20000002762">[중국남방항공] (최종) 중국 광저우 바이윈 공항 임시 입국 심사 강화에...</a></li>
					<li><a href="/customer/noticeView.do?noticeNo=20000002761">[진에어] 인천-대만노선 공항 카운터 안내</a></li>
					<li><a href="/customer/noticeView.do?noticeNo=20000002746">[이스타항공] 9.14일 인천-방콕/코타키나발루 지연 운항 안내</a></li>
				</ul>
            </div>
            
            <!-- 묻고답하기 -->
            
            <div class="latest_wrap latest_qna mgr0">
                <a href="/customer/qnaList.do" class="plus">더보기</a>
                <ul>
                	<li><span class="proc">답변중</span><span class="secret"></span>항공권 환불</li>
					<li><span class="proc">답변중</span><span class="secret"></span>항공권 영문자 문의</li>
					<li><span class="proc">답변중</span><span class="secret"></span>항공권 예약</li>
					<li><span class="proc">답변중</span><span class="secret"></span>환전 문의</li>
				</ul>
            </div>            
            <!-- BEST 여행도우미 -->
            <div class="latest_wrap latest_guide mgb0">
                <a href="/customer/bestGuide.do" class="plus">더보기</a>
                <div class="guide_img_wrap">
                	<a href="/customer/bestGuide.do">
                    	<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201708/201708251556554411705004002054.png"  alt="베스트도우미">
                    </a>
                </div>
                <div class="guide_desc">
                    <ul>
                        <li><span class="best_icon"></span><a href="/customer/bestGuide.do"><span class="guide_tit">이미진</span></a></li>
                        <li>
                        	<span class="guide_comment">
	                        	<a href="/customer/bestGuide.do">
									개개인의 성향과 취향, 원하시는 바를 신속하게 확인하여 누구라도 만족하실 수 있는 여행이 될 수 있도록, 고객의 입장에서 생각하고 안내..
								</a>
							 </span>
                        <a href="/customer/bestGuide.do" class="btn_best_t_guide">자세히 보기</a>
                        </li>
                   </ul>
                </div>
            </div>
            <!-- 칭찬합시다 -->
            <div class="latest_wrap latest_praise mgb0">
                <a href="/customer/praiseList.do" class="plus">더보기</a>
                <ul>
                    <li><a href="/customer/praiseView.do?cnslNo=20000039401">명쾌하고 담백한 가이드 쌤.</a></li>
					<li><a href="/customer/praiseView.do?cnslNo=20000039400">신영섭 이사님 감사드립니다~꾸벅^^</a></li>
					<li><a href="/customer/praiseView.do?cnslNo=20000039399">정영남 가이드님을 칭찬합니다.</a></li>
					<li><a href="/customer/praiseView.do?cnslNo=20000039395">9월2일 서유럽 4개국 인솔자  임슬기씨를 칭찬 합니다.</a></li>
				</ul>
            </div>            
        </div>
    </section>    
</div>
</div>