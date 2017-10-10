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
	var pn = "svcCharter.do";
	
	
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

        <div class="tit cStisfy_tit"></div>
        <span class="subTit">고객서비스 헌장</span>
        <div class="c_service">
            <div class="svcL">
                <span class="svcHyphen"></span>
                <span class="svcTitle">투어모아</span>
                <span class="svcTitle">서비스 헌장 본문</span>
            </div>
            <div class="svcR">
                <span class="svcRTitle">거품없는 여행상품</span>
                <span class="svcRDtl">거품없는 여행상품으로 최고의 만족을 드리겠습니다.</span>
                <span class="svcRTitle">고객의 안전</span>
                <span class="svcRDtl">고객의 안전을 최우선으로 하여 여행문화를 선도하겠습니다.</span>
                <span class="svcRTitle">친절한 서비스</span>
                <span class="svcRDtl">친절한 서비스로 고객감동경영을 실천하겠습니다.</span>
                <span class="svcRTitle">약속 준수</span>
                <span class="svcRDtl">고객과의 약속을 준수하며 업무를 신속하고 정확하게 처리하겠습니다.</span>
                <span class="svcRTitle last">소중한 의견</span>
                <span class="svcRDtl last">고객의 소중한 의견을 경영에 충실히 반영하겠습니다.</span>
                <span>이와 같은 약속을 지키기 위해 구체적인 [서비스 이행표준]을 정하여 이를 성실히 실천하겠습니다.</span>
                <span>-투어모아 임직원 일동</span>
            </div>
        </div>

        <span class="secTit">서비스 이행표준</span>
        <div class="svc_standard">
            <table>
                <caption>서비스 이행표준</caption>
                <tbody>
                    <tr>
                        <th><span class="stepNo">1</span></th>
                        <td class="col01">거품 없고 정직한 여행상품으로<br />만족을 드리겠습니다.</td>
                        <td class="col02">
                            <ul class="mgb0">
                                <li>항공운임 총액 표시제, 국외 여행상품 정보제공 표준안을 준수하여 여행상품에 대한 정보를 보다 알기 쉽게 제공하겠습니다.</li>
                                <li>연 2회 이상 여행상품 만족도 조사를 시행하여 거품없는 여행이 준수될 수 있도록 하고 그 결과를 홈페이지에 공지하겠습니다.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="stepNo">2</span></th>
                        <td class="col01">안전한 여행을 위하여<br />최선을 다하겠습니다.</td>
                        <td class="col02">
                            <ul class="mgb0">
                                <li>현지에서 여행을 책임지는 가이드, 인솔자를 대상으로 안전교육을 정기적으로 실시하겠습니다.</li>
                                <li>불가피한 사고 발생 시 사고대응매뉴얼을 준수하여 신속히 조치하겠습니다.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="stepNo">3</span></th>
                        <td class="col01">친절로 고객을 맞이하는<br />우리의 자세</td>
                        <td class="col02">
                            <span class="colTit">가. 방문하시는 경우 : 방문모니터링 반기별 시행</span>
                            <ul>
                                <li>고객의 편안한 내방상담을 위해 쾌적한 환경을 조성하고 신속히 안내받을 수 있도록 안내직원을 배치하여 사원증 패용을<br/>준수하겠습니다.</li>
                                <li>방문고객 맞이 시 "안녕하십니까, 무엇을 도와드릴까요?"라고 먼저 인사하고 상담종료 시까지 친절하게 응대하겠습니다.</li>
                            </ul>
                            <span class="colTit">나. 전화로 문의하시는 경우 : 전화 모니터링 분기별 시행</span>
                            <ul>
                                <li>전화 벨소리 3회 이내에 응대하겠으며 밝은 목소리로 "정성을 다하는 투어모아 OOO입니다."라고 인사하겠습니다.</li>
                                <li>담당자 부재 시 타 직원이 신속히 응대하고 담당자와의 통화가 필요한 경우 메모하여 고객이 원하는 시간에 상담받을 수<br />있도록 하겠습니다.</li>
                            </ul>
                            <span class="colTit">다. 친절한 투어모아 직원이 되겠습니다.</span>
                            <ul class="mgb0">
                                <li>친절은 투어모아의 필수사항이며 더 나은 여행 서비스를 위해 매주 [CS조회]를 실시하겠습니다.</li>
                                <li>전 직원을 대상으로 분기별 CS교육을 실시하여 친절한 서비스를 제공하겠습니다.</li>
                                <li>직원이 불친절하였거나 업무과실이 발생할 경우 해당 직원을 즉시 교육하여 시정할 수 있도록 조치하겠습니다.
                                <li class="yl">3회 이상 불편을 끼친 직원이 발생할 경우 인사상의 불이익 조치를 취하겠습니다.</li>
                                <li>연 2회 협력사 평가를 통해 현지에서의 여행서비스 품질을 상향 평준화하겠습니다.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="stepNo">4</span></th>
                        <td class="col01">고객과의 약속을 반드시<br />지키겠습니다.</td>
                        <td class="col02">
                            <ul class="mgb0">
                                <li>여행일정을 반드시 준수하겠습니다.</li>
                                <li>정치, 사회, 문화적 상황 및 불가항력적인 자연현상 발생 시 신속히 다른 일정으로 대체하여 진행하겠습니다.</li>
                                <li>고객불편신고 운영을 통해 상시 모니터링하여 불만을 예방하겠습니다.</li>
                                <li>잘못된 서비스에 대한 시정과 보상을 하겠습니다.(소비자 분쟁해결기준 의거)</li>
                                <li class="yl">직원이 특별한 사유없이 고객과의 약속을 이행하지 않은 경우</li>
                                <li class="yl">투어모아 직원의 과실로 인하여 고객이 재방문 등의 불편을 겪으신 경우</li>
                                <li class="yl">지정된 처리기한을 넘긴 경우(소비자 불만 처리 절차 의거)</li>
                            </ul>
                            <div class="infoBox">
                                <span class="infoTit">불편사항 접수처</span>
                                <ul>
                                    <li>주소: 서울특별시 중구 수표로 31, 투어모아 CRM팀</li>
                                    <li>전화: (CRM팀) 02-2022-7294</li>
                                    <li>홈페이지:http://www.tourmoa.co.kr > 로그인(필수) > 고객센터 > 고객불편신고</li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="stepNo">5</span></th>
                        <td class="col01">고객의 의견은 투어모아의<br />서비스에 반영됩니다.</td>
                        <td class="col02">
                            <ul class="mgb0">
                                <li>전화친절도 모니터링, 온라인 고객만족도 조사, 협력업체 서비스 평가 및 서비스 이행기준 달성도에 대한 측정을 연 2회 이상
                                    실시하여 고객의 의견을 적극적으로 수용하겠습니다.
                                </li>
                                <li>잘못된 서비스는 전문가에게 조언을 받고 즉시 시정하겠습니다.</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <span class="subTit">이행실적</span>
        <div class="exec_result">
            <table class="exec">
                <caption>이행실적</caption>
                <tbody>
                <colgroup>
                    <col class="col01">
                    <col class="col02">
                    <col class="col03">
                    <col class="col04">
                </colgroup>
                    <tr>
                        <th>항목</th>
                        <th colspan="2">서비스 이행 표준</th>
                        <th>이행</th>
                    </tr>
                    <tr>
                        <td rowspan="2" class="col01">거품없는 여행</td>
                        <td colspan="2">항공운임 총액 표시제, 국외 여행상품 정보제공 표준안을 준수하여 여행상품에 대한 정보를 보다 알기 쉽게 제공하겠습니다.</td>
                        <td class="col04">이행률</td>
                    </tr>
                    <tr>
                        <td colspan="2">연 2회 이상 여행상품 만족도 조사를 시행하여 거품 없는 여행이 준수될 수 있도록 하고 그 결과를 홈페이지에 공지하겠습니다.</td>
                        <td class="col04">이행률</td>
                    </tr>
                    <tr>
                        <td rowspan="2" class="col01">안전한 여행</td>
                        <td colspan="2">현지에서 여행을 책임지는 가이드, 인솔자를 대상으로 안전교육을 정기적으로 실시하겠습니다.</td>
                        <td class="col04">발행률</td>
                    </tr>
                    <tr>
                        <td colspan="2">불가피한 사고 발생 시 사고대응매뉴얼을 준수하여 신속히 조치하겠습니다.</td>
                        <td class="col04">이행률</td>
                    </tr>
                    <tr>
                        <td rowspan="8" class="col01">친절한 서비스</td>
                        <td rowspan="2" class="col02">전화</td>
                        <td class="col03">전화 벨소리 3회 이내에 응대하겠으며 밝은 목소리로 "정성을 다하는 투어모아 OOO입니다."라고 인사하겠습니다.</td>
                        <td rowspan="5" class="col04">달성률</td>
                    </tr>
                    <tr>
                        <td class="col03">담당자 부재 시 타 직원이 신속히 응대하고 담당자와의 통화가 필요한 경우 메모하여 고객이 원하는 시간에<br />상담받을 수 있도록 하겠습니다</td>
                    </tr>
                    <tr>
                        <td rowspan="2" class="col02">고객방문</td>
                        <td class="col03">고객의 편안한 내방상담을 위해 쾌적한 환경을 조성하고 신속히 안내받을 수 있도록 안내직원을 배치하며<br />사원증 패용을 준수하겠습니다.</td>
                    </tr>
                    <tr>
                        <td class="col03">방문고객 맞이 시 "안녕하십니까, 무엇을 도와드릴까요"라고 먼저 인사하고 상담종료 시까지 친절히 응대하겠습니다.</td>
                    </tr>
                    <tr>
                        <td class="col02">협력사 관리</td>
                        <td class="col03">연 2회 협력사 평가를 통해 현지에서의 여행서비스 품질을 상향 평준화하겠습니다.</td>
                    </tr>
                    <tr>
                        <td rowspan="3" class="col02">교육</td>
                        <td class="col03">친절은 투어모아의 필수사항이며 더 나은 여행 서비스를 위해 매주[CS조회]를 실시하겠습니다.</td>
                        <td rowspan="3" class="col04">이행률</td>
                    </tr>
                    <tr>
                        <td class="col03">전 직원을 대상으로 분기별 CS교육을 실시하여 친절한 서비스를 제공하겠습니다.</td>
                    </tr>
                    <tr>
                        <td class="col03">
                            직원이 불친절하였거나 업무과실이 발생할 경우 해당 직원을 즉시 교육하여 시정할 수 있도록 조치하겠습니다.
                            <span class="yl">- 3회 이상 불편을 끼친 직원이 발생할 경우 인사상의 불이익 조치를 취하겠습니다.</span>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2" class="col01">고객과의 약속</td>
                        <td colspan="2">
                            여행일정을 반드시 준수하겠습니다. <br />
                            정치, 사회, 문화적 상황 및 불가항력적인 자연현상 발생 시 신속히 다른 일정으로 대체하여 진행하겠습니다.
                        </td>
                        <td rowspan="2" class="col04">발생률</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            잘못된 서비스에 대한 시정과 보상을 하겠습니다. (소비자 분쟁해결기준 의거)<br />
                            <span class="yl">- 직원이 특별한 사유없이 고객과의 약속을 이행하지 않은 경우</span><br />
                            <span class="yl">- 투어모아 직원의 과실로 인하여 고객이 재방문등의 불편을 겪으신 경우</span><br />
                            <span class="yl">- 지정된 처리기한을 넘긴 경우(소비자 불만 처리 절차 의거)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="col01">고객의견 반영</td>
                        <td colspan="2">
                            전화친절도 모니터링, 온라인 고객만족도 조사, 협력업체 서비스 평가 및 서비스 이행기준 달성도에 대한 측정을 연 2회 이상 실시하여 
                            고객의 의견을 적극적으로 수용하겠습니다.<br />
                            잘못된 서비스는 전문가에게 조언을 받고 즉시 시정하겠습니다.
                        </td>
                        <td class="col04">이행률</td>
                    </tr>
                </tbody>
            </table>
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