<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="-1" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="robots" content="noindex,nofollow" />
<meta name="subject" content="" />
<meta name="description" content="해외패키지, 자유여행, 허니문, 국내여행, 항공권 등 실시간예약">
<meta name="keywords" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />

<title>투어모아 [거품없는 직판여행 NO.1]</title>
<link rel="shortcut icon" href="/images/yb.ico" />	
<script src="/js/jquery-1.11.2.min.js"></script>	
<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
<script type="text/javascript">
	$(window).on('resize', function() {
		setMobileViewport();
	})
	.on('orientationchange', function(){
		setMobileViewport();
	});

	//PC링크 클릭에 대한 파라미터
   	var strPC = getParameterByName("pc");
	if(isMobile() && strPC == "Y") {
		setMobileViewport();
	}
</script>
<script type="text/javascript">
	var filter = "win16|win32|win64|mac|macintel";
	
	if( navigator.platform ) {
		if( filter.indexOf(navigator.platform.toLowerCase())<0 ) {
			goMobileVersion();
	    }
	}
</script>
<link rel="stylesheet" href="/css/jquery-ui.css" />
<link rel="stylesheet" href="/css/sliderkit/sliderkit.css" />
<link rel="stylesheet" href="/css/mypage.css" /> 
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.cookie.js" type="text/javascript"></script>	
<script src="/js/ui.js" type="text/javascript"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.validate.js"></script>
<script src="/js/additional-methods.js"></script>
<script src="/js/localization/messages_ko.js"></script> 
<script src="/js/common.js"></script> 
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
<script src="/js/sessionCheck.js"></script><!-- 새벽 배포이후 빼기로 -->
<script src="/js/naverLogin_implicit-1.0.2.js"></script>
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		popRecommendStr(); // 추천검색어 호출
		
		$(".top_banner_close").on('click', function(){
			mainTodayChk();
		});
		
		// 쿠키설정에 따른 웹상단배너 노출여부 결정
		var cookiedata = document.cookie;
	    if( cookiedata.indexOf("ybtourMainPopup=done") < 0 ) { 
	    	$(".top_main_banner").show();
	    } else {
	    	$(".top_main_banner").hide();
	    }
	
	});
	
	function setMainCookie(name, value, expiredays){
		var todayDate = new Date(); 
		todayDate.setDate(todayDate.getDate() + expiredays); 
		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	}
	
	function mainTodayChk(){
		setMainCookie('ybtourMainPopup', 'done', 1); 
		$(".top_main_banner").hide();
	}
</script>
<script>
	function fnMenuSelect() {
	    //여행내역
	    
	    
	    //관심내역
	    
	    
	    //참여내역
	    
	    
	    //추가결제수단
	    
	    
	    //개인정보
	    
	}
	
	$( document ).ready(function() {
	    fnMenuSelect();
	    $('#lnb').mouseleave(function(){
	        setTimeout(function() {
	            $("#one > li").removeClass('on'); // 1depth 초기화
	            $("ul.sub").css("display","none"); // 2depth 사라짐
	            fnMenuSelect();
	        }, 2000);
	    });
	});
</script>

