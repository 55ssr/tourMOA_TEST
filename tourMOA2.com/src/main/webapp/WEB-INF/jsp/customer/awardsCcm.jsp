<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	
	
	//소비자중심경영
	 $('.lnb04').addClass('lnb04 on'); $("ul.sub_4").css("display","block");         $('.sub04_02').addClass('sub04_02 on'); $('#one').show();
    
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

        <div class="tit prize_tit" title="노랑풍선 수상내역"></div>
        <div class="prize_cat_area">
            <table class="cat_area"><!--[[ tab Start ]]-->
                <caption>수상내역탭</caption>
                <tbody>
		        <tr>
			        <th scope="col" class="on"><a href="#1">CCM</a></th>
			        <th scope="col"><a href="#1">THE PROUD</a></th>
			        <th scope="col"><a href="#1">KS-WCI</a></th>
			        <th scope="col"><a href="#1">KS-QEI</a></th>                    
                    <th scope="col" ><a href="#1">SCSI</a></th>
                    <th scope="col"><a href="#1">Main Biz</a></th>
                    <th scope="col" class="prize_ft"><a href="#1">일자리창출 우수기업</a></th>
                    <th scope="col" class="prize_ft last"><a href="#1">취업하고 싶은기업</a></th>
		        </tr>
                </tbody>
            </table>
        </div>

        <div class="prize_body" id="prize1" style="display:block;"><!--[[ CCM Start ]]-->
		    <div class="prize_logo_01"></div>
            <div class="prize_bann">
                <span>한국소비자원 및 공정거래위원회 주관</span>
                <h1>CCM 3회 연속<br />인증 획득!</h1>
                <span class="btnDtl"><a href="http://www.kca.go.kr/wpge/m_210/ccm1100.do" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_01"></div>
            <div class="prize_desc">
                <h2>CCM(Consumer Centered Management)이란?</h2>
                <span>한국소비자원과 공정거래위원회에서 기업이 수행하는 모든 활동을 소비자 관점에서 (재)구성하고 관련 경영활동<br />
                을 지속적으로 개선하는지 평가하여 인증하는 권위있는 인증제도입니다.
                </span>
            </div>
        </div><!--[[ CCM End ]]-->
        
        <div class="prize_body" id="prize2"><!--[[ 고객가치 최우수상품이란 Start ]]-->
		    <div class="prize_logo_08"></div>
            <div class="prize_bann">
                <span>한국능률협회 선정</span>
                <h1>2017 고객가치 최우수 상품<br />여행사부문 1위 수상!</span></h1>
                <span class="btnDtl"><a href="http://www.kmac.co.kr/certify/cert_sys06.asp" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_desc prize8">
                <h2>고객가치 최우수 상품이란?</h2>
                <span>한국능률협회에서 소비자를 대상으로 2007년부터 상품에 대한 다차원적인 평가를 통해
                고객가치를 혁신하여 뛰어난 시장성과를 창출하고 있는 '고객가치최우수상품'을 발굴하여<br />
                기업의 지속가능성장에 기여하고 있는 인증 제도로써, 
 				고객가치 기반의 속성과 혜택, 가치를 통해 차별적인 혁신성을 기반으로 시장을 선도하고 고객의 성과를 창출한 서비스를<br />의미합니다.
                </span>
            </div>
        </div><!--[[ 고객가치 최우수상품이란 End ]]-->

        <div class="prize_body" id="prize3"><!--[[ KS-WCI Start ]]-->
		    <div class="prize_logo_02"></div>
            <div class="prize_bann">
                <span>한국표준협회 선정</span>
                <h1>한국소비자웰빙지수<br />5년연속 1위! <span>(2011~2015년도 수상)</span></h1>
                <span class="btnDtl"><a href="http://www.ksa.or.kr/qualdev/ks-wci/" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_02"></div>
            <div class="prize_desc">
                <h2>한국소비자웰빙지수(KS-WCI)란?</h2>
                <span>소비자들의 웰빙 상품 선택의 객관적 기준을 제시하고 나아가 로하스적 소비문화를 조성하는데 기여하고자, 소비자들의 삶의 질 향상에 도움이 되는 친건강, 친환경 상품과 서비스를 대상으로 웰빙 수준에 대한, 소비자들의 인식을 지수화해 상품군별 1위를 선정, 발표하는 제도입니다. *건강성(HEALTH), 환경성(ECOLOGY), 안정성(SAFETY), 충족성(SATISFACTION), 사회성(SOCIAL RESPONSIBILITY)의 5개 차원을 통해 해당 부문별 웰빙 기능 만족도 1위를 선정하는 평가 척도
                </span>
            </div>
        </div><!--[[ KS-WCI End ]]-->

        <div class="prize_body" id="prize4"><!--[[ KS-QEI Start ]]-->
		    <div class="prize_logo_03"></div>
            <div class="prize_bann">
                <span>한국표준협회 선정</span>
                <h1>한국사용품질지수<br />5년 연속 1위!</h1>
                <span class="btnDtl"><a href="http://www.ksa.or.kr/qualdev/ks-qei/" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_03"></div>
            <div class="prize_desc">
                <h2>한국사용품질지수 (KS-QEI)란?</h2>
                <span>한국표준협회와 한국품질경영학회 지수연구회가 제품에 대한 고객의 만족도와 제품 특성을 반영하여 공동으로 개발한 측정모델로 해당 기업의 제품을 구매 또는 이용 경험자 및 해당 제품 전문가를 대상으로 품질의 우수성 및 만족도를 조사하여 발표하는 종합 지표입니다.
                </span>
            </div>
        </div><!--[[ KS-QEI End ]]-->

	 <div class="prize_body" id="prize5"><!--[[ SCSI Start ]]-->
		    <div class="prize_logo_07"></div>
            <div class="prize_bann">
                <span>한국인터넷소통협회 선정</span>
                <h1>대한민국소셜미디어<br />5년 연속 대상!</h1>
                <span class="btnDtl"><a href="http://kicoa.or.kr/%ec%8b%9c%ec%83%81%ec%9d%b8%ec%a6%9d/%ec%97%ad%eb%8c%80%ec%88%98%ec%83%81%ec%9e%90/" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_07"></div>
            <div class="prize_desc">
                <h2>대한민국 소셜미디어대상이란?</h2>
                <span>소셜미디어와 웹사이트, 모바일을 효과적으로 활용해 소통 원할화에 기여하고 고객들의 신뢰를 받는 기업과 사례를 발굴하는 상으로, 4,000여 명의 고객패널과 전문위원으로 구성된 심사단이 블로그, 트위터, 페이스북 등 온라인 대회 활동을 인터넷 소통지수(ICSI), 소셜소통지수(SCSI)를 종합적으로 반영해 부문별 최고의 기업을 선정하는 제도입니다.
                </span>
            </div>
        </div><!--[[ SCSI End ]]-->		

		  <div class="prize_body" id="prize6"><!--[[ Main Biz Start ]]-->
		    <div class="prize_logo_06"></div>
            <div class="prize_bann">
                <span>중소기업청 선정</span>
                <h1>MAIN Biz 인증!</h1>
                <span class="btnDtl"><a href="https://www.mainbiz.go.kr/usr/pageFwr.do?cd_menu=M010101" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_06"></div>
            <div class="prize_desc">
                <h2>경영혁신형 중소기업(MAIN Biz)이란?</h2>
                <span>MANAGEMENT + INNOVATION + BUSINESS MANAGEMENT(경영), INNOVATION(혁신), BUSINESS(기업)의 합성어로 중소기업청으로부터 경영혁신형 중소기업으로 인증 받은 기업을 지칭합니다. 새로운 경영기법을 개발하거나 기술혁신 기반을 마련하고 경쟁력을 확보한 미래성장가능성이 있는 기업에 대해 인증하는 제도입니다.
                </span>
            </div>
        </div><!--[[ Main Biz End ]]-->
		

        <div class="prize_body" id="prize7"><!--[[ 일자리창출 우수기업 Start ]]-->
		    <div class="prize_logo_04"></div>
            <div class="prize_bann">
                <span>서울특별시 선정</span>
                <h1>일자리창출<br />우수기업!</h1>
                <span class="btnDtl"><a href="http://spp.seoul.go.kr/main/news/news_report.jsp?search_boardId=13083&act=VIEW&boardId=13083" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_04"></div>
            <div class="prize_desc">
                <h2>일자리창출 우수기업이란?</h2>
                <span>서울시에서 주최하며 고용증가인원 및 고용증가율이 높은 기업, 정규직 채용비율 및 근로조건을 심사하여 자치구의 서류심사와 서울시의 최종평가를 통해 우수기업을 선정하는 인증제도입니다.
                </span>
            </div>
        </div><!--[[ 일자리창출 우수기업 End ]]-->

        <div class="prize_body" id="prize8"><!--[[ 취업하고 싶은 기업 Start ]]-->
		    <div class="prize_logo_05"></div>
            <div class="prize_bann">
                <span>&nbsp;</span>
                <h1>취업하고<br />싶은 기업 선정!</h1>
                <span class="btnDtl"><a href="http://www.innobiz.net/" target="_blank">자세히보기</a></span>
            </div>
            <div class="prize_cert_05"></div>
            <div class="prize_desc">
                <h2>취업하고 싶은 기업이란?</h2>
                <span>이노비즈(INNOBIZ)협회와 매일경제신문사에서 주최하고, 중소기업청과 중소기업진흥공단에서 후원하는 프로젝트로 기업의 고용안정성, 대외이미지, 성장잠재력, 근로조건, 근로자 만족도 등을 종합적으로 평가하여 우수한 일자리 경쟁력을 갖춘 기업을 선정합니다.
                </span>
            </div>
        </div><!--[[ 취업하고 싶은 기업 End ]]-->
    </section>