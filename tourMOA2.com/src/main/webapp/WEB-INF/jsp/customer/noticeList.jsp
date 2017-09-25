<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
    
<script>
function fnMenuSelect() {
	//공지사항
	$('.lnb01').addClass('lnb01 on'); $("ul.sub_1").css("display","block");    $('.sub01_01').addClass('sub01_01 on'); $('#one').show();
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	 
	
	//소비자중심경영
	
    
    //서비스안내
    
}

$( document ).ready(function() {
	fnMenuSelect();
	$('#lnb').mouseleave(function(){
        setTimeout(function() {
        	$("#one > li").removeClass('on'); // 1depth 초기화
        	$("ul.sub").css("display","none"); // 2depth 사라짐
        	$("ul.sub > li").removeClass('on'); // 2depth 초기화
            fnMenuSelect();
        }, 3000);
    });
});

function loginConfirm(){
	
			document.location.href='/customer/complaintWrite.do';
		 
}
</script>
    <script type="text/javaScript" language="javascript" defer="defer">		
		$(document).ready(function(){
			
			//카테고리 클릭 이벤트 삭제
			$(".cat_area > tbody > tr > th").unbind('click');		
		});
	</script>
	<section id="content"><!--[[ content Start ]] -->
        <div class="tit notice_tit" title="공지사항"><span class="tit_txt notice_sub">투어모아의 새로운 소식과 공지사항을 알려드립니다.</span></div>
		<form name="searchForm" id="searchForm" action="/customer/noticeList.do" method="post">
		<input type="hidden" name="searchNoticeCd" id="searchNoticeCd" value="" />
        <div class="board_search"><!--[[ Search Form Start ]]-->         
            <span class="select_wrap">
            	<i>
                  <!--[[ 구분 영역 ]]-->
                   <select name="selectNoti" id="searchCnd1" title="공지구분"  onchange="location.href=this.value">
		                <option value="/customer/noticeList.do?searchNoticeCd=&amp;searchCnd=&amp;searchWrd=" selected="selected">전체</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=notice&amp;searchCnd=&amp;searchWrd=" >공지사항</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=hym&amp;searchCnd=&amp;searchWrd=" >허니문</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=glf&amp;searchCnd=&amp;searchWrd=" >골프</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=crs&amp;searchCnd=&amp;searchWrd=" >크루즈</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=dmt&amp;searchCnd=&amp;searchWrd=" >국내</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=fbd&amp;searchCnd=&amp;searchWrd=" >부산/대구</option>
		                <option value="/customer/noticeList.do?searchNoticeCd=air&amp;searchCnd=&amp;searchWrd=" >항공권 소식</option>
		            </select>
            	            
            		<!--[[ 검색 영역 ]]-->
                  	<select name="searchCnd" id="searchCnd" title="검색조건">
		                <option value="TITLE" selected="selected">제목</option>
		                <option value="CONTENTS" >내용</option>
            		</select>
               	</i>
           	</span>
            <input type="text" name="searchWrd" id="searchWrd" title="검색어" value="" >
		    <button id="btn_search" title="검색" >검색</button>        
        </div><!--[[ Search Form End ]]-->
		</form>
       	<div class="board_area"><!--[[ board area Start ]]-->
	   	<table>
		    <caption>공지사항</caption>
               <colgroup>
                   <col class="no" />
                   <col />
                   <col class="dt" />
               </colgroup>
		    <tbody>
               <tr>
				    <th scope="col">번호</th>
				    <th scope="col">제목</th>
				    <th scope="col">등록일</th>
               </tr>
              	<c:forEach var="result" items="${resultList}" varStatus="status">
               <tr >
				    <td headers="번호" >	<span class="bul bul_yellow">${result.unq}</span></td>
				    <td headers="제목" class="subject"><a href="#">${result.title}</a></td>
					<td headers="등록일" >${result.title}</td>
                </tr>                
                </c:forEach>                
            </tbody>
        </table>
	    </div><!--[[ board area End ]]-->
	    <div class="board_navi_area"><!--[[ board navi Start ]]-->
	        <span class="paging">
	            <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=2&searchCnd=&searchWrd=&searchNoticeCd=" title="2">2</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=3&searchCnd=&searchWrd=&searchNoticeCd=" title="3">3</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=4&searchCnd=&searchWrd=&searchNoticeCd=" title="4">4</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=5&searchCnd=&searchWrd=&searchNoticeCd=" title="5">5</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=6&searchCnd=&searchWrd=&searchNoticeCd=" title="6">6</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=7&searchCnd=&searchWrd=&searchNoticeCd=" title="7">7</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=8&searchCnd=&searchWrd=&searchNoticeCd=" title="8">8</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=9&searchCnd=&searchWrd=&searchNoticeCd=" title="9">9</a></span><span class=""><a href="/customer/noticeList.do?pageIndex=10&searchCnd=&searchWrd=&searchNoticeCd=" title="10">10</a></span><span class="next on"><a href="/customer/noticeList.do?pageIndex=2&searchCnd=&searchWrd=&searchNoticeCd="  title="다음페이지">다음</a></span><span class="last on"><a href="/customer/noticeList.do?pageIndex=41&searchCnd=&searchWrd=&searchNoticeCd=" title="마지막페이지">&gt;</a></span></span>		 
	    </div><!--[[ board navi End ]]-->
    </section>
</div>