<div id="content">
<div id="wrap"><!--[[ wrap Start ]]-->
	<header><!--[[ header Start ]]-->
	    <nav id="lnb_mp"><!--[[ LNB Start ]]-->
	    	<ul id="one">
	            <li class="tit"><span><a href="/mypage/main.do"></a></span></li>
	            <li class="lnb01"><a href="#wrap" >여행내역</a>
		            <ul class="sub sub_1">
		                <li class="sub01_01"><a href="/mypage/reserveList.do" >여행상품예약</a></li>
		                <li class="sub01_02"><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_blank'); return false;" >해외항공권 예약내역 </a></li>
		                <!-- <li class="sub01_02"><a href="http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00" target="_blank">항공권예약</a></li> 개발 -->
		           	   <li class="sub01_03"><a href="#" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_blank'); return false;" >국내항공권 예약내역</a></li>	
		            </ul>
	           </li>
	           <li class="lnb02"><a href="#wrap" >관심내역</a>
	               <ul class="sub sub_2">
	                   <li class="sub02_01"><a href="/mypage/wishList.do" >관심상품</a></li>
	                   <li class="sub02_02"><a href="/mypage/today.do" >오늘 본 상품</a></li>
	               </ul>
	           </li>
	           <li class="lnb03"><a href="#wrap" >참여내역</a>
	               <ul class="sub sub_3">
	                   <li class="sub03_01"><a href="inquiryList.do" >상담문의</a></li>
	                   <li class="sub03_02"><a href="/mypage/myPostList.do" >커뮤니티</a></li>
	                   <li class="sub03_03 none"><a href="/mypage/myEventList.do" >이벤트참여</a></li>
	               </ul>
	           </li>
	           <li class="lnb04"><a href="#wrap" >추가결제수단</a>
	               <ul class="sub sub_4">
	                   <li class="sub04_01"><a href="/mypage/giftcardBuy.do" >여행상품권</a></li>
	               </ul>
	           </li>
	           <li class="lnb05"><a href="#wrap" >개인정보</a>
	               <ul class="sub sub_5">
	                   <li class="sub05_01"><a href="/mypage/accountPwReaffirm.do" >개인정보관리</a></li>
	                   <li class="sub05_02"><a href="/mypage/accountPwUpdate.do" >비밀번호변경</a></li>
	                   <li class="sub05_03"><a href="/mypage/accountWithdrawal.do" >회원탈퇴</a></li>
	               </ul>
	           </li>
	       </ul>
	   	</nav><!--[[ LNB End ]]-->
   	</header><!--[[ header End ]]-->   
	<!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
	<section id="content" class="contentSub"><!--[[ content Start ]]-->
         <div class="sec_wrap sec_01" style="width:100%;"><!--[[ 메인상단 Start ]]-->
             <div class="para_01">
                 <p>안녕하세요. 즐거운 여행 되세요.</p>
                 <div class="btnArea">
                     <span class="btn"><a href="/mypage/accountPwReaffirm.do">개인정보관리</a></span>
                     <span class="btn"><a href="/mypage/accountPwUpdate.do">비밀번호변경</a></span>
                 </div>
             </div>
             <div class="para_02">
                 <ul> 
                     <li class=""><p>여행상품<br />예약내역<br /><a href="/mypage/reserveList.do">0</a>건</p></li>                        
                   	 <li><p>해외항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">0</a>건</p></li>
                     <li><p>국내항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;" >0</a>건</p></li>
                     <li class=""><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
                     <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                     <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                 </ul>
             </div>
         </div><!--[[ 메인상단 End ]]-->
    </section>
   <script type="text/javascript" >
		function modalPopup(url){
		
			var path = ($(location).attr('pathname')).split('/');
			if(path[1].indexOf('mypage') > -1 ){
				"http://" + $(location).attr('host') + "/" + url
			}
			//window.showModalDialog(url, window,  "dialogWidth:520px; dialogHeight:1100px; center:yes; help:no; status:no; scroll:yes; resizable:no;" );
			window.open(url, window,  "width=500px, height=700px, center=yes, help=no, status=no, scrollbars=yes, resizable=no, top=0");
		}		
		function showFifthYearEvent(startDt, endDt){
			$.ajax({
				type:"POST"
				,url:"/mypage/selectRervedMoney.do"
			 	,data:{	
			 		searchStDt: startDt,
			 		searchEnDt: endDt,
			 		rervFlag:"R",
			 		compId:"1",
			 		webCustNo:"12016519941"
			  	}  
			   	,success:function(result){
					console.log(result);
					console.log(result.payAmt);
					if(result.PAYAMT>=500000){
						popUpCenter("/html/event_15th_popup.html",570,360);
					}
				}
			   	,error: function(result) {
					console.log(result);
				}
			});		
		}
	
		function popUpCenter(url, w, h) {
		    window.eventLayer = $("<div id=popLayer_wrap></div>").load(url).modal({ maxWidth:w,maxHeight:h});
		}
		
		function goView(rervNo, rervFlag){
			//수정 2017.01.31 GET -> POST
				$("	#rervNo").val(rervNo);
				$("	#rervFlag").val(rervFlag);
				
				if (rervFlag == "R"){
					$("#frmRerv").attr("action", "/mypage/reserveView.do").submit();	
				}else{
					$("#frmRerv").attr("action", "/mypage/reserveCancelView.do").submit();
				}
		}
	</script>
    <section id="content" class="contentSub"><!--[[ content Start ]]-->
		<!-- 팝업 s -->
		<div class="post_pop" style='display:block;''>           		 
		     <img src="https://cimgcdn.ybtour.co.kr/promotion/banner/mpg_banner.jpg" alt="여행상품 결제할때 최대 7만원 더~ 혜택 받는 방법? " usemap="#Map" />  
		     <map name="Map" id="Map">
				<area shape="rect" coords="26,409,379,452" href="/promotion/event/2016/1122_ev_lottecard/" title="이벤트 자세히보기"/>
			</map>  
		    <!-- a href="#no" class="ev_close"><img src="/images/common/layer_close.png" alt="닫기" /></a -->		     		
		    <div class="btnarea_f">
				<div class="checkbox">
					<input type="checkbox" name="chkMpgPopup" id="chkMpgPopup" title="체크" onclick="todayChk(this);">
					<label for="chkMpgPopup">오늘 하루 보지 않기</label>
				</div>
				<button type="button" class="btnBlack post" id='btnPopClose' title="확인">확인</button>
			</div>
		</div>         
		<!--  // 팝업 e -->           
        <script type="text/javascript">
			function setCookie(name, value, expiredays){
				/* $.cookie(name, value, { expires: expiredays , path : '/' }); */
				var todayDate = new Date(); 
				 todayDate.setDate(todayDate.getDate() + expiredays); 
				 document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
			}
		
			function todayChk(){
				 setCookie('ybtourPopup_MPG', 'done', 1); 
				 $(".post_pop").hide();
			}
			/* function todayChk(obj){
				var id = obj.id; 
			
				if(document.getElementById(id).checked) {
					setCookie('ybtourPopup_MPG', 'Y' , 1);
				}else{
					setCookie('ybtourPopup_MPG', '' , -1);
				}
			} */

		   $(document).ready(function() {
			   $(".ev_close, #btnPopClose").click(function() {
				   $(".post_pop").hide(); 
			   }); 			   
		   });
			var cookieData = document.cookie;
			if(cookieData.indexOf("ybtourPopup_MPG=done")<0){
				$(".post_pop").show();
			}else{
				$(".post_pop").hide();
			}
        </script>         
        <div class="sec_wrap">
        <!--[[ 최근예약내역 Start ]]-->  
            <div class="sec_tit sec_02_tit">(총<span class="mint14">0</span>건)</div>
            	<button class="sec_t_btn" style="right: 80px;" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00','_self'); return false;"; type="button">항공권예약내역 확인</button>
                <button type="button" onclick="window.location.href='/mypage/reserveList.do'" class="sec_t_btn">전체보기</button>
                <div class="sec_dtl sec_02">
               	<form name="frmRerv"  id="frmRerv"  method="post">
                    <input type="hidden" name="rervFlag"  id="rervFlag"  value="" />
                    <input type="hidden" name="nonCustYn"  id="nonCustYn"  value="N" />
                    <input type="hidden" name="rervNo"  id="rervNo"  value="" />                    
                    <table>
                        <caption>나의 최근 예약 내역</caption>
		                <colgroup>
		                    <col style="width: 90px;">
		                    <col style="width: 330px;">
		                    <col style="width: 90px;">
		                    <col style="width: 60px;">
		                    <col style="width: 120px;">
		                    <col style="width: 120px;">
		                    <col style="width: 130px;">
		                    <col style="width: 140px;">
		                    <col style="width: 140px;"> 
		                </colgroup>
		                <tbody>
			                <tr>
				                <th scope="col">예약일자</th>
				                <th scope="col">상품명</th>
				                <th scope="col">출발일</th>
				                <th scope="col">인원</th>
				                <th scope="col">총금액</th>
				                <th scope="col">남은금액</th>
				                <th scope="col">진행상황</th>
				                <th scope="col">면세점 교환번호</th>
				                <th scope="col">선불카드 교환권</th>
			                </tr>
			                <tr>
								<td colspan="9" >예약(취소)하신 여행 내역이 없습니다. 거품없는 여행 투어모아과 즐거운 여행을 함께하세요.</td>     
							</tr>      
				     	</tbody>
                    </table>
                </form>
            </div>
        </div>
        <!--[[ 최근예약내역 End ]]-->
                
        <div class="sec_wrap">
        	<!--[[ 관심상품 Start ]]-->
            <div class="sec_tit sec_03_tit">(총<span class="mint14">0</span>건)</div>
            	<button type="button" class="sec_t_btn" onclick="window.location.href='/mypage/wishList.do'">전체보기</button>
            <div class="sec_dtl sec_03">
                <div class="prod_wrap">
					<ul class="noData">
		            	<li><span>등록된 관심상품이 없습니다.</span></li>
		            </ul>
			    </div>
			</div>
        </div><!--[[ 관심상품 End ]]-->
        <div class="sec_wrap ">
        <!--[[ 나의 문의내역 Start ]]-->
            <div class="sec_tit sec_05_tit">(총<span class="mint14">0</span>건)</div>
                <button type="button" class="sec_t_btn" onclick="window.location.href='/mypage/inquiryList.do'">전체보기</button>
                <div class="sec_dtl sec_05">
                    <table>
                        <caption>나의 문의내역</caption>
                        <colgroup>
                            <col style="width: 149px;">
                            <col style="width: 613px;">
                            <col style="width: 184px;">
                            <col style="width: 154px;">
                        </colgroup>
                        <tbody>
	                        <tr>
	                            <th scope="col">문의구분</th>
	                            <th scope="col">제목</th>
	                            <th scope="col">등록일</th>
	                            <th scope="col">답변유무</th>
	                        </tr>                        
	                        <tr>
			                    <td headers="제목" colspan="4">문의하신 상담 내역이 없습니다.</td>
			                </tr>
                    	</tbody>
                    </table>
            	</div>
        	</div><!--[[ 나의 문의내역 End ]]-->
        	<div class="sec_wrap" style="margin-bottom:20px;">
        		<!--[[ 나의 커뮤니티내역 Start ]]-->
	            <div class="sec_tit sec_06_tit">(총<span class="mint14">0</span>건)</div>
	                <button type="button" class="sec_t_btn" onclick="window.location.href='/mypage/myPostList.do'">전체보기</button>
	                <div class="sec_dtl sec_06">
	                    <table>
	                        <caption>나의 커뮤니티내역</caption>
	                        <colgroup>
	                            <col style="width: 149px;">
	                            <col style="width: 613px;">
	                            <col style="width: 184px;">
	                            <col style="width: 154px;">
	                        </colgroup>
	                        <tbody>
		                        <tr>
		                            <th scope="col">여행이야기구분</th>
		                            <th scope="col">제목</th>
		                            <th scope="col">등록일</th>
		                            <th scope="col">조회수</th>
		                        </tr>	                        
							</tbody>
	                    </table>
	            	</div>
        		</div>
       			<!--[[ 나의 커뮤니티내역 End ]]-->
        		<div class="sec_wrap none">
        			이벤트참여내역 부분<!--[[ 나의 이벤트참여 내역 Start ]]-->
        		</div>        		
        		<!--[[ 나의 이벤트참여 내역 End ]]-->        
   		</section><!--[[ content End ]]-->    
    
    <script>
    $(document).ready(function(){

        var thumb = 5;

        $(".photosgallery-vertical").sliderkit({
            auto:true,
            autospeed:3000,
            circular:true,
            mousewheel:false,
            shownavitems: thumb,
            verticalnav:true,
            navclipcenter:true,
            scrollspeed:1000
        });

        if ( $(".sliderkit-nav > .sliderkit-nav-clip > ul > li").size() <= thumb ){
            $(".sliderkit-btn").css("display","none");
        };

        $(".banner01.photoslider-bullets").sliderkit({
            auto:true,
            autospeed:3000,
            circular:true,
            mousewheel:false,fastchange:false,
            shownavitems: thumb
        });

        $(".banner02.photoslider-bullets").sliderkit({
            auto:true,
            autospeed:4000,
            circular:true,
            mousewheel:false,
            shownavitems: thumb
        });

        $(".theme03.photoslider-bullets").sliderkit({
            auto:true,
            circular:true,
            mousewheel:false,
            shownavitems: 3
            //verticalslide:true,
            //panelfx:"sliding",
            //panelfxspeed:1000,
            //panelfxeasing:"easeOutExpo" // "easeOutExpo", "easeInOutExpo", etc.
        });
    });
    </script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>    
    <script>
    	var todayX = 0;
		var totPicCnt = 0;
		var todayPage = 1;
		var pageUrlSplit = $(location).attr('pathname').split('/')[1];
		
	    $(document).ready(function(){

// 			fn_getTotCnt(); 
		    $("#sidemenu p.promCnt").html();
	    	/************************
		    *오늘본 상품
		    *************************/
	  		var todayPdt = $.cookie('todayPdt'); //쿠키값 가져옴
			var todaySlide = "";
			var totPic="";
			if(todayPdt != '' && todayPdt != undefined ){//쿠키값 있음
				if(todayPdt!= '[]'){
					var cookieJson = JSON.parse(todayPdt);
					totPicCnt = cookieJson.length;
					totPicPage = cookieJson.length;
					for(var i = cookieJson.length-1; i>=0; i--){
						var pdtUrl = "";;
						if(cookieJson[i].pdtWebCd == 'A'){
							pdtUrl="/product/detailPackage.do?"+cookieJson[i].splUrl+"&evCd="+cookieJson[i].evCd;
						}else{
							pdtUrl="/product/detailFit.do?"+cookieJson[i].splUrl+"&goodsCd="+cookieJson[i].goodsCd;;
						}
						todaySlide = todaySlide + '<li><a href="'+pdtUrl+'"><img src="'+cookieJson[i].imageThum+'" alt="'+cookieJson[i].pdtNm+'"  onmouseout="fnSideMouseout();" onmouseover="fnSideMouseover(\''+cookieJson[i].pdtNm+'\','+cookieJson[i].pdtPrice+');"/></a></li>'
					}
					totPic='<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic">'+1+'</strong> / '+totPicCnt+'<a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>'				
				}else{
					todaySlide = '<p>오늘 본<br /> 상품이<br /> 없습니다.</p>';
					totPic='<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic">0</strong> / 0<a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>'				
				}
			}else{
				todaySlide = '<p>오늘 본<br /> 상품이<br /> 없습니다.</p>';
				totPic='<a href="#none" onclick="fnTodayL();"><img src="/images/common/quick/btn_today_prev.gif" alt="이전" /></a><strong class="curPic">0</strong> / 0<a href="#none" onclick="fnTodayR();"><img src="/images/common/quick/btn_today_next.gif" alt="다음" /></a>'
			}
		
			$("#sidemenu ul.before .picWrap .today_box ul.today_list").html(todaySlide); 		
			$("#sidemenu ul.before .page_today").html(totPic); 	
			if(totPicCnt>100){
				$("#sidemenu ul.after li.to .today_view").html('99+'); 
			}else{
				$("#sidemenu ul.after li.to .today_view").html('<span>'+totPicCnt+'</span>'); 
			}
				
		});

		
		function fnTodayL(){
	        if ( todayPage > 1 )
	        {
	            todayPage = todayPage - 1;
	        }
			$('.today_list li').each(function(idx, itm){
				if(todayPage == idx+1)
					$(itm).show();
				else 
					$(itm).hide();
			});
			$("#sidemenu .curPic").text(todayPage);
		}
		

		function fnTodayR(){
	        if (  todayPage < totPicCnt )
	        {
	            todayPage = todayPage + 1;
	        }
			$('.today_list li').each(function(idx, itm){
				if(todayPage == idx+1)
					$(itm).show();
				else
					$(itm).hide();
			});
			$("#sidemenu .curPic").text(todayPage);
		}
		
		function fnSideMouseover(pdtNm, pdtPrice){
			$("#sidemenu ul.before li.today_goods > div.sidemenuLayer span.layerTit").html("<a href='#none'>"+pdtNm+"</a>");
			$("#sidemenu ul.before li.today_goods > div.sidemenuLayer span.price").html(comma(pdtPrice)+"<p>원</p>");
			
			$("#sidemenu .sidemenuLayer").stop(false, false).fadeIn(600);

		}	
		
		function fnSideMouseout(){
			$("#sidemenu .sidemenuLayer").stop(false, false).fadeOut(100);
		}
    </script>
