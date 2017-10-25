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
     $('.lnb05').addClass('lnb05 on'); $("ul.sub_5").css("display","block");      $('.sub05_03').addClass('sub05_03 on'); $('#one').show();
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

        <div class="tit contact_tit" title="상담전화안내"><span class="tit_txt contact_sub">노랑풍선의 지역별 직통 상담전화번호를 안내해 드립니다.</span></div>
        <div class="contact_body"><!--[[ contact Start ]]-->
		    <div class="contact_logo"></div>
            <div class="contact_bann">
                <h2>여행상담 대표 전화번호</h2>
                <h1>1544-2288</h1>
            </div>
            <div class="contact_prod">
                <ul>
                    <li>1번 해외여행</li>
                    <li>2번 자유여행</li>
                    <li>3번 국내여행</li>
                    <li>4번 법인단체</li>                       
                    <li>0번 기타문의</li>
                 </ul>
            </div>
        </div>    
        <p class="branch">부산지사 : 051. 710. 7744 &nbsp; &nbsp;대구지사 : 035. 720. 7744</p>
         <div class="contact_body"><!--[[ contact Start ]]-->
		    <div class="contact_logo"></div>
            <div class="contact_bann">
                <h2>해외항공상담 대표 전화번호</h2>
                <h1>1644-3399</h1>
            </div>
            <div class="contact_prod">
                <ul>
                    <li class="fin_none">1번 항공권 변경문의</li>
                    <li class="fin_none">2번 환불 및 취소문의</li>
                    <li class="fin_none">3번 기타문의</li>
                 </ul>
            </div> 
        </div>  
        
       <p class="tm ">평일: 오전 9시부터 오후 6시 30분까지 / 토요일: 오전9시부터 오후3시까지(일요일 및 공휴일 휴무)</p>

        <!--[[ contact End ]]-->
        <div class="contact_tel">
            <div class="tit contact_tel_tit" title="지역별전문가상담번호"></div>
            	<div class="package_product">
	            	<span class="y_tit">해외패키지상품</span>
	                <ul class="clear">
	                	<li><span class="tour">유럽</span><span class="txt">02-2022-7285</span></li>
	                	<li><span class="tour">필리핀/푸켓</span><span class="txt">02-2022-7283</span></li>
	                    <li><span class="tour">중국</span><span class="txt">02-2022-7287</span></li>
	                    <li><span class="tour">괌/사이판</span><span class="txt">02-2022-7289</span></li>
	                    <li><span class="tour">미주/남미</span><span class="txt">02-2022-7284</span></li>
						  <li><span class="tour">인도/아프리카</span><span class="txt">02-2022-7297</span></li>                    
	                </ul>
	                <ul class="ul_02">
	                	<li><span class="tour">동남아1</span><span class="txt">02-2022-7282</span></li>
						<li><span class="tour">동남아2</span><span class="txt">02-2022-7273</span></li>
	                	<li><span class="tour">일본</span><span class="txt">02-2022-7286</span></li>
	                	<li><span class="tour">홍콩/대만</span><span class="txt">02-2022-2408</span></li>
	                    <li><span class="tour">호주/뉴질랜드</span><span class="txt">02-2022-7288</span></li>
	                  
	                </ul>
	            </div>
	            <div class="package_other_product">
               	 	<span class="y_tit">패키지 외 상품</span>
	                <ul class="ul_03">
	                    <li><span class="tour">자유여행</span><span class="txt">1544-2288(2번)</span></li>   
	                    <li><span class="tour">골프</span><span class="txt">02-2022-7291</span></li>    
	                    <li><span class="tour">국내여행</span><span class="txt">02-2022-7290</span></li> 
	                    <li><span class="tour">국내항공</span><span class="txt">02-2022-7290 </span></li>   
	                </ul>
	                <ul>
	                    <li><span class="tour">허니문</span><span class="txt">02-2022-7293</span></li>    
	                    <li><span class="tour">기업단체</span><span class="txt">02-2022-7299</span></li>                        
	                    <li><span class="tour">성지순례</span><span class="txt">02-2022-7299</span></li>   
						<li><span class="tour">크루즈</span><span class="txt">02-2022-7297</span></li>
	                </ul>
                </div>
        </div>
	  
    </section>