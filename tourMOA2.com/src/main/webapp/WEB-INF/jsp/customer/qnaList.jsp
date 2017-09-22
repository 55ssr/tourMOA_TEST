<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
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
	if(confirm("로그인 후 이용하실 수 있습니다. 로그인하시겠습니까?")){
		showLoginLayer(encodeURIComponent("/customer/complaintWrite.do"));
	}	 
}
</script>
    <section id="content"><!--[[ content Start ]]-->
		<div class="tit qna_tit" title="묻고답하기"><span class="tit_txt qna_sub">여행상품에 대한 궁금하신 내용은 언제든지 물어보세요.</span></div>
		<div class="board_search"><!--[[ Search Form Start ]]-->
            <form name="searchform" id="searchform" action="/customer/qnaList.do" method="post" onsubmit="return frmSubmit();">
            	<input type="hidden" name="searchCat" id="searchCat" value="" />
                <span class="select_wrap">
	                <i>
		                <select name="searchCnd" id="searchCnd" title="검색조건">
					        <option value="TITLE" selected="selected">제목</option>
					        <option value="CONTENTS" >내용</option>
				        </select>
	                </i>
                </span>
                <input type="text" name="searchWrd" id="searchWrd" title="검색어" placeholder="찾고자하는 내용을 상세히 입력 해 주세요" value=""  >
		        <button id="btn_search" title="검색">검색</button>
            </form>
        </div><!--[[ Search Form End ]]-->
        <div class="qna_cat_area">
        	<form name="searchCatForm" id="searchCatForm" action="/customer/qnaList.do" method="post" onsubmit="return frmSubmit();">
	            <ul>
	                <li><input type="radio" name="searchCat" id="all"  onclick="location.href='/customer/qnaList.do?searchCat=&searchCnd=&searchWrd='" value="A" checked="checked" /><label for="all">전체문의보기</label></li>
	                <li><input type="radio" name="searchCat" id="mine" onclick="fn_searchCat()"  value="M" /><label for="mine">내문의보기</label></li>
	            </ul>
            </form>
        </div>
        <div class="board_area"><!--[[ board area Start ]]-->
		<table>
			<caption>묻고답하기</caption>
            <colgroup>
                <col class="no">
                <col class="subject">
                <col class="author">
                <col class="dt">
                <col class="click">
                <col class="aq">
            </colgroup>
			<tbody> 
	            <tr>
				    <th scope="col">번호</th>
				    <th scope="col">제목</th>
				    <th scope="col">작성자</th>
	                <th scope="col">등록일</th>
	                <th scope="col">조회수</th>
	                <th scope="col">답변여부</th>
	            </tr>            
	  			<tr >			
				    <td headers="번호" >33805</td>
				    <td headers="제목" class="subject" ><span class="secret"></span>결제에 관하여.</td>	
				    <td headers="작성자" >forsal**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >1</td>
					<td headers="답변여부" ><span class="answer_p">미확인</span></td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >33804</td>
				    <td headers="제목" class="subject" ><span class="secret"></span>이티켓이 잘못온거같아요</td>	
				    <td headers="작성자" >ekdldpsk0**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >0</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr >			
				    <td headers="번호" >33803</td>
				    <td headers="제목" class="subject" >	<span class="secret"></span>결제영수증 메일로 부탁드려요</td>	
				    <td headers="작성자" >jigum**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >0</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >33802</td>
				    <td headers="제목" class="subject" >	<span class="secret"></span>항공권변경 요청</td>	
				    <td headers="작성자" >ekdldpsk0**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >1</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr >			
				    <td headers="번호" >33801</td>
				    <td headers="제목" class="subject" ><span class="secret"></span>비회원예약조회 불가</td>	
				    <td headers="작성자" >iky7**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >0</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >33800</td>
				    <td headers="제목" class="subject" ><span class="secret"></span>중식쿠폰</td>	
				    <td headers="작성자" >yun78**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >0</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr >			
				    <td headers="번호" >33799</td>
				    <td headers="제목" class="subject" ><span class="secret"></span>항공여정변경안내</td>	
				    <td headers="작성자" >forum**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >0</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >33798</td>
				    <td headers="제목" class="subject" >	<span class="secret"></span>문의드립니다</td>	
				    <td headers="작성자" >mr08**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >1</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr >			
				    <td headers="번호" >33797</td>
				    <td headers="제목" class="subject" >	
				    	<span class="secret"></span>항공권 환불 문의드립니다</td>	
				    <td headers="작성자" >pby1**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >1</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
				<tr class="even">			
				    <td headers="번호" >33796</td>
				    <td headers="제목" class="subject" ><span class="secret"></span>문의드립니다</td>	
				    <td headers="작성자" >qw38**</td>		
					<td headers="등록일" >2017-09-20</td>
					<td headers="조회수" >0</td>
					<td headers="답변여부" ><span class="answer_f">답변완료</span></td>
				</tr>
			</tbody>
		</table>  
    </div><!--[[ board area End ]]-->
    <div class="board_navi_area"><!--[[ board navi Start ]]-->
        <span class="paging">
            <span class="first">&lt;</span><span class="pre">이전</span><span class="on"><a>1</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=2&searchCat=&searchCnd=&searchWrd=" title="2">2</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=3&searchCat=&searchCnd=&searchWrd=" title="3">3</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=4&searchCat=&searchCnd=&searchWrd=" title="4">4</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=5&searchCat=&searchCnd=&searchWrd=" title="5">5</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=6&searchCat=&searchCnd=&searchWrd=" title="6">6</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=7&searchCat=&searchCnd=&searchWrd=" title="7">7</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=8&searchCat=&searchCnd=&searchWrd=" title="8">8</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=9&searchCat=&searchCnd=&searchWrd=" title="9">9</a></span><span class=""><a href="/customer/qnaList.do?pageIndex=10&searchCat=&searchCnd=&searchWrd=" title="10">10</a></span><span class="next on"><a href="/customer/qnaList.do?pageIndex=2&searchCat=&searchCnd=&searchWrd="  title="다음페이지">다음</a></span><span class="last on"><a href="/customer/qnaList.do?pageIndex=3381&searchCat=&searchCnd=&searchWrd=" title="마지막페이지">&gt;</a></span></span>
        <span class="board_btn">
            <button id="btnok" class="btnGray" title="확인" onclick="fnWrite()">문의하기</button>
        </span>
    </div><!--[[ board navi End ]]-->
    </section>
</div>
</div>