</div><!--[[ wrap End ]]-->

<!-- 2014.04.02 푸터 구글 스크립트 추가 --></body>
<!-- AceCounter Log Gathering Script -->
<!-- This script is for AceCounter START -->
<script language='javascript'>
var _ag = ck_age('19750101'); // 로그인 사용자 나이
var _id = 'xxxxx'; // 로그인 사용자 아이디

var _mr = ''; // 로그인 사용자 결혼여부 ( 'single' , 'married')
if('Y' == 'N' || 'Y' == ''){
	_mr = 'single';
}else{
	_mr ='married';
}
var _gd = ''; // 로그인사용자 성별 ('man' , 'woman')
if('M' =='F'){
	_gd = 'woman';
}else{
	_gd = 'man';
}
var _ud1 = '1'; // 로그인 사용자 회원등급 (‘1’, ‘2’)

// var_ag = '<?=$age?>'; // 로그인 사용자 나이
// var_id = '<?=$id?>'; // 로그인 사용자 아이디
// var_mr = '<?=$married?>'; // 로그인 사용자 결혼여부 ( 'single' , 'married')
// var_gd = '<?=$gender?>'; // 로그인 사용자 성별 ('man' , 'woman')
// var_ud1 = '<?=$membergrade?>'; // 로그인 사용자 회원등급 (‘1’, ‘2’)

