<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="-1" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="robots" content="all" />
    <meta name="robots" content="index,follow" />
    <meta name="subject" content="" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>회사소개</title>

    <!--[if lt IE 9]><script src="/js/html5.js"></script><![endif]-->
    <link rel="stylesheet"   href="/css/company.css" />
    <script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript"  src="/js/ui_company.js"></script>
    <script type="text/javascript"  src="/js/common.js"></script>
	<script type="text/javascript"  src="/js/jquery.validate.js"></script>
    <script type="text/javascript"  src="/js/jquery.simplemodal-1.4.4.js"></script>
</head>


<script type="text/javascript">
$(document).ready(function(){
	
	var pt = "info";
	var pn = "ciGuide.do";
	
	
	if(pt == "" || typeof pt == 'undefined' ){
		pt = "info";
	}
	if(pn == "" || typeof pn == 'undefined' ){
		pn = "intro.do";
	} 
			
	onChangeHeader(pt);
	onChangeMenu(pt, pn);
	
	$("#gnb > ul > li").on('mouseleave',function(){
		onChangeHeader(pt);
	})
	
	$(".top_banner > ul > li").on('mouseleave',function(){
		$(this).removeClass("on");
		$(this).removeClass("off");
		onChangeMenu(pt, pn);
	})

});

function onChangeHeader(pt){
	if(pt == "info" || pt == ""){   //회사소개
		$(".gnb01").addClass("on");
		
	}else if(pt == "ceo"){          //CEO소개
		$(".gnb02").addClass("on");
		
	}else if(pt == "agent"){        //대리점안내
		$(".gnb03").addClass("on");
		
	}else if(pt == "bizTravel"){    //기업/단체
		$(".gnb04").addClass("on");
		
	}else if(pt == "news"){         //뉴스&보도자료
		$(".gnb05").addClass("on");
		
	}else if(pt == "recruit"){      //채용정보
		$(".gnb06").addClass("on");
	}
}

function onChangeMenu(pt, pn){
	
	if(pt == "info" || pt == ""){                 //회사소개
		if(pn == "intro.do" || pn == ""){
			$(".intro_tab01").addClass("on");
		}else if(pn == "svcCharter.do"){
			$(".intro_tab02").addClass("on");
		}else if(pn == "ethicsGuide.do"){
			$(".intro_tab03").addClass("on");
		}else if(pn == "ciGuide.do"){
			$(".intro_tab04").addClass("on");
		}else if(pn == "headOffice.do" || pn == "busanOffice.do" || pn == "daeguOffice.do"){
			$(".intro_tab05").addClass("on");
		}
		
	}else if(pt == "ceo"){                        //CEO소개
		if(pn == "koh.do"){
			$(".ceo_tab01").addClass("on");
		}else if(pn == "choi.do"){
			$(".ceo_tab02").addClass("on");
		}
		
	}else if(pt == "agent"){                      //대리점안내
		if(pn == "about.do"){
			$(".branch_tab01").addClass("on");
		}else if(pn == "support.do"){
			$(".branch_tab02").addClass("on");
		}else if(pn == "opening.do"){
			$(".branch_tab03").addClass("on");
		}else if(pn == "openingApply.do"){
			$(".branch_tab04").addClass("on");
		}else if(pn == "terminationAgent.do"){
			$(".branch_tab06").addClass("on");
		}
		
	}else if(pt == "bizTravel"){                  //기업/단체
		if(pn == "guideBizTravel.do"){
			$(".biz_tab01").addClass("on");
		}else if(pn == "quoteContact.do"){
			$(".biz_tab02").addClass("on");
		}else if(pn == "episodeList.do"){
			$(".biz_tab03").addClass("on");
		}
		
	}else if(pt == "news"){                       //뉴스&보도자료
		if(pn == "video.do"){
			$(".article_tab01").addClass("on");
		}else if(pn == "press.do"){
			$(".article_tab02").addClass("on");
		}
		
	}else if(pt == "recruit"){                    //채용정보
		if(pn == "rightPeople.do"){
			$(".recruit_tab01").addClass("on");
		}else if(pn == "jobMain.do"){
			$(".recruit_tab02").addClass("on");
		}else if(pn == "talentPool.do"){
			$(".recruit_tab03").addClass("on");
		}else if(pn == "seniorList.do"){
			$(".recruit_tab04").addClass("on");
		}else if(pn == "FAQ.do"){
			$(".recruit_tab05").addClass("on");
		}
	}
}
	
