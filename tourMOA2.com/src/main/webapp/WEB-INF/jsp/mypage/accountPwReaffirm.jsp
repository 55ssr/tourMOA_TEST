<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<link rel="stylesheet" href="/css/mypage.css" />
<script>

function fn_btn(a) {
	var f = document.frmpwd;
	f.hiddenID.value = a;
	f.submit();
}



</script>
	<script>
	$(document).ready(function(){
		$("#btnOK").click(function(){
		
			var form = "id="+$("input:hidden[id='userid']").val()
				form += "&pwd="+$("input:password[id='custPw']").val();
			
			$.ajax({
				
				  type:'POST'
				, data: form
				, url:"<c:url value='/mypage/accountPwReaffirmDe.do'/>" 
				, dataType: 'JSON'
				
				,success:function(data) {
					if(data.cnt>0){
						$("#frm").action="<c:url value='/mypage/accountDetail.do'/>";
						$("#frm").submit();
					}else {
						alert("비밀번호가 일치하지 않습니다.");
						return false;
					}
				}
				, error: function(error) {
					alert('Loading Error! '+error);
				}
			 });
		});
		$("#testBtn").click(function(){
			
			var form = "id="+$("input:hidden[id='userid']").val()
			
			$.ajax({
				
				  type:'POST'
				, data: form
				, url:"<c:url value='/mypage/reserveListDe.do'/>" 
				, dataType: 'JSON'
				
				,success:function(data) {
					if(data.cnt>0){
						$("#frm1").action="<c:url value='/mypage/reserveList.do'/>";
						$("#frm1").submit();
					}else {
						alert("no.");
						return false;
					}
				}
				, error: function(error) {
					alert('Loading Error! '+error);
				}
			 });
		});
		
	});
	
	</script> 
	<script>
	
		function fnMenuSelect() {
		    //여행내역  
		    
		    //관심내역    
		    
		    //참여내역		     
		    
		    //추가결제수단    
		    
		    //개인정보  
			$('.lnb05').addClass('lnb05 on'); $("ul.sub_5").css("display","block");        $('.sub05_0').addClass('sub05_01 on'); $('#one').show();
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
	<section id="content" class="contentSub"><!--[[ content Start ]]-->
         <div class="sec_wrap sec_01" style="width:100%;"><!--[[ 메인상단 Start ]]-->
             <div class="para_01">
                 <p>안녕하세요. 즐거운 여행 되세요.</p>
                 <form name="frmpwd" id="frmpwd" method="post" >
                 
                 <div class="btnArea">
                     <span class="btn"><a href="/mypage/accountPwReaffirm.do">개인정보관리</a></span>
                     <span class="btn"><a href="#" onclick="fn_btn('${vo.id}')">비밀번호변경</a></span>
                     <input type="hidden" name="hiddenID" id="hiddenID" value="" />
               
               	  </div>
             </form>
             <div class="para_02">
             <form name="frm1" id="frm1" method="post" action="/mypage/reserveList.do" >
                <ul> 
                    <li class="" id="testBtn" ><p>여행상품<br />예약내역<br /><a href="#" >1</a>건</p></li>                        
                  	<li><p>해외항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">0</a>건</p></li>
                    <li><p>국내항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;" >0</a>건</p></li>
                    <li class=""><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
                    <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                    <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>  
                    <input type="hidden" name="hiddenID" id="hiddenID" value="${vo.id}" />                     
                </ul>
                </form>
                 </div>
            </div>
        </div><!--[[ 메인상단 End ]]-->
   </section>
   <!-- 팝업스크립트 -->
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
    <section id="content" class="contentSub">
    <!--[[ content Start ]]-->
   	<div class="tit myinfo_tit" title="풍선머니"></div>
	<div class="passBox">
		<div class="cont_area">
			<span>고객님의 소중한 개인정보를 보호하기 위해</span>
			<span>비밀번호를 다시 한번 확인합니다.</span>        
		<form name="frm" id="frm" method="post" action="/mypage/accountDetail.do">
		<input type="hidden" name="id" id="userid" value="${sessionScope.loginCertification.id}"/>
		
			<div class="cont_l">
				<span class="pass_tit">아이디</span><span class="cont">${sessionScope.loginCertification.id}</span>
				<span class="pass_tit"><label for="txtpass">비밀번호</label></span>
				<span class="cont"><input type="password" id="custPw" name="custPw"></span>
			</div>
			<div class="cont_r">
				<button type="button" name="btnOK" id="btnOK">확인</button>
			</div>
		</form>
		</div>
	</div>
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
