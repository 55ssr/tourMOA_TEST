<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />
    <script>
    	var todayX = 0;
		var totPicCnt = 0;
		var todayPage = 1;
		var pageUrlSplit = $(location).attr('pathname').split('/')[1];
		
	    $(document).ready(function(){
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
    <script>
		function fnMenuSelect() {
		    //여행내역
		    
		    
		    //관심내역
		     $('.lnb02').addClass('lnb02 on'); $("ul.sub_2").css("display","block");     $('.sub02_02').addClass('sub02_02 on'); $('#lnb').show();
		    
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
   <!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
   <section id="content" class="contentSub"><!--[[ content Start ]]-->
         <div class="sec_wrap sec_01"><!--[[ 메인상단 Start ]]-->
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

	<section id="content" class="contentSub"><!--[[ content Start ]]-->    
        <div class="tit today_tit" title="오늘 본 상품"><!-- [[ 오늘 본 상품 Start ]] -->
            <div class="t_btn_w">
            	<button type="button" name="btnCompare" id="btnCompare" role-w="1160" role-h="870" role-url="/mypage/compareMaster.do"  title="선택상품비교하기" class="t_btn">선택상품비교하기</button>
                <button type="button" id="btnDelete" class="t_btn mgr0" onclick="fnDelTodayList()">선택상품삭제</button>
            </div>
        </div> 
        <div class="intlist">
        	<ul class="dataNone">
                <li class="odd">
                    	오늘 본 상품이 없습니다.
                </li>
            </ul>
        </div><!--[[ 오늘 본 상품 End ]]-->
    </section><!--[[ content End ]]-->    
</div>
</div>