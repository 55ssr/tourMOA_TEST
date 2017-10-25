<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
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
