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
	var pn = "ethicsGuide.do";
	
	
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

        <div class="tit ethics_tit"></div>
        <span class="subTit">윤리강령</span>
        <div class="c_ethics01">
            <span class="t_para">투어모아여행사의 경영이념인 "고객만족경영", "직원만족경영", "21세기전략경영"을 창조하기 위해 임직원 각자가 지켜야 할 바람직한 행동과 가치판단의 기준을 윤리강령으로 제정한다.</span>
            <span class="diagram01"></span>
            <div class="e_policyWrap">
                <div class="pol_l">
                    <span class="tDash"></span>
                    <span class="polTit">1.고객만족의 원칙</span>
                    <span class="policyLine">투어모아 임직원은 고객가치를 최우선으로 삼고 최상의 상품과 서비스를 제공하여 고객의 만족과 신뢰를 확보한다.</span>
                </div>
                <div class="pol_r">
                    <span class="tDash"></span>
                    <span class="polTit">2.인간존중의 원칙</span>
                    <span class="policyLine">투어모아여행사는 뚜렷한 비전을 제시하고 임직원의 개성과 창의를 존중하며 능력과 업적에 따라 동등하고 공정하게 대우하여 행복한 일자리를 제공한다.</span>
                </div>
                <div class="pol_l">
                    <span class="tDash"></span>
                    <span class="polTit">3.신의성실의 원칙</span>
                    <span class="policyLine">투어모아 임직원은 사회의 법령과 문화를 존중하고 신의성실을 바탕으로 업무를 수행하며 기업의 지속적인 발전에 힘쓴다.</span>
                </div>
                <div class="pol_r">
                    <span class="tDash"></span>
                    <span class="polTit">4.동반성장의 원칙</span>
                    <span class="policyLine">투어모아 임직원은 회사의 명예와 개인의 품위를 지킴으로써 고객과 거래처에 존중와 신뢰를 받고, 거래처와의 동반 성장을 추구한다.</span>
                </div>
                <div class="pol_l last">
                    <span class="tDash"></span>
                    <span class="polTit">5.청렴정직의 원칙</span>
                    <span class="policyLine">투어모아 임직원은 정직함을 바탕으로 업무와 관련한 모든 이해관계자에게 어떠한 명목으로도 금전적, 비금전적 이익을 요구하거나 수취하지 않는다.</span>
                </div>
                <div class="pol_r last">
                    <span class="tDash"></span>
                    <span class="polTit">6.공사구분의 원칙</span>
                    <span class="policyLine">투어모아의 임직원은 업무수행 중에 개인과 회사가 상충되는 경우에는 회사의 이익을 우선으로 하며 사사로운 이익에 회사재산을 이용하지 않는다.</span>
                </div>
            </div>
        </div>

        <span class="subTit">비윤리 행위 신고와 처리절차</span>
        <div class="c_ethics02">
            <div class="diagram02">
                <div class="step_bg">
                    <span>기본방향</span>
                </div>
                <div class="step_line"><span></span></div>
                <div class="step_bg">
                    <span>제보방법</span>
                </div>
                <div class="step_line"><span></span></div>
                <div class="step_bg">
                    <span>제보자</span>
                </div>
                <div class="step_line"><span></span></div>
                <div class="step_bg">
                    <span>조사결과<br />처리</span>
                </div>
            </div>
            <div class="step_desc">
                <span class="descTit">기본방향</span>
                <span>① 전 임직원 및 외부 이해관계자를 대상으로 내부신고보호제도 운영</span>
                <span class="descLine">- 가. 투어모아 임직원 및 투어모아과 관련된 외부 이해관계자의 각종 부조리 사항 접수</span>
                <span class="descLine">- 나. 제보자는 실명제보를 원칙으로 하되, 익명 제보일 경우라도 증거가 명확하거나 회사의 피해가 우려될 경우 조사 대상에 포함 가능</span>
            </div>
            <div class="step_desc">
                <span class="descTit">제보방법</span>
                <span>① 사이버신문고 : http://www.tourmoa.co.kr 내 윤리경영신고</span>
                <span>② e-mail : jebo@ybtour.com</span>
                <span>③ 전화 : 02-2022-7294</span>
                <span>④ 직접 방문 : 경영기획본부</span>
                <span>⑤ 우편신고 : 서울특별시 중구 수표로 31, 투어모아빌딩 경영기획본부</span>
            </div>
            <div class="step_desc">
                <span class="descTit">제보자</span>
                <span>① 실명 : 제보자 익명성 보장, 책임감면(자진신고자의 경우 익명보장 및 최대한 책임감면)</span>
                <span>② 비실명 : 사실에 근거하되 허위 및 음해성 제보는 접수하지 않음</span>
            </div>
            <div class="step_desc last">
                <span class="descTit">조사결과 처리</span>
                <span>① 접수부서 : 경영기획본부 - 접수된 날로부터 30일 이내에 조사를 종결한다. 다만, 사유가 있는 경우에는 30일 범위에서 그 기간을 연장할 수 있으며,</span>
                <span class="nLine">신고자에게 그 연장사유 및 처리예정기간을 통보하여야 한다.</span>
                <span>② 전담부서는 조사 종료 후 10일 이내에 신고자에게 그 결과를 통보하여야 한다. 다만, 신고자가 회신을 원하지 않을 경우에는 생략할 수 있다.</span>
                <span>③ 자체종결 : 신고내용을 면밀히 검토하여 비위 정도가 약하고 조사실익이 없다고 판단될 경우 자체 종결 처리한다.</span>
            </div>
        </div>
        <span class="subTit">윤리경영 신고</span>
        <span class="secPara">Global Travel Leader 투어모아</span>
        <span class="secTit">윤리경영 신고(신문고)소개</span>
        <div class="c_ethics03">
            <div class="paraWrap">
                <span>투어모아은 소비자 중심경영을 바탕으로 운영하고 있습니다.</span>
                <span>임직원의 직무와 관련한 부정, 부조리행위를 제보하여 주시면 즉시 조치하겠습니다.</span>
                <span>투어모아의 임직원의 부정, 부조리 등에 대한 제보를 받으며 사실에 근거하지 않은 사항은 처리되지 않습니다.</span>
                <span>신고자의 신원은 철저히 보장해 드리며 비밀은 절대적으로 보호됩니다.</span>
                <span>신고내용은 최대한 빠른 시일내에 처리하도록 하겠습니다.</span>
                <span class="ps">*윤리경영신고와 성격이 맞지않는 내용은 회신하지 않습니다.</span>
            </div>
            <div class="listWrap">
                <div class="listL">
                    <ul>
                        <li>-거래업체로부터 뇌물(금품포함)및 향응 수수</li>
                        <li>-거래업체 및 임직원간 금전거래</li>
                        <li>-회사공금의 횡령 및 절도</li>
                        <li>-근무기간 관련 사항</li>
                        <li>-회사정보 및 개인정보유출 행위</li>
                        <li>-부정, 부조리 행위</li>
                    </ul>
                    <a href="#wrap" title="" role-w="1100" role-h="933" role-url="/info/ethicsClaim.do"  onclick="showLayer(this);">
                    <button type="button" id="btn01">신고하기</button>
                    </a>
                </div>
                <div class="listR">
                    <ul>
                        <li>-서비스 관련 불편, 불친절</li>
                    </ul>
                    <a href="http://www.tourmoa.co.kr/customer/complaintWrite.do"><button type="button" id="btn02">신고하기</button></a>
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