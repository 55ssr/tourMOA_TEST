<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	 $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");  $('.sub03_05').addClass('sub03_05 on'); $('#one').show();
	
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

      <div class="tit cs_proc_tit" title="고객불만처리절차안내"></div>
	  <div class="cs_process">
        <div class="cs_bg">
            <div class="cs_01 cs_01_01">
                    <span class="wh_txt_n">해당팀장</span>
            </div>
            <div class="cs_01 cs_01_02">
                    <span class="wh_txt_n">유관부서 최고<br />책임자&nbsp;CRM팀<br />책임자 협의</span>
            </div>
            <div class="cs_02 cs_02_01">
                    <span class="wh_txt">[온라인 VOC]</span>
                    <span class="wh_txt">고객의 소리, 유선, SNS, 홈쇼핑 및 제휴채널, 내방, 우편 등</span>
            </div>
            <div class="cs_02 cs_02_02">
                    <span class="wh_txt">영업부 해당지역 상품 담당자 배정</span>
                    <span class="gn_txt">-24시간 내 담당자 배정</span>
            </div>    
            <div class="cs_02 cs_02_03">
                    <span class="wh_txt">담당자가 사실관계 확인 후 7일 내 회신</span>
            </div>
            <div class="cs_02 cs_02_04">
                    <span class="wh_txt">CRM팀 접수</span>
                    <span class="gn_txt">-사실 확인 후 7일내 회신</span>
            </div>
            <div class="cs_02 cs_02_05">
                    <span class="wh_txt">CCM 불만 중재위원회</span>
                    <span class="gn_txt">-심의 결과 7일 이내 회신</span>
            </div>
            <div class="cs_02 cs_02_06">
                    <span class="bk_txt">중재기관</span>
                    <span class="gr_txt_s">-고객이 직접 접수</span>
            </div>
            <div class="cs_02 cs_02_07">
                    <span class="wh_txt">1372 소비자 상담센터 여행 불편처리센터<br /> 한국 소비자웹</span>
                    <span class="gn_txt">-접수 후 2~4주 소요</span>
            </div>
            <div class="cs_02 cs_02_08">
                    <span class="wh_txt">한국소비자원</span>
                    <span class="gn_txt">-약 2주~2개월 소요</span>
            </div>
            <div class="cs_02 cs_02_09">
                    <span class="wh_txt">법적소송</span>
                    <span class="wh_txt">-소요시간 예측 불가</span>
            </div>
            <div class="cs_etc cs_etc_01">
                    <span class="gn2_txt_b">불수용</span>
            </div>
            <div class="cs_etc cs_etc_02">
                    <span class="gn2_txt_b">불수용</span>
            </div>
            <div class="cs_etc cs_etc_03">
                    <span class="gn2_txt_b">불수용</span>
            </div>
            <div class="cs_etc cs_etc_04">
                    <span class="gn2_txt_b">불수용</span>
            </div>
            <div class="cs_03 cs_03_01">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_03 cs_03_02">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_03 cs_03_03">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_03 cs_03_04">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_03 cs_03_05">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_03 cs_03_06">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_03 cs_03_06">
                    <span class="gr_txt_s">수용</span>
            </div>
            <div class="cs_04 cs_04_01">
                    <span class="wh_txt_n">종료</span>
            </div>
            <div class="cs_04 cs_04_02">
                    <span class="wh_txt_n">종료</span>
            </div>
            <div class="cs_04 cs_04_03">
                    <span class="wh_txt_n">종료</span>
            </div>
            <div class="cs_04 cs_04_04">
                    <span class="wh_txt_n">종료</span>
            </div>
            <div class="cs_04 cs_04_05">
                    <span class="wh_txt_n">종료</span>
            </div>
            <div class="cs_04 cs_04_06">
                    <span class="wh_txt_n">종료</span>
            </div>
        </div>
      </div>

    </section>