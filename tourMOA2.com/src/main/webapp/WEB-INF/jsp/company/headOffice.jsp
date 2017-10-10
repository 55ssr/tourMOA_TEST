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
	var pn = "headOffice.do";
	
	
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

<script src="http://maps.googleapis.com/maps/api/js?v=3&sensor=false&region=KR"></script>

<script>
/*
var copnm = "투어모아 서울본사";
var addr  = "서울특별시 중구 수표로 31";
var zoomnum = 16;

function initialize(){
	
	var geocoder = new google.maps.Geocoder();
	
	geocoder.geocode(
		{ 'address' : addr }
		, function(results, status) {
			if (results != "") {
				var location = results[0].geometry.location;
				var lat 	 = location.lat();
				var lng      = location.lng();
// 				alert("lat : "+lat+", lng : "+lng);
				
				var headPt = new google.maps.LatLng(lat, lng);
				
				var myOptions = {
									zoom   : zoomnum,
									center : headPt,
									mapTypeControl : true,
									mapTypeId : google.maps.MapTypeId.ROADMAP
								}
				var map = new google.maps.Map(document.getElementById("loca_map"),myOptions);
				
				var coordInfoWindow = new google.maps.InfoWindow();
				 coordInfoWindow.setContent(createInfoWindowContent(headPt, map.getZoom()));
				 coordInfoWindow.setPosition(headPt);
				 coordInfoWindow.open(map);

				 map.addListener('zoom_changed', function() {
				   coordInfoWindow.setContent(createInfoWindowContent(headPt, map.getZoom()));
				   coordInfoWindow.open(map);
				 });
				 
			}else{
				$("#loca_map").html("위도와 경도를 찾을 수 없습니다.");
			}
		}
	)
}

var TILE_SIZE = 256;

function createInfoWindowContent(latLng, zoom) {
	var scale = 1 << zoom;

	var worldCoordinate = project(latLng);

	var pixelCoordinate = new google.maps.Point(Math
			.floor(worldCoordinate.x * scale), Math.floor(worldCoordinate.y
			* scale));

	var tileCoordinate = new google.maps.Point(Math.floor(worldCoordinate.x
			* scale / TILE_SIZE), Math.floor(worldCoordinate.y * scale
			/ TILE_SIZE));

	return [ copnm, addr, ].join('<p>'); //업체명, 주소명
}

// The mapping between latitude, longitude and pixels is defined by the web
// mercator projection.
function project(latLng) {
	var siny = Math.sin(latLng.lat() * Math.PI / 180);

	// Truncating to 0.9999 effectively limits latitude to 89.189. This is
	// about a third of a tile past the edge of the world tile.
	siny = Math.min(Math.max(siny, -0.9999), 0.9999);

	return new google.maps.Point(TILE_SIZE * (0.5 + latLng.lng() / 360),
			TILE_SIZE
					* (0.5 - Math.log((1 + siny) / (1 - siny))
							/ (4 * Math.PI)));
}
*/
function onChangeOffice(pn){
	if(pn == "headOffice.do"){
		$("#headOffice").addClass("on");
		
	}else if(pn == "busanOffice.do"){
		$("#busanOffice").addClass("on");
		
	}else if(pn == "daeguOffice.do"){
		$("#daeguOffice").addClass("on");
	}
}


$(document).ready(function(){
	onChangeOffice(pn);
	//google.maps.event.addDomListener(window, 'load', initialize);
	
	var pt = $("#pt").val();
	var pn = $("#pn").val();
	
	$("#c_location > ul > li").on('mouseleave',function(){
		$(this).removeClass("on");
		onChangeOffice(pn);
	})
	
});

</script>
<input type="hidden" id="pt" value="info">
<input type="hidden" id="pn" value="headOffice.do">

