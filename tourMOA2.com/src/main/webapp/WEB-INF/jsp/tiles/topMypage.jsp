<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
   	</header>