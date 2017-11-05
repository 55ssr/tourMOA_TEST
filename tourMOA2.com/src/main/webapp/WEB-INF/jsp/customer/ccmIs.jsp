<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	
	
	//소비자중심경영
	 $('.lnb04').addClass('lnb04 on'); $("ul.sub_4").css("display","block");             $('.sub04_01').addClass('sub04_01 on'); $('#one').show();
    
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
<script src="/fp/flowplayer.min.js"></script>
<link rel="stylesheet" href="/fp/skin/functional.css">
        <div class="tit ccm_tit" title="CCM 이란?"></div>
        
        <div class="prize_cat_area">
            <table class="cat_area"><!--[[ tab Start ]]-->
                <caption></caption>
                <tbody>
		        <tr>
			        <th scope="col" class="on"><a href="#wrap">CCM(소비자중심경영)</a></th>
			        <th scope="col"><a href="#wrap">CCO 인사말</a></th>
			        <th scope="col"><a href="#wrap">고객만족경영</a></th>
		        </tr>
                </tbody>
            </table>
        </div>
        
        <div class="prize_body ccmheight"   id="prize1" style="display:block;">
        <div class="ccmBox" >
            <p class="subTit">CCM(소비자중심경영) <button type="button" class="btn_ccmp" role-w="685" role-h="600" role-url="/html/common/other/ccm_info.html" onclick="showLayer(this);">한눈에 보이는 CCM+</button></p>
            <div class="ccm_desc">
                <dl>
                    <dt class="logo"><img src="../../images/customer/ccm_logo2.png" alt="ccm로고"></dt>
                    <dd>소비자중심경영, 즉 CCM은 기업이 수행하는 모든활동을 소비자 관점에서, 소비자 중심으로 구성하고, <br>관련 경영활동을 지속적으로 개선하고 있는지를 평가하여 인증하는 제도입니다.
                    </dd>
                </dl>
            </div>
	    </div>
        <div class="ccm_diagram">
            <span class="txt01">소비자의 소리<br />(VOC)</span>
            <span class="txt02">서비스</span>
            <span class="txt03">제품기획</span>
            <span class="txt04">구매</span>
            <span class="txt05">생산</span>
            <span class="txt06">물류</span>
            <span class="txt07">홍보</span>
            <span class="txt08">영업</span>
            <span class="txt09">품질</span>
            <span class="txt10">소비자 효율증대<br />소비자 권익증진</span>
        </div>
        <div class="ccmBox">
            <p class="subTit">인증마크</p>
            <div class="ccm_desc">
                <ul>
                    <li class="logo"></li>
                    <li class="exp"><p class="top">CCM(Consumer centered Management/소비자중심경영) 인증마크는 소바자(consumer)와 기업(company)이  단단하게 서로 얽힌 모습으로 서로를 이해해고 <br />신뢰하며 하나가 되어가는 과정을 형상화하였습니다.</p>
                    <p class="bottom">오렌지색은 서로를 이해하고 만족하는 소비자중심경영의 감성적인 부분을 상징하고,블루와 그레이는 서로를 신뢰하고 신속하고 명확하게 처리되는 소비자중심경영의<br />이성적인 부분을 상징합니다.</p>
                    </li>
                </ul>
            </div>
	    </div>
        <div class="ccmBox">
            <p class="subTit">인증운영기관</p>
            <div class="ccm_opr">
                <ul>
                    <span class="cert_tit">인증기관</span>
                    <li><img src="../../images/customer/ftc.jpg" alt="공정거래위원회"></li>
                </ul>
                <ul class="last">
                    <span class="cert_tit">운영기관</span>
                    <li><img src="../../images/customer/kca.jpg" alt="한국소비자원"></li>
                </ul>
            </div>
            <!--<div class="ccm_opr_desc">
                <ul>
                    <span class="cert_tit">담당부서</span>
                    <li>한국소비자원 대외홍보실 기업협력팀</li>
                    <li>- 서울특별시 송파구 송파대로 167 (문정테라타워 A동 15층) (우:05855)TEL : 02-3460-3100 / FAX : 02-2058-2584 / E-mail : ccm@kca.go.kr </li>
                </ul>
            </div>-->
            <div class="ccmBox">
            	<p class="subTit">CCM 운영</p>
            	<div class="ccm_img">
            		<img src="../../images/customer/ccm_story.png"  alt="리더쉽 ceo의 리더쉽 ccm전략, 성과관리 ccm성과관리, 소비자중심경영체계 조직관리,자원관리,교육관리,문서관리, 소비자중심 경엉운영, 소비자정보 제공 voc운영 소비자불만처리" />
            	</div>
            </div>
            <div class="ccmBox">
            	<p class="subTit">CCM 인증의 기대효과</p>
            	<div class="ccm_result">
                	<div class="box">
                		<span class="cert_tit">소비자측면</span>
                		<ul>
                			<li>- 상품 및 서비스 선택정보 제공 효과</li>
                			<li>- 인증기업과의 소비자문제 발생 시 CCM 운영체계에<br />&nbsp;&nbsp;&nbsp;따라 신속하고 합리적인 해결 가능</li>
                		</ul>
                	</div>
                	<div class="box">
                		<span class="cert_tit">기업측면</span>
                		<ul>
                			<li>- CEO와 임직원의 소비자 관련 인식 제고</li>
                			<li>- 상품과 서비스 수준을 소비자 관점에서 지속적인 현식을<br />
                			 &nbsp;&nbsp;&nbsp;통해  궁극적으로 대내외 경쟁력 제고</li>
                		</ul>
                	</div>
                	<div class="box">
                		<span class="cert_tit">공공측면</span>
                		<ul>
                			<li>- 사후 분쟁 해결 및 시정조치에 필요한 사회적 비용 절감<br />&nbsp;&nbsp;&nbsp;효과 기대 </li>
                			<li>- 소비자 중심의 선순환 시장 조성</li>
                		</ul>
                	</div>
                </div>
             </div>	
             <div class="ccmBox">
            	<p class="subTit">CCM 소개 동영상</p>
            	<div class="ccm_mov">
                	<div class="box">
                		<span class="cert_tit">CCM 인증제도 홍보 영상 </span>
                		<iframe src="https://player.vimeo.com/video/196831573" width="540" height="304" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>	
                	</div>
					<!--
                	<div class="box">
                		<span class="cert_tit">CCM 인증제도 홍보영상(6분 13초)</span>
          				<iframe src="https://player.vimeo.com/video/192383849" width="540" height="304" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                	</div>
					-->
                </div>
              
            </div>	
	    </div>
 	</div>
 	<div class="prize_body ccmheight"  id="prize2">
 		 <div class="ccmBox" >
            <p class="subTit">CCO 인사말</p>
           <p class="cco_p">
           	안녕하십니까, <br />
