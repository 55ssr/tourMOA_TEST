<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/product-detaillist.css" />
<link rel="stylesheet" href="/css/jquery-ui.css" /> 
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/ui.js" type="text/javascript"></script>
<script>
function fnMenuSelect() {
}

$( document ).ready(function() {
	$('#lnb').mouseleave(function(){
        setTimeout(function() {
        	$("#one > li").removeClass('on'); // 1depth 초기화
        	$("ul.sub").css("display","none"); // 2depth 사라짐
        	$("ul.sub > li").removeClass('on'); // 2depth 초기화
            fnMenuSelect();
        }, 3000);
    });
});
</script>

<div id="content">
<div id="wrap">
	<header>
	<nav id="lnb"><!--[[ LNB Start ]]-->
        <ul id="one">
           	<a href="/customer/main.do"><li class="tit"></li></a>
            <li class="lnb01"><a href="/customer/noticeList.do" >공지사항</a></li>
            <li class="lnb06"><a href="/customer/episodeList.do" >여행이야기</a></li>
            <li class="lnb02"><a href="/customer/faqList.do" >여행상담</a></li>
            <li class="lnb03"><a href="/customer/praiseList.do" >고객의소리</a></li>
            <li class="lnb04"><a href="/customer/ccmIs.do" >소비자중심경영</a></li>
            <li class="lnb05"><a href="/customer/paymentArs.do" >서비스안내</a></li>
        </ul>
    </nav>
    </header>
</div>
</div> 