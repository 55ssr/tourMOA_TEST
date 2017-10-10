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
    <script type="text/javascript"  src="/js/ui_company.js"></script>
    <script type="text/javascript"  src="/js/common.js"></script>
	<script type="text/javascript"  src="/js/jquery.validate.js"></script>
    <script type="text/javascript"  src="/js/jquery.simplemodal-1.4.4.js"></script>
</head>


<script type="text/javascript">
$(document).ready(function(){
	
	var pt = "info";
	var pn = "intro.do";
	
	
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

        <div class="tit intro_tit"></div>

        <span class="subTit">개요</span>

        <div class="c_summary"><!--[[ 회사개요 Start ]]-->
            <span class="sumTit">회사명</span>
            <span class="sumDtl">(주)투어모아</span>
            <span class="sumTit last">대표이사</span>
            <span class="sumDtl last">김국진/강진규/류석현/한수경/김훈영</span>
            <span class="sumTit">URL</span>
            <span class="sumDtl">www .tourmoa.co.kr / m.tourmoa.co.kr</span>
            <span class="sumTit last">상근종업원</span>
            <span class="sumDtl last">450명</span>
            <span class="sumTit">업 종</span>
            <span class="sumDtl">국내외 여행정보 서비스 / 기업해외연수 기획 개발<br />국내외 여행상품 판매 / 국내외 항공권 판매</span>
            <span class="sumTit last">등록분야</span>
            <span class="sumDtl last">일반여행업 서울 87호</span>
            <span class="sumTit clear">자본금</span>
            <span class="sumDtl">20억원</span>
            <span class="sumTit last">창 립 일</span>
            <span class="sumDtl last">2001년 9월 1일</span>
            <span class="sumTit">회사주소</span>
            <span class="sumDtl">서울특별시 중구 수표로 31, 투어모아빌딩</span>
            <span class="sumTit last">대표전화</span>
            <span class="sumDtl last">1544-2288    FAX : (02)774-3993</span>
        </div><!--[[ 회사개요 End ]]-->
        
        <span class="secTit">투어모아 경영이념</span>

        <div class="c_idea"><!--[[ 경영이념 Start ]]-->
            <span class="c_nm">투어모아</span>
            <span class="coreBox Box01">
                <span class="coreTit">직원 만족 경영</span>
                <span class="coreDtl">전임직원이 고객만족에 전념할 수 있도록<br />회사는 직원의 복리후생 및 처우 개선에 힘쓴다.</span>
            </span>
            <span class="coreBox Box02">
                <span class="coreTit">고객 만족 경영</span>
                <span class="coreDtl">전임직원은 준비된 서비스 정신을 바탕으로<br />고객에게 신속하고 친절한 서비스를 제공한다.</span>
            </span>
            <span class="coreBox Box03">
                <span class="coreTit">21세기 전략 경영</span>
                <span class="coreDtl">21세기 대한민국을 대표하는 브랜드로 성장할 수<br />있도록 창의적 idea를 토대로 한 전략경영에 힘쓴다.</span>
            </span>
        </div><!--[[ 경영이념 End ]]-->

        <span class="secTit">투어모아 사업영역</span>

        <div class="b_part"><!--[[ 사업영역 Start ]]-->
            <div class="partWrap p01">
                <span class="partTit">시장선도</span>
                <span class="partSubTit">여행분야의 글로벌 리더</span>
                <span class="partDtl">국내,외 여행상품을 통한 다양한 여행문화로<br />고객의 needs에 맞는 시장을 선도하여<br />여행문화의 글로벌화 실현</span>
            </div>
            <div class="partWrap p02">
                <span class="partTit">고객선도</span>
                <span class="partSubTit">고객을 위한 최고의 가치실현</span>
                <span class="partDtl">회사 내, 외의 모든 시스템을 고객의, 고객에 의한,<br />고객을 위한 시스템 정착을 통해 고객을 위한<br />최고의 신뢰 경영 실현</span>
            </div>
            <div class="partWrap p03">
                <span class="partTit">경영선도</span>
                <span class="partSubTit">정도 경영을 통한 국민 기업</span>
                <span class="partDtl">대외로 정도 경영과 대내로 투명 경영을<br />통한 미래의 성장 동력 산업에 제1의 여행<br />국민 기업 실현</span>
            </div>
        </div><!--[[ 사업영역 End ]]-->

        <span class="subTit">비전</span>

        <div class="c_vision"><!--[[ 비전 Start ]]-->
            <span class="txt01">여행문화의 희망은 투어모아입니다.</span>
            <span class="txt02">
                투어모아은 2001년 설립과 함께 Global travel leader 기업이라는 비전을 향해 나아가고 있습니다. 창립 년도부터 지속적인 성장세와 매년 경영과제 설정을 통하여<br />
                업계에 괄목할 만한 내실경영으로 성장해 왔습니다. 2005년도에는 전략경영 도입을 통해 미래 Business portfolio에 맞는 시스템을 구축하였으며, 인재 육성 기반을 통하여<br /> 
                조직 활성화로 건강한 기업문화 정립에 힘쓰고 있습니다. 
            </span>
            <span class="txt02">
                설립 초기부터 유수의 항공사와 대리점 계약을 통해 매년 최우수 여행사로 선정되었으며, 설립 이념인 모든 서비스는 사람을 위한, 행복을 위한, 고객 한 분 한 분의 따뜻한<br />
                미소를 위한 서비스란 취지로 여행업계에 우뚝 서서 나아가고 있습니다.
            </span>
            <span class="txt02 last">
                앞으로 지속적인 가치증대를 위한 기존의 안정적 성장기반을 갖춘 주력사업의 지속적 성장과 높은 성장성을 지닌 신규사업 전개, 그리고 업종 환경 Trend에 변화에 따른<br />
                고부가가치 비즈니스 모델의 발굴과 적용을 통해 더욱 더 비약적인 발전을 도모하고자 합니다. 
            </span>
        </div><!--[[ 비전 End ]]-->

        <span class="subTit">사업영역</span>

        <div class="b_partWrap"><!--[[ 사업영역 Start ]]-->
            <span class="partWrapTit">(주)투어모아과 함께 Business를 펼쳐 나가십시오.</span>
            <span class="partWrapDtl">
                21세기 여행포탈 서비스를 대표하는 업체로서 급변하는 여행시장 정보와 고객의 Mind에 부합하는 다각적인 서비스 개선과 업무 system 구축 그리고 전세계를 연결하는 통합<br />
                On-line System을 구축함으로써 지금까지 축척된 사업 Infra를 토대로 일원화된 고객 서비스를 하고있는 (주)투어모아과 함께 여러분들의 Business를 펼쳐 나가십시오.
            </span>
            <div class="busi_part partL part01">
                <span class="hyphen"></span>
                <span class="partTit">해외패키지 예약서비스(Package)</span>
                <span class="partDtl">동남아, 대양주, 남태평양, 유럽, 미주, 중국, 일본, 필리핀 등<br />전 세계 맞춤여행</span>
            </div>
            <div class="busi_part partR part02">
                <span class="hyphen"></span>
                <span class="partTit">항공권(Air Ticket)</span>
                <span class="partDtl">
                    - 세계 주요 도시 항공권 예약 및 발권<br />
                    - 국내항공권 예약 및 발권<br />
                    - 단체 그룹 예약 및 발권
                </span>
            </div>
            <div class="busi_part partL part03">
                <span class="hyphen"></span>
                <span class="partTit">허니문 여행(Honeymoon)</span>
                <span class="partDtl">
                    - 동남아, 남태평양, 유럽, 미주 등 전 세계 여행<br />
                    - 고품격 맞춤 허니문
                </span>
            </div>
            <div class="busi_part partR part04">
                <span class="hyphen"></span>
                <span class="partTit">해외호텔(Hotel)</span>
                <span class="partDtl">
                    - 전 세계 호텔 예약 대행<br />
                    - 제주 호텔 예약 대행
                </span>
            </div>
            <div class="busi_part partL part05">
                <span class="hyphen"></span>
                <span class="partTit">배낭 여행 & 개별 여행(FIT)</span>
                <span class="partDtl">
                    - 유럽, 미주, 대양주, 동남아, 일본, 중국, 특수지역 등 전 세계 맞춤여행<br />
                    - 전 세계 항공권 예약<br />
                    - 전 세계 호텔 및 유레일 패스 예약
                </span>
            </div>
            <div class="busi_part partR part06">
                <span class="hyphen"></span>
                <span class="partTit">국내여행</span>
                <span class="partDtl">
                    - 문화유적 탐방여행<br />
                    - 제주 패키지 여행<br />
                    - 골프 및 렌터카 예약<br />
                    - 제주 특급 호텔 예약
                </span>
            </div>
            <div class="busi_part partL part07">
                <span class="hyphen"></span>
                <span class="partTit">골프 & 테마 여행(Golf & Theme)</span>
                <span class="partDtl">
                    - 골프투어, 가족여행, 크루즈여행<br />
                    - 휴양여행, 성지순례, 문화탐방 등
                </span>
            </div>
            <div class="busi_part partR part08">
                <span class="hyphen"></span>
                <span class="partTit">기업체, 단체 등 상용 인센티브 여행</span>
                <span class="partDtl">
                    - 국제회의 및 박람회<br />
                    - 기업, 단체 연수<br />
                    - 기업체, 단체 포상<br />
                    - 대학교<br />
                    - 지역 모임 등
                </span>
            </div>
        </div><!--[[ 사업영역 End ]]-->

        <span class="subTit">연혁</span>

        <div id="history" class="c_history"><!--[[ 연혁 Start ]]-->
            <ul class="historyTab">
                <li><a href="#history">2001~2003</a></li>
                <li><a href="#history">2004~2006</a></li>
                <li><a href="#history">2007~2009</a></li>
                <li><a href="#history">2010~2012</a></li>
                <li><a href="#history">2013~2014</a></li>                
                <li class="on"><a href="#history">2015~현재</a></li>
            </ul>             
            <div class="historyWrap tab01">
                <div class="historyL mg0"><span>2003</span></div>
                <div class="historyR mg0">
                    <span class="yPointTop"></span>
                    <span class="mm">01월</span>
                    <span class="dtl">
                        캐세이패시픽 BEST AGENCY 선정
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        중화항공 최우수 여행사
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        란칠레 항공 최우수 여행사 선정
                    </span>
                    <span class="mm">10월</span>
                    <span class="dtl">
                        투어모아 본사 확장 이전
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                        투어모아 법인명 변경 등록
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        아시아나 항공사 최우수 대리점 선정
                    </span>
                </div>
                <div class="historyL"><span class="yy">2002</span></div>
                <div class="historyR">
                   <span class="yPoint"></span>
                   <span class="mm">01월</span>
                    <span class="dtl">
                        아시아나항공 판매 실적 우수 여행사
                    </span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        아시아나항공 광고지원 여행사 선정<br />
                        우즈백항공 최다판매 여행사
                    </span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        중국동방항공 최다판매 여행사
                    </span>
                    <span class="mm">06월</span>
                    <span class="dtl">
                        홈페이지 및 자체 예약 솔루션 업그레이드 OPEN
                    </span>
                </div>
                <div class="historyL"><span class="yy">2001</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        ㈜출발드림투어 설립<br />
                        ㈜출발드림투어 법인등록
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        투어모아 브랜드 선정
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                        아시아나 복지 사이트 주관여행사 선정
                    </span>
                </div>
            </div>
            
            <div class="historyWrap tab02">
                <div class="historyL mg0"><span>2006</span></div>
                <div class="historyR mg0">
                    <span class="yPointTop"></span>
                    <span class="mm">01월</span>
                    <span class="dtl">
                        제25회 춘계 한국 결혼 상품 전시회 참여 (웨덱스 코리아 2006)
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        사업종목 변경 - 일반 여행업 등록
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                        투어모아 본사 확장 이전<br />
                        투어모아 CI 변경<br />
                        자본금 증자 - 5억원
                    </span>
                    <span class="mm">08월</span>
                    <span class="dtl">
                        코엑스 웨딩 박람회 참여
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                        항공사업 및 개별여행 전담부서 신설, 고객만족팀 신설
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        머니투데이 2006년 히트브랜드 선정 "투어모아
                    </span>
                </div>
                <div class="historyL"><span class="yy">2005</span></div>
                <div class="historyR">
                   <span class="yPoint"></span>
                   <span class="mm">05월</span>
                    <span class="dtl">
                        투어모아 본사 확장이전
                    </span>
                    <span class="mm">06월</span>
                    <span class="dtl">
                        장보고 유적지 답사단 전담 여행사 선정 (주최)해양수산부
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                        한국여행산업을 이끄는 영향력있는 인물 45인에 선정
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        3년 연속 아시아나항공 최우수 대리점 선정<br />
                        중화항공 최우수 판매 AGENCY 선정
                    </span>
                </div>
                <div class="historyL"><span class="yy">2004</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        투어모아 홈페이지 개편 및 로고 교체
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                        한국관광사업을 이끄는 영향력 있는 인물 15위 선정
                    </span>
                    <span class="mm">08월</span>
                    <span class="dtl">
                        분당 대리점 오픈
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        2004년 아시아나항공 최우수 대리점선정<br />
                        2004년 중화항공 판매 1위 여행사 선정<br />
                        2004년 세부퍼시픽 항공 PKG 판매 1위 여행사 선정<br />
                        2003년~2004년 우즈백 항공 송출 1위 여행사 선정<br />
                        2004년 네덜란드 항공 우수 대리점 선정<br />
                        2004년 케세이퍼시픽 항공 우수 대리점 선정
                    </span>
                </div>
            </div>
            
                 <div class="historyWrap tab03">
                <div class="historyL mg0"><span>2009</span></div>
                <div class="historyR mg0">
                    <span class="yPointTop"></span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        문화관광대상 업계부문 수상<br />
                        투어모아 캐릭터 '여행비타민 노랑씨(C)' 제작<br />
                        LAN 칠레항공 최우수여행사 선정(6년 연속)
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        SBS 드라마 '천만번 사랑해' 제작지원
                    </span>
                    <span class="mm">10월</span>
                    <span class="dtl">
                        아시아나 마일리지 투어 오픈
                    </span>
                </div>
                <div class="historyL"><span class="yy">2008</span></div>
                <div class="historyR">
                   <span class="yPoint"></span>
                   <span class="mm">07월</span>
                    <span class="dtl">
                        미래에셋증권과 IPO 계약
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                        터키항공 판매 실적 우수여행사 선정
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        머니투데이 2008년 히트상품 선정 "투어모아 실속여행상품"
                    </span>
                </div>
                <div class="historyL"><span class="yy">2007</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">01월</span>
                    <span class="dtl">
                        코엑스 한국 결혼 상품전
                    </span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        대만 중화항공 최우수실적 여행사 선정<br />
                        개별여행 전문 브랜드 노랑스케치 런칭
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                        온라인 제휴사 오픈 - 투어캐빈
                    </span>
                    <span class="mm">08월</span>
                    <span class="dtl">
                        이사 및 감사 추가 선임
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        자본금 15억 증가(총 자본금 20억원)
                        SBS 드라마 '조강지처클럽' 제작지원
                    </span>
                    <span class="mm">10월</span>
                    <span class="dtl">
                        아메리칸 에어라인 2007년 상반기 실적우수 표창
                    </span>
                    <span class="mm">10월</span>
                    <span class="dtl">
                        2007 남아프리카 항공사 최우수판매대리점
                    </span>
                </div>
            </div>
            
              <div class="historyWrap tab04">
                <div class="historyL mg0"><span>2012</span></div>
                <div class="historyR mg0">
                    <span class="yPointTop"></span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        2011년도 아시아나항공 최우수여행사 선정
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        창립 11주년 기념 김정운교수 초청 '노랑쇼'토크콘서트 개최
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                        서울시 일자리 창출 우수기업 선정
                    </span>
                    <span class="mm">08월</span>
                    <span class="dtl">
                        청운보육원 자매결연 협약식<br />
                        장종훈 전무 CCO 임명<br />
                        한국표준협회 선정 한국소비자 웰빙지수 레저문화 여행사부문 2년연속 1위
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        한국표준협회 선정 한국품질만족지수 관광서비스 여행사부문 1위<br />
                        한국경영혁신중소기업협회 주관 메인비즈(MAIN BIZ)인증획득
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                        한국인터넷소통협회 주관 대한민국소셜미디어 여행부문 대상
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        한국철도공사(KORAIL)와 업무협약 체결
                    </span>
                </div>
                <div class="historyL"><span class="yy">2011</span></div>
                <div class="historyR">
                   <span class="yPoint"></span>
                   <span class="mm">01월</span>
                    <span class="dtl">
                        2010년도 아시아나 최우수여행사 선정
                    </span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        SBS 드라마 '신기생뎐' 제작지원
                    </span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        대한항공 우수 대리점 선정 
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        부산지사 설립
                    </span>
                    <span class="mm">06월</span>
                    <span class="dtl">
                        크루즈팀 신설
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        한국표준협회 선정 한국소비자웰빙지수 레저문화 여행사부문 1위<br />
                        MBC 시트콤 '하이킥' 제작지원
                    </span>
                </div>
                <div class="historyL"><span class="yy">2010</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        대만관광대상
                    </span>
                    <span class="mm">04월</span>
                    <span class="dtl">
                        대한항공 우수대리점 선정<br />
                        LAN 칠레항공 최우수여행사 선정(7년 연속)<br />
                        개별여행 브랜드 노랑스타일로 변경
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        SBS드라마 '이웃집웬수' 제작지원
                    </span>
                    <span class="mm">06월</span>
                    <span class="dtl">
                        온라인 제휴사 오픈 - 투어자키
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        온라인 제휴사 오픈 - Cjmall
                    </span>
                    <span class="mm">12월</span>
                    <span class="dtl">
                        아메리칸 에어라인 2010년 실적우수 표창
                    </span>
                </div>
            </div>
            
            <div class="historyWrap tab05">
 
                <div class="historyL"><span class="yy">2014</span></div>
                <div class="historyR">
                   <span class="yPointTop"></span>
                   <span class="mm">01월</span>
                    <span class="dtl">
                        항공 홀세일 전문 사이트 '노랑e' 오픈
                    </span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        2013년도 아시아나항공 최우수 판매여행사 선정<br />
                        2013년도 아시아나항공 국내여객판매 최우수여행사 선정
                    </span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        대한항공 우수 대리점 선정 
                    </span>
                    <span class="mm">04월</span>
                    <span class="dtl">
                        대구지사 설립<br />
                        투어모아 전속모델 이서진 계약체결<br />
                        공중파 TV CF, RADIO 광고캠페인 진행 
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        서울관광고등학교와 산학협약 체결<br />
                        중국 산동성여유국과 전략제휴 협약 체결 
                    </span>
                    <span class="mm">06월</span>
                    <span class="dtl">
                        경복비즈니스고등학교와 산학협약 체결
                    </span>
                    <span class="mm">08월</span>
                    <span class="dtl">
                        한국표준협회 선정 한국소비자웰빙지수 여행사부문 4년연속 1위
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        관광인재 육성지원 프로젝트 제1회 ‘드림라이딩’ 진행<br />
                        한국표준협회 선정 한국품질만족지수 관광서비스 여행사부문 3년연속 1위                        
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                        서울특별시교원단체총연합회와 업무협약 체결<br />
                        법보신문과 업무협약 체결<br />
                        한국인터넷소통협회 주관 대한민국소셜미디어대상 여행부문 3년연속 대상
                    </span>
                </div>
                <div class="historyL"><span class="yy">2013</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">01월</span>
                    <span class="dtl">
                        한국소비자원/공정거래위원회 소비자중심경영(CCM) 인증 획득<br />
                        이베이코리아(Ebay Korea) 2012년 우수판매사 여행부문 1위 선정
                    </span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        대표번호 변경(1544-2288)<br />
                        2012년도 아시아나항공 최우수여행사 선정
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        공중파TV CF, RADIO CM 광고런칭<br />
                        예본안과 네트워크와 업무협약 체결
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                        한국소비자원/한국관광공사 주관 패키지 해외여행서비스 소비자만족도조사 2위<br />
                        서울특별시농아인협회와 업무협약 체결
                    </span>
                    <span class="mm">08월</span>
                    <span class="dtl">
                        한국표준협회 선정 한국소비자 웰빙지수 레저문화 여행사 부문 3년연속 1위
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        한국표준협회 선정 한국품질만족지수 관광서비스 여행사부문 2년연속 1위<br />
                        중소기업기술혁신협회(INNOBIZ)/매일경제신문사 주관 '2013 취업하고 싶은 기업' 선정
                    </span>
                    <span class="mm">10월</span>
                    <span class="dtl">
                        스카이72(주)와 업무협약 체결
                    </span>
                </div>
            </div>

            <div class="historyWrap tab06">
            	<div class="historyL mg0"><span>2017</span></div>
                <div class="historyR mg0">
                    <span class="yPointTop"></span>
                    <span class="mm">01월</span>
                    <span class="dtl">
                        한국소비자원/공정거래위원회 소비자중심경영(CCM) 3회 연속 인증 획득
                    </span>
					 <span class="mm">02월</span>
                    <span class="dtl">
                        코스닥 상장 대표주관사 계약 체결
                    </span>
					<span class="mm">05월</span>
                    <span class="dtl">
                       공중파 TV CF, RADIO 광고캠페인 진행
                    </span>
                    <span class="mm">07월</span>
                    <span class="dtl">
                       한국능률협회컨설팅주관, '2017 THE PROUD 고객가치 최우수상품' 여행사 부문 1위 
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                       한국표준협회 선정 한국품질만족지수 관광서비스 여행사부문 6년 연속 1위
                    </span>
				</div>
				
				<div class="historyL"><span>2016</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        자체 통합정보시스템 ‘코러스’ 구축 및 홈페이지 개편
                    </span>
                    <span class="mm">04월</span>
                    <span class="dtl">
                        최명선 상무 최고고객책임자(CCO) 임명 
                    </span>
                    <span class="mm">05월</span>
                    <span class="dtl">
                        중구 을지로 소재 신사옥 ‘투어모아빌딩’ 본사 이전
                    </span>
                    <span class="mm">06월</span>
                    <span class="dtl">
                        투어모아 공중파 TV CF 광고캠페인 진행 
                    </span>
                    <span class="mm">09월</span>
                    <span class="dtl">
                        관광인재 육성지원 프로젝트 제3회 ‘드림라이딩’ 진행 <br />
                       한국표준협회 선정 한국품질만족지수 관광서비스 여행사부문 5년연속 1위                        
                    </span>
                    <span class="mm">10월</span>
                    <span class="dtl">
                       서울중부경찰서 여행문화증진 업무협약(MOU) 체결                     
                    </span>
                    <span class="mm">11월</span>
                    <span class="dtl">
                       한국인터넷소통협회 주관 대한민국소셜미디어대상 여행부문 5년연속 대상         
                    </span>
					  <span class="mm">12월</span>
                    <span class="dtl">
                       서울백병원 업무협약(MOU) 체결         
                    </span>
                 </div>
                <div class="historyL"><span>2015</span></div>
                <div class="historyR">
                    <span class="yPoint"></span>
                    <span class="mm">01월</span>
                    <span class="dtl">
                        한국소비자원/공정거래위원회 소비자중심경영(CCM) 2회 연속 인증 획득<br />
                        당진시 · 합덕성당과 업무협약 체결
                    </span>
                    <span class="mm">02월</span>
                    <span class="dtl">
                        《Yellow Trip》 매거진 창간
                    </span>
                    <span class="mm">03월</span>
                    <span class="dtl">
                        (주)데니스코리아와 업무협약을 통한 [The Simpsons 가족여행] 런칭
                    </span>
					<span class="mm">05월</span>
                    <span class="dtl">
                        투어모아 전속모델 이서진, 최지우 계약체결<br />공중파 TV CF, RADIO 광고캠페인 진행
                    </span>
					<span class="mm">08월</span>
                    <span class="dtl">
                        한국표준협회 선정 한국소비자 웰빙지수 5년연속 1위, 황금나비상 수상
                    </span>
					<span class="mm">09월</span>
                    <span class="dtl">
                        관광인재 육성지원 프로젝트 제2회 ‘드림라이딩’ 진행 <br />
						한국표준협회 선정 한국품질만족지수 관광서비스 여행사부문 4년연속 1위
						
                    </span>
					<span class="mm">10월</span>
                    <span class="dtl">
                        한국경영혁신중소기업협회 주관 메인비즈(MAIN BIZ) 재인증 획득
                    </span>
					<span class="mm">11월</span>
                    <span class="dtl">
                       부산지사 이전<br />한국인터넷소통협회 주관 대한민국소셜미디어대상 여행부문 4년연속 대상
                    </span>

                </div>
        </div>
       



        </div><!--[[ 연혁 End ]]-->

        <span class="subTit">제휴</span>

        <div class="c_coorp"><!--[[ 제휴 Start ]]-->
            <table>
                <caption>제휴</caption>
                <tbody>
                    <tr>
                        <th class="align-t">온라인 제휴</th>
                        <td><img src="/images/company/coorp_logo01.jpg" alt="네이버, 다음, 지마켓, 오투어, 투어캐빈, 옥션, 롯데아이몰, 위메프, 티몬, 에이케이몰, 지구, 땡처리닷컴, 아시아나, 십일번가, 쿠팡"></td>
                    </tr>
                    <tr>
                        <th>미디어 제휴</th>
                        <td><img src="/images/company/coorp_logo02.jpg" alt="엠비씨, 케비에스, 에스비에스, 티비엔"></td>
                    </tr>
                    <tr>
                        <th>언론 제휴</td>
                        <td><img src="/images/company/coorp_logo03.jpg" alt="조선일보, 동아일보, 중앙일보"></td>
                    </tr>
                    <tr>
                        <th>홈쇼핑 제휴</td>
                        <td><img src="/images/company/coorp_logo04.jpg" alt="엔에스홈쇼핑, 롯데홈쇼핑, 홈엔쇼핑, 지에스샵"></td>
                    </tr>
                    <tr>
                        <th>금융 제휴</td>
                        <td><img src="/images/company/coorp_logo05.jpg" alt="롯데카드, 케이비국민은행, 신한은행, 우리나라 우리은행, 우체국 예금"></td>
                    </tr>
                    <tr>
                        <th>면세점 제휴</td>
                        <td><img src="/images/company/coorp_logo06.jpg" alt="롯데인터넷면세점, 신세계면세점, 엔타스면세점, 더그랜드면세점"></td>
                    </tr>
                    <tr>
                        <th>문화 제휴</td>
                        <td><img src="/images/company/coorp_logo07.jpg" alt="헬스조선"></td>
                    </tr>
                    <tr>
                        <th>사회 공헌</td>
                        <td><img src="/images/company/coorp_logo08.png" alt="청운보육원, 연탄은행, 아름다운커피, 한국 농아인협회"></td>
                    </tr>
                </tbody>
            </table>
        </div><!--[[ 제휴 End ]]-->

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