<section id="content"><!--[[ content Start ]]-->
        <div class="tit loca_tit"></div>
        <div class="c_location" id="c_location">
            <ul class="locationTab">
                <li id="headOffice"class="on"><a href="headOffice.do">본사</a></li>
                <li id="busanOffice"><a href="busanOffice.do">부산지사</a></li>
                <li id="daeguOffice" class="last"><a href="daeguOffice.do">대구지사</a></li>
            </ul>
            <div class="addrTxt">
                <span class="addrTop">서울특별시 중구 수표로 31, 투어모아빌딩</span>
                <span>대표전화 1544-2288 / 대표팩스 02-774-3993</span>
            </div>
           <!--<div class="loca_map" id="loca_map">
                  <img src="/images/company/map_hq.jpg" alt="서울본사약도">  
            </div>-->
            <div class="norang_map">
            	<div class="img_map">
            		<img src="/images/company/img_norang_map01.jpg" alt="투어모아 본사" />
            	</div>
            	<ul>
            		<li><a href="#" role-w="754" role-h="528" role-url="/html/company/popup_norang_map.html?pic=1" onclick="showLayer(this);return false"><img src="/images/company/img_map01_sub01.jpg" alt="투어모아 본사 사진 첫번째" /></a></li>
            		<li><a href="#" role-w="754" role-h="528" role-url="/html/company/popup_norang_map.html?pic=2" onclick="showLayer(this);return false"><img src="/images/company/img_map01_sub02.jpg" alt="투어모아 본사 사진 두번째" /></a></li>
            		<li><a href="#" role-w="754" role-h="528" role-url="/html/company/popup_norang_map.html?pic=3" onclick="showLayer(this);return false"><img src="/images/company/img_map01_sub03.jpg" alt="투어모아 본사 사진 세번째" /></a></li>
            	</ul>
            </div>
            <table class="direction">
                <caption>오시는길</caption>
                <tbody>
                    <tr>
                        <th><span class="subway">지하철</span></th>
                        <td>
                            <span>2,3호선 을지로3가역 12번출구로 나와 중부경찰서 방향으로 도보 3분거리</span>
                            <span>3,4호선 충무로역 5번출구로 나와 200M직진후 남산 스퀘어 빌딩에서 중부경찰서 방향으로 도보 5분거리 </span>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="bus">버스</span></th>
                        <td>
                            <div class="rout">
                                <span class="locaTit">서울백병원.평화방송 (02-002)</span>
                                <span class="routB clear">간선</span><span>140 , 470 , 471 , 472 , N37</span>
                                 <span class="routR clear">직행</span><span>1150 , 5000 , 5005 , 5007 , 7900 , 8800 , 9003 , 9300</span>
                                 <span class="routR clear">급행</span><span>8100 , 8110 </span>
                                 <span class="routR last clear">광역</span><span class="last">9401(공차회송) , M4101 , M4102 , M4108 , M5107 , M5115 , M5121</span>
                            </div>
                             <div class="rout">
                                <span class="locaTit">남대문세무서 (02-287)</span>
                                 <span class="routR clear">직행</span><span>1005-1 , 5500 , 5500-1 , 5500-2 , 9000 , 9000-1</span>
                                 <span class="routR last clear">광역</span><span class="last">9401</span>
                            </div>
                           <div class="rout">
                                <span class="locaTit">남대문세무서.서울백병원 (02-001)</span>
                                <span class="routB clear">간선</span><span>470 , 471 , 472 , N37</span>
                                <span class="routR clear">직행</span><span>1005-1 , 1150 , 5000 , 5005 , 5007 , 5500 , 5500-1 , 5500-2 , 7900 , 8800 , 9000 , 9000-1 , 9003 , 9300</span>
                                <span class="routR clear">급행</span><span>8100 , 8110 </span>
                                <span class="routR last clear">광역</span><span class="last">9401 , M4101 , M4102 , M4108 , M5107 , M5115 , M5121 </span>
                            </div>
                             <div class="rout">
                                <span class="locaTit">을지로2가.파인에비뉴 (02-159) </span>
                                <span class="routB clear">간선</span><span>100 , 105 , 152 , 202 , 261 , N30 </span>
                                <span class="routS last clear">공항</span><span>6015 , 6021 </span>                            
                            </div>
                              <div class="rout">
                                <span class="locaTit">을지로3가 (02-161) </span>
                                <span class="routB last  clear">간선</span><span>100 , 105 , 152 , 202 , 261 , N30 </span>               
                            </div>
                            <div class="rout mgb0">
                                <span class="locaTit">을지로3가 (02-160)</span>
                                <span class="routB last  clear">간선</span><span>100 , 152 , 202 , 261 , N30</span>                              
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="car">승용차</span></th>
                        <td>
                            <span>을지로/을지로 3가에서 중부경찰서 방면으로 우회전</span>
                        </td>
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
	                        <span><a href="http://plus.kakao.com/home/dv8xogt8" target="_blank"><img src="/images/company/bottom_sns_cacao.png" alt="옐로아이디 (카카오톡)" /></a></span>                        
	                        <span><a href="https://story.kakao.com/ch/ybtour" target="_blank"><img src="/images/company/bottom_sns03.png" alt="카카오스토리 바로가기" /></a></span>
	                        <span><a href="https://ko-kr.facebook.com/yellowballoontour" target="_blank"><img src="/images/company/bottom_sns01.png" alt="페이스북 바로가기" /></a></span>
	                        <span><a href="https://www.instagram.com/ybtour_official/" target="_blank"><img src="/images/company/bottom_sns06.png" alt="인스타그램 바로가기" /></a></span>					
	                        <span><a href="http://blog.naver.com/yb_tour" target="_blank"><img src="/images/company/bottom_sns04.png" alt="블로그 바로가기" /></a></span>						
							<span><a href="http://post.naver.com/_ybtour" target="_blank"><img src="/images/company/bottom_sns_naver.png" alt="네이버포스트"  class="no1" /></a></span>
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