</script>


<body>

	<div id="wrap"><!--[[ wrap Start ]]-->

    <header><!--[[ header Start ]]-->

        <!--[[ skip navigation Start ]]-->
        <p id="skipNavi"><a href="#content" title="메뉴 건너뛰고 본문 바로가기">메뉴 건너뛰고 본문 바로가기</a></p>
        <!--[[ skip navigation End ]]-->

        <div id="top"><!--[[ top Start ]]-->
            <div id="topArea">
                <ul id="topRight">
                    <li><a href="http://localhost:8080/"><img src="/images/company/top_R_menu01.png" alt="투어모아 바로가기"></a></li>
                    <li><span class="dvide"></span></li>
                    <li><a href="/info/headOffice.do"><img src="/images/company/top_R_menu02.png" alt="찾아오시는길"></a></li>
                </ul>
            </div>
        </div><!--[[ top End ]]-->

        <div class="top_banner">
            <ul class="tabWrap">
                <li class="tab intro_tab01"><a href="/company/intro.do">투어모아회사소개</a></li>
                <li class="tab intro_tab02"><a href="/company/svcCharter.do">고객만족경영</a></li>
                <li class="tab intro_tab03"><a href="/company/ethicsGuide.do">윤리경영</a></li>
                <li class="tab intro_tab04"><a href="/company/ciGuide.do">CI소개</a></li>
                <li class="tab intro_tab05"><a href="/company/headOffice.do">위치안내</a></li>
            </ul>
        </div>

    </header><!--[[ header End ]]-->

