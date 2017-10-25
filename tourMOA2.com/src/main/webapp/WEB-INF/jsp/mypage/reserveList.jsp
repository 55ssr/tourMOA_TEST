<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<%
			String hiddenID = request.getParameter("hiddenID");
%>
	<link rel="stylesheet" href="/css/mypage.css" />
	<script>
			function fnMenuSelect() {
	    //여행내역
	            $('.lnb01').addClass('lnb01 on'); $("ul.sub_1").css("display","block");
	            $('.sub01_01').addClass('sub01_01 on'); $('#one').show();
	    
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
	<script type="text/javaScript" language="javascript" defer="defer">
		$(document).ready(function(){
			$(".cat_area > tbody > tr > th").click(function(){
				$(location).attr("href", $(this).children("a").attr("href"));
			});
			//검색
			$("#btnSearch").click(function(){
				fn_submit();
			});
			
			//기간별
			$("button[name='range']").click(function(){
				$("input:hidden[name='searchMonth']").val($(this).val());
				//$(location).attr('href','/mypage/reserveList.do?searchMonth='+$(this).val());
				
				fn_submit();
			});		
		});
		
		function fn_submit(){
		
			var fromYY = $("#fromYY option:selected").val();
			var fromMM = $("#fromMM option:selected").val();
			var fromDD = $("#fromDD option:selected").val();
			
			var toYY = $("#toYY option:selected").val();
			var toMM = $("#toMM option:selected").val();
			var toDD = $("#toDD option:selected").val();
			
			if ($.type(fromYY) == "undefined" )	fromYY = "";
			if ($.type(fromMM) == "undefined" )	fromMM = "";
			if ($.type(fromDD) == "undefined" )	fromDD = "";
			
			if ($.type(toYY) == "undefined" )	toYY = "";
			if ($.type(toMM) == "undefined" )	toMM = "";
			if ($.type(toDD) == "undefined" )	toDD = "";
		
		
		//시작일
		if(fromYY != "" && fromMM != "" && fromDD != ""){
			var searchStDt = "";
							
			fromMM = (fromMM.length == 1) ? "0" + fromMM : fromMM;
			fromDD = (fromDD.length == 1) ? "0" + fromDD : fromDD;
			
			searchStDt = fromYY + fromMM + fromDD;
			
			$("input:hidden[name='searchStDt']").val(searchStDt);
		}else{
			$("input:hidden[name='searchStDt']").val("");
		}
		
		//종료일
		if(toYY != "" && toMM != "" && toDD != ""){
			var searchEnDt = "";
							
			toMM = (toMM.length == 1) ? "0" + toMM : toMM;
			toDD = (toDD.length == 1) ? "0" + toDD : toDD;
			
			searchEnDt = toYY + toMM + toDD;
			
			$("input:hidden[name='searchEnDt']").val(searchEnDt);
		}else{
			$("input:hidden[name='searchEnDt']").val("");
		}
		
		$("#searchForm").submit();
	}
	
		function goView(rervNo, rervFlag){
			//수정 2017.01.31 GET -> POST
				$("	#rervNo").val(rervNo);
				$("	#rervFlag").val(rervFlag);
				
				if (rervFlag == "R"){
					$("#searchForm").attr("action", "/mypage/reserveView.do").submit();	
				}else{
					$("#searchForm").attr("action", "/mypage/reserveCancelView.do").submit();
				}
		}
	
		function modalPopup(url){
		
			var path = ($(location).attr('pathname')).split('/');
			if(path[1].indexOf('mypage') > -1 ){
				"http://" + $(location).attr('host') + "/" + url
			}
			//window.showModalDialog(url, window,  "dialogWidth:520px; dialogHeight:1100px; center:yes; help:no; status:no; scroll:yes; resizable:no;" );
			window.open(url, window,  "width=500px, height=1000px, center=yes, help=no, status=no, scroll=yes, resizable=no");
		}	
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
                    <li class=" sel"><p>여행상품<br />예약내역<br /><a href="/mypage/reserveList.do">1</a>건</p></li>                        
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
   		<div class="tit res_tit" title="여행예약내역"></div>

		<form name="searchForm" id="searchForm" action="/mypage/reserveList.do" method="post">
		<input type="hidden" name="hiddenID" id="hiddenID" value="<%=hiddenID %>" />
		<input type="hidden" name="searchStDt" id="searchStDt" value="" />
		<input type="hidden" name="searchEnDt" id="searchEnDt" value="" />
		<input type="hidden" name="rervFlag"  id="rervFlag" value="R" />
		<input type="hidden" name="nonCustYn" id="nonCustYn" value="N" />
		<input type="hidden" name="rervNo" id="rervNo" value="" />
		
        <table class="cat_area"><!--[[ tab Start ]]-->
          <caption>여행예약내역 카테고리</caption>
            <tbody>
                <tr>
                    <th scope="col" class="on">
	                    <a href="/mypage/reserveList.do?searchMonth=&searchStDt=&searchEnDt=&rervFlag=R" >여행상품 예약내역 (0건)</a>
                    </th>
                    <th scope="col" >
	                    <a href="/mypage/reserveList.do?searchMonth=&searchStDt=&searchEnDt=&rervFlag=F" >여행상품 취소내역 (0건)</a>
                    </th>
                      <th scope="col" >
	                    <a href="#" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">해외항공권 예약내역(0건)
	                    </a>
                    </th>
                   <th scope="col" >
	                    <a href=" #" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;">
	                    	국내항공권 예약내역 (0건)
	                    </a>
                    </th>
                </tr>
            </tbody>
        </table><!--[[ tab End ]]-->
		
        <div class="search_area"><!--[[ 문의내역검색 Start ]]-->
            <ul>
            <span class="floatR">
                <li class="head"><label for="1m">기간별</label></li>
                <li class="control">
                    <button type="button" name="range" id="1m" title="1개월" value="30" >1개월</a></button>
                    <button type="button" name="range" id="mAll" class="last on" title="전체보기" value="" >전체보기</button>
                </li>
                <li class="head"><label for="fromYY">일자별</label></li>
                <li class="mmdd">                
                 <select name="fromYY" id="fromYY" class="selYY">
					<option value="" selected="selected"></option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		 
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>
				<span class="txt">년</span>
				<select name="fromMM" id="fromMM" class="selMM" title="생년">
					<option value="" selected="selected"></option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
		</select>
				<span class="txt">월</span>
				<select name="fromDD" id="fromDD" class="selDD" title="생월">
					<option value="" selected="selected"></option>
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
				<span class="txt">일</span>    
                    ~
               <select name="toYY" id="toYY" class="selYY">
					<option value="" selected="selected"></option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		 
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>
				<span class="txt">년</span>
				<select name="toMM" id="toMM" class="selMM" title="생년">
					<option value="" selected="selected"></option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
		</select>
				<span class="txt">월</span>
				<select name="toDD" id="toDD" class="selDD" title="생월">
					<option value="" selected="selected"></option>
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
                </li>
                	<button type="button" name="btnSearch" id="btnSearch" class="cmd">검색</button>
            </span>
            </ul>
        </div><!--[[ 예약내역검색 Start ]]-->
        
        </form>

        <div class="board_area"><!--[[ board area Start ]]-->

            <table>
                <caption>여행예약내역</caption>
                <colgroup>
					<col style="width: 130px;">
					<col style="width: 400px;">
					<col style="width: 120px;">
					<col style="width: 120px;">
					<col style="width: 90px;">
					<col style="width: 90px;">
					<col style="width: 60px;">
					<col style="width: 140px;">
                </colgroup>
                <tbody>
                <tr>
	                <th scope="col">예약일자</th>
	                <th scope="col">상품명</th>
	                <th scope="col">출발일</th>
	                <th scope="col">도착일</th>
	                <th scope="col">인원</th>
	                <th scope="col">총금액</th>
	                <th scope="col">진행상황</th>
	                <th scope="col">상품후기 작성하기</th>
                </tr>
                <tr>
	                <td>${vo.rsvdate}</td>
	                <td>[한폭의그림 이태리] 친퀘테레/오르비에또+로마아울렛포함 
	                		이태리완전일주 8일</td>
	                <td>${vo.sdate}</td>
	                <td>${vo.edate}</td>
	                <td>${vo.rsvanum}</td>
	                <td>${vo.price}</td>
	                <td>${vo.result}</td>
	                <td>
	                <a href="episodeWrite.do"><input type="button" name="btn" id="btn" value="후기작성" ></a>
	                <input type="hidden" name="id" id="userid" value="${sessionScope.loginCertification.id}"/>
	                </td>
                </tr>      
			     </tbody>
            </table>
        </div><!--[[ board area End ]]-->
        
        <div class="board_navi_area"><!--[[ board navi Start ]]-->
	        <span class="paging">
	            <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class="next">다음</span><span class="last">&gt;</span></span>
    	</div><!--[[ board navi End ]]-->
    </section>
