<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	 $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");        $('.sub03_01').addClass('sub03_01 on'); $('#one').show();
	
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
	
	if(confirm("로그인 후 이용하실 수 있습니다. 로그인하시겠습니까?")){
		showLoginLayer(encodeURIComponent("/customer/complaintWrite.do"));
	}	 
}
</script>
<section id="content"><!--[[ content Start ]]-->

      <div class="tit praise_tit" title="칭찬합시다"><span class="tit_txt praise_sub">노랑풍선은 소중한 칭찬에 힘을 내어 더 좋은 서비스로 보답하겠습니다.</span></div>


       <div class="board_search"><!--[[ Search Form Start ]]-->
           <form name="searchform" id="searchform"  action="/customer/praiseList.do">
                 <select name="searchCnd" id="searchCnd" title="검색조건">
			        <option value="TITLE" selected="selected">제목</option>
			        <option value="CONTENTS" >내용</option>
	            </select>
               <input type="text" name="searchWrd" id="searchWrd" title="검색어" value="" >
	        <button id="btn_search" title="검색" >검색</button>
           </form>
       </div><!--[[ Search Form End ]]-->


     <div class="board_area"><!--[[ board area Start ]]-->

		<table>
			<caption>칭찬합시다</caption>
            <colgroup>
                <col class="no" />
                <col />
                <col class="author" />
                <col class="dt" />
                <col class="click" />
            </colgroup>
			<tbody>
	            <tr>
				    <th scope="col">번호</th>
				    <th scope="col">제목</th>
	                <th scope="col">작성자</th>
				    <th scope="col">등록일</th>
	                <th scope="col">조회수</th>
	            </tr>
	             
	  			<tr >			
				    <td headers="번호" >
	    				4846</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039554&pageIndex=1&searchCnd=&searchWrd=">
				    		김우정인솔자님과 33명이 같이한 이탈리아일주 굳뜨~~~~~</a>	 	
				    </td>	
				    <td headers="작성자" >alada70**</td>		
					<td headers="등록일" >2017-09-21</td>
					<td headers="조회수" >4</td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >
	    				4845</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039536&pageIndex=1&searchCnd=&searchWrd=">
				    		딸과의 여행</a>	 	
				    </td>	
				    <td headers="작성자" >rokmc5**</td>		
					<td headers="등록일" >2017-09-21</td>
					<td headers="조회수" >23</td>
				</tr>
				<tr >			
				    <td headers="번호" >
	    				4844</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039520&pageIndex=1&searchCnd=&searchWrd=">
				    		칭찬합니다</a>	 	
				    </td>	
				    <td headers="작성자" >hegu**</td>		
					<td headers="등록일" >2017-09-21</td>
					<td headers="조회수" >35</td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >
	    				4843</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039499&pageIndex=1&searchCnd=&searchWrd=">
				    		미서부 여행의 대가 타미윤 가이드를 칭찬합니다.</a>	 	
				    </td>	
				    <td headers="작성자" >yoonsohy**</td>		
					<td headers="등록일" >2017-09-21</td>
					<td headers="조회수" >45</td>
				</tr>
				<tr >			
				    <td headers="번호" >
	    				4842</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039493&pageIndex=1&searchCnd=&searchWrd=">
				    		즐거운 중국여행을 만들어주신 오영준 가이드님 칭찬합니다</a>	 	
				    </td>	
				    <td headers="작성자" >njlee**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >40</td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >
	    				4841</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039486&pageIndex=1&searchCnd=&searchWrd=">
				    		행복을 만들었던 여행(다낭/호이안/후에) 정말 좋았어요</a>	 	
				    </td>	
				    <td headers="작성자" >yhss3**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >35</td>
				</tr>
				<tr >			
				    <td headers="번호" >
	    				4840</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039484&pageIndex=1&searchCnd=&searchWrd=">
				    		태국 허윤정과장님 짱!</a>	 	
				    </td>	
				    <td headers="작성자" >hyun59**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >29</td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >
	    				4839</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039482&pageIndex=1&searchCnd=&searchWrd=">
				    		정규영 가이드님을 칭찬합니다</a>	 	
				    </td>	
				    <td headers="작성자" >eankor**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >18</td>
				</tr>
				<tr >			
				    <td headers="번호" >
	    				4838</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039454&pageIndex=1&searchCnd=&searchWrd=">
				    		여행의 진짜 재미!</a>	 	
				    </td>	
				    <td headers="작성자" >yyk43**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >54</td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >
	    				4837</td>
				    <td headers="제목" class="subject" >	   	
				    	<a href="/customer/praiseView.do?cnslNo=20000039446&pageIndex=1&searchCnd=&searchWrd=">
				    		즐거운 여행과 </a>	 	
				    </td>	
				    <td headers="작성자" >cowel**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >43</td>
				</tr>
				</tbody>
		</table>
  
    </div><!--[[ board area End ]]-->

    <div class="board_navi_area"><!--[[ board navi Start ]]-->
        <span class="paging">            
            <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=2&searchCnd=&searchWrd=" title="2">2</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=3&searchCnd=&searchWrd=" title="3">3</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=4&searchCnd=&searchWrd=" title="4">4</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=5&searchCnd=&searchWrd=" title="5">5</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=6&searchCnd=&searchWrd=" title="6">6</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=7&searchCnd=&searchWrd=" title="7">7</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=8&searchCnd=&searchWrd=" title="8">8</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=9&searchCnd=&searchWrd=" title="9">9</a></span><span class=""><a href="/customer/praiseList.do?pageIndex=10&searchCnd=&searchWrd=" title="10">10</a></span><span class="next on"><a href="/customer/praiseList.do?pageIndex=2&searchCnd=&searchWrd="  title="다음페이지">다음</a></span><span class="last on"><a href="/customer/praiseList.do?pageIndex=485&searchCnd=&searchWrd=" title="마지막페이지">&gt;</a></span></span>
        <span class="board_btn">
            <button id="btnok" class="btnGray" title="확인" onclick="fnWrite()">글쓰기</button>
        </span>
    </div><!--[[ board navi End ]]-->  
</section>