<section id="content"><!--[[ content Start ]]-->

        <div class="tit ci_tit"></div>
        <div class="intro_ci01">
            <span class="t_para">투어모아의 CI는 기존의 마크를 현대적 감각으로 변화시켜 여행전문회사로서의 이미지를 더욱 강화시킨 것입니다.</span>
            <span class="para">
                Yellow와 고급스러운 디자인을 사용해 풍선에서 느낄 수 있는 풍성함을 표현하고, 전체적으로 색상을 통해 투어모아이 갖는 정통성을 느낄 수 있도록 하였습니다.<br />
                또한 시각적 커뮤니케이션 차원에서 투어모아을 상징하는 풍선과 여행에서 떠오르는 길을 시각적 요소로 함께 배치해 누가 보아도 기억에 남을 수 있게 하여 지금 가독성이<br />
                떨어지는 상호와 난잡한 느낌을 주는 마크를 사용하고 있는 경쟁사와 비교해 차별적이고 보다 전문적인 느낌을 갖도록 제작 되었습니다.<br />
                투어모아의 새로운 CI는 여행 회사 다운 이미지를 강화 하기 위해 강한 인상을 심어주지 못하는 기존의 마크를 현대적인 감각으로 변형 시킴과 동시에 신뢰감을 주며<br />
                고급스러운 색상으로 투어모아 만의 정통성과 풍성함을 표현한 것입니다.
            </span>
        </div>
        <div class="intro_ci02">
            <div class="sigWrapL">
                <span class="sigTit">시그니쳐</span>
                <a href="http://company.tourmoa.co.kr/attachFile/attachCompany/CI/yblogo.zip"><button type="button" id="btnDn01">CI 다운로드</button></a>
                <span class="sigPic">
                    <img src="/images/company/ybsig01.jpg" alt="시그니쳐 1">
                </span>
            </div>
            <div class="sigWrapR">
                <a href="http://company.tourmoa.co.kr/attachFile/attachCompany/CI/yellowballon.zip"><button type="button" id="btnDn01">CI 다운로드</button></a>
                <span class="sigPic">
                    <img src="/images/company/ybsig02.jpg" alt="시그니쳐 2">
                </span>
            </div>
            <div class="colorLine">
                <span class="rect_b yl"></span>
                <span class="colorCd">#F7941D</span>
                <span class="CMYK">( C:0  M:50  Y:100  K:0 )</span>
                <span class="rect_b mt"></span>
                <span class="colorCd">#00B5AD</span>
                <span class="CMYK">( C:75  M:2  Y:39  K:0 )</span>
                <span class="rect_b bk"></span>
                <span class="colorCd">#020205</span>
                <span class="CMYK">( C:0  M:50  Y:0  K:0 )</span>
            </div>
        </div>
        <div class="intro_ci03">
            <span class="useTit">색상활용</span>
            <div class="colorUseL"></div>
            <div class="colorUseR">
                <span class="colorDtl">
                    워드마크가 표현되는 바탕의 색상, 재질 또는 적용매체의 색상표현의 한계등의<br />
                    제약으로 워드마크를 원색으로 표현하기 어려운 경우나 고급감의 극대화 등.<br />
                    특별한 효과가 필요한 경우에는 제시된 색상을 사용할 수 있다.<br />
                    바탕색에 의한 워드마크 색상사용기준은 배경색에 의한 색상활용예를 참고하도록 한다.
                </span>
                <div class="colorLine">
                    <span class="rect_b yl"></span>
                    <span class="colorCd">#F7941D</span>
                    <span class="CMYK">( C:0  M:50  Y:100  K:0 )</span>
                </div>
            </div>
        </div>
    </section><!--[[ content End ]]-->
	<footer><!--[[ footer Start ]]-->
	
	 		<div class="footer_info">
				<div class="tour_info">
					<h3>여행상담 대표 전화번호</h3>
					<p class="norang_tel">1544-2288</p>
					<p class="tel_num"><span>1번 해외여행</span> <span>2번 자유여행</span> <span>3번 국내여행</span> <span>4번 법인단체</span> <span>0번 기타문의</span>
					</p>
				</div>
				<div class="air_info">
					<h3>해외항공상담 대표 전화번호</h3>
					<p class="norang_tel">1644-3399</p>
					<p class="tel_num"><span>1번 항공권 변경문의 </span><span>2번 환불 및 취소문의	</span><span>3번 기타문의</span></p> 
				</div>
				<p class="tel_local">부산지사 : 051-710-7744&nbsp;&nbsp;&nbsp;대구지사 : 053-720-7744</p>
				<p class="info_time">평일: 오전 9시부터 오후 6시 30분까지 / 토요일: 오전9시부터 오후3시까지(일요일 및 공휴일 휴무)</p>
			</div>
	
	        <div id="bottomWrap"><!--[[ bottomWrap Start ]]-->
	
	            <div id="bottom"><!--[[ bottom Start ]]-->
	                  <ul id="bottomL">
	                    <li class="tit">INFOMATION<span class="yellow_line"></span></li>
	                    <li>
	                        <span class="company">(주)투어모아</span> &nbsp;|&nbsp; 대표자 김국진. 강진규. 류석현. 한수경. 김훈영<br />
	                        본사 사업자등록번호 104-81-64440<br />
	                        관광사업자등록증번호 제2006-000003호 <br /> 
	                        통신판매업신고번호 제2008-서울중구-0278<br />
	                        <span class="licence"><a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blink" >사업자정보확인</a></span>
	                    </li>
	                    <li>
	                        부산지사 사업자등록번호 605-85-38384<br />
	                        대구지사 사업자등록번호 504-85-41062
	                    </li>
	                    <li>
	                        영업배상책임보험가입 총 20억원,<br />
	                        인허가보증보험가입 5억원,<br />
	                        한국관광협회중앙회 여행공제회 공제영업보증가입 10억원
	                    </li>
	                </ul>
	                <ul id="bottomM">
	                    <li class="tit pdt0">ADDRESS<span class="yellow_line"></span></li>
	                    <li class="line pdt0">
	                        <span class="phone">1544-2288</span><span class="email">master@tourmao.co.kr</span>
	                    </li>
	                    <li class="line">
	                        <span class="txt">본사 : 서울특별시 중구 수표로 31, 투어모아빌딩</span>
	                    </li>
	                    <li class="line">
	                        <span class="txt">부산지사 : 부산광역시 진구 중앙대로 708 부산 파이낸스센터 13층</span>
	                    </li>
	                    <li>
	                        <span class="txt">대구지사 : 대구광역시 중구 달구벌대로 2095 11층 (삼성생명빌딩)</span>
	                    </li>
	                     <li class="copyright">
	                        Copyright &copy; 2015 YBTOUR. All rights reserved.
	                    </li>
	                </ul>
	                <ul id="bottomR">
	                    <li class="tit">SNS<span class="yellow_line"></span></li>
	                    <li class="sns">
	                        <span><a href="http://plus.kakao.com/home/dv8xogt8" target="_blank"><img src="/images/footer/bottom_sns_cacao.png" alt="옐로아이디 (카카오톡)" /></a></span>                        
	                        <span><a href="https://story.kakao.com/ch/TOURMOA" target="_blank"><img src="/images/footer/bottom_sns03.png" alt="카카오스토리 바로가기" /></a></span>
	                        <span><a href="https://ko-kr.facebook.com/yellowballoontour" target="_blank"><img src="/images/footer/bottom_sns01.png" alt="페이스북 바로가기" /></a></span>
	                        <span><a href="https://www.instagram.com/TOURMOA_official/" target="_blank"><img src="/images/footer/bottom_sns06.png" alt="인스타그램 바로가기" /></a></span>					
	                        <span><a href="http://blog.naver.com/yb_tour" target="_blank"><img src="/images/footer/bottom_sns04.png" alt="블로그 바로가기" /></a></span>						
							<span><a href="http://post.naver.com/_TOURMOA" target="_blank"><img src="/images/footer/bottom_sns_naver.png" alt="네이버포스트" /></a></span>
	                    </li>
	                  <!--   <li class="tit2">옐로트립 SNS<span class="yellow_line"></span></li>
	                     <li class="sns">
	                        <span><a href="https://story.kakao.com/ch/yellowtrip" target="_blank"><img src="/images/bottom_sns03.png" alt="카카오스토리 바로가기" /></a></span>                        
							<span><a href="https://brunch.co.kr/@yellowtrip" target="_blank"><img src="/images/bottom_sns07.png" alt="브런치 바로가기" /></a></span>
							<span><a href="http://post.naver.com/yb_tour" target="_blank"><img src="/images/bottom_sns_naver.png" alt="네이버포스트" class="no1" /></a></span>
						</li>	      
	                   -->
	                </ul>
	
	                <script>function go_url(url){ if(url != '') window.open(url, '_blank'); }</script>
	
	                <ul id="mark">
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup1.html" onclick="showLayer(this);"><img src="/images/company/bottom_img01.png" alt="CCM" /></a></li>
	                    <li><a href="http://www.kmac.co.kr/certify/cert_sys06.asp" target="_blank"><img src="/images/company/bottom_img09.png" alt="고객가치 최우수 상품" /></a></li>
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup2.html" onclick="showLayer(this);"><img src="/images/company/bottom_img02.png" alt="KS-WCI" /></a></li>
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup3.html" onclick="showLayer(this);"><img src="/images/company/bottom_img03.png" alt="KS-QEI" /></a></li>
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup4.html" onclick="showLayer(this);"><img src="/images/company/bottom_img07.png" alt="SCSI 대한민국 소셜미디어대상 1위" /></a></li>
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup5.html" onclick="showLayer(this);"><img src="/images/company/bottom_img06.png" alt="경영혁신형 중소기업 선정" /></a></li>
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup6.html" onclick="showLayer(this);"><img src="/images/company/bottom_img04.png" alt="서울특별시 일자리창출 우수기업선정 마크" /></a></li>
	                    <li><a href="javascript:;" role-h="610" role-url="/html/common/awards_popup7.html" onclick="showLayer(this);"><img src="/images/company/bottom_img05.png" alt="취업하고 싶은 기업 정 마크" /></a></li>
						<li><a href="http://www.smartoutbound.or.kr/guide/html/guideInfo4.do?menu_code=0000000016" target="_blank"><img src="/images/company/bottom_img08.png" alt="국외여행상품 정보제공 표준안 참여여행사 마크" /></a></li>
					</ul>
	
	            </div><!--[[ bottom End ]]-->
	
	        </div><!--[[ bottomWrap End ]]-->
	
	    </footer><!--[[ footer End ]]-->
</div><!--[[ wrap End ]]--></body>
</html>