노랑풍선 최고고객책임자 최명선 입니다. <br /><br />

노랑풍선은 2001년 창립 이래 고객에게 감동과 행복을 주는 여행 서비스를 제공하기 위해 끊임없이 노력하고 있는 회사입니다. <br /><br />

회사의 모든 체계를 고객 중심으로 재편하여 예약 단계부터 여행을 마치는 순간까지 <br />
고객이 감동할 수 있는 수준의 서비스를 제공하기 위해 단계별 절차와 기준을 새롭게 정립하고, <br />
고객 응대 체제를 개선하는 것에 주력해 왔습니다. <br /><br />

저는 노랑풍선의 최고고객책임자로서 모든 비즈니스 활동을 소비자 관점에서, 소비자 중심으로 재구성하고 <br />
모든 임직원으로 하여금 소비자 불만을 사전에 예방하고 소비자 피해에 대해서 신속하게 처리하여 <br />
기업의 가치 제고와 경쟁력을 향상시킬 수 있도록 더욱 힘써 나갈 것입니다. <br /><br />

<strong>이제 대한민국의 여행 문화를 선도해 나가기 위해 소비자중심경영 선두에 서서 <br />
<span><span class="org">고객만족을 실천하는 노랑풍선</span>으로 만들어 나가겠습니다. </span></strong><br /><br />

앞으로도 변함없는 사랑과 관심 부탁드립니다. <br /><br />

감사합니다.  
           	
           </p>
           <p class="cco_sign"><img src="/images/customer/cco_name.gif" alt="노랑풍선 cco 최명선" /></p>
	    </div>
 	</div>	
 	<div class="prize_body ccmheight"  id="prize3">
 		<div class="ccm_img ">
 			<p class="t_ccm">투명한 여행문화를 노랑풍선이 만들어 가겠습니다. </p>
 			<p class="t_sub">고객서비스 헌장</p>
 			<img src="../../images/customer/ccm_box.png"  alt=" " />
 			<a href="http://company.ybtour.co.kr/info/svcCharter.do" target="_black" ><img src="../../images/customer/btn_ccm_go.png" alt="서비스 이행 표준 자세히보기" /></a>
 		</div>
 	</div>	
    </section>