function ck_age(birthDt) { 
  var year=parseInt(new Date().getFullYear());
  var ck=parseInt(birthDt.substr(0,4)); 
  return (year-ck)+1; // 우리나라 나이 표시 +1 더함 
}
</script>
<!-- AceCounter END -->

<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtp1.acecounter.com','8080','AM3A34627437260','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
<noscript><img src='http://gtp1.acecounter.com:8080/?uid=AM3A34627437260&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End --> 

<!-- AceClick script 추가  -->
<!-- AceClick WebSite Gathering Script V0.9.20131114 -->
<script language='javascript'>
	if(typeof(AMRS_GC)=='undefined'){
	 	var AMRS_O=[];var AMRS_CK = new Image();var AMRS_GC='AG5A385326230';var AMRS_GD='mrsg.aceclick.co.kr';var AMRS_GP='8080';var AMRS_TI=(new Date()).getTime();
	 	var AMRS_PR = location.protocol=="https:"?"https://"+AMRS_GD+":843":"http://"+AMRS_GD+":"+AMRS_GP; AMRS_CK.src = AMRS_PR+'/?cookie'; 
	 	if(typeof(Array.prototype.push)!='undefined'){ AMRS_O.push(AMRS_CK);}
	 	document.writeln("<scr"+"ipt type='text/Javascript' src='"+location.protocol+"//mrss.aceclick.co.kr/aceclick.js?rt="+AMRS_TI+"'></scr"+"ipt>");
	}
</script>
<!-- AceClick WebSite Gathering Script End V0.9.20131114 -->
<!-- AceCounter Log Gathering Script -->
<!-- Emforce ROI General Tag Start -->
<script type="text/javascript" src="/js/general_gd.js"></script>
<!-- Emforce ROI General Tag End -->

<script>
/* Facebook 앱등록 스크립트 */
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '604430829738046',
      xfbml      : true,
      version    : 'v2.7'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
</div>