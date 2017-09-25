<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />
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
</div>