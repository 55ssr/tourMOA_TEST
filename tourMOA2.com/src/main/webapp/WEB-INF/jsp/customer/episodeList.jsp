<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />  
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	$('.lnb06').addClass('lnb06 on'); $("ul.sub_6").css("display","block");    $('.sub06_01').addClass('sub06_01 on'); $('#one').show();
	
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
    <section id="content"><!--[[ content Start ]]-->
		<div class="tit travel_episode_write"><span class="blind_ir">여행 후기</span></div>
		<div class="travel_episode_best">
			<!-- 베스트 여행후기 롤링 -->
			<div id="best_episode_rolling" class="sliderkit bes_kit">
				<div class="sliderkit-nav">
					<div class="sliderkit-nav-clip">
						<ul>
							<li>
								<a href="/customer/episodeView.do?travrvNo=20000005771">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201709/201709141519283991705004001001.png" alt="" />
									<em><span>해외패키지</span><span class="sub">일본</span></em>
									<span class="txts">나의 10대 추억을 공유하는 그녀들과의 힐링 여행^^</span>
								</a>
							</li>
							<li>
								<a href="/customer/episodeView.do?travrvNo=20000005675">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201709/201709141521060401705004001032.jpg" alt="" />
									<em><span>해외패키지</span><span class="sub">유럽</span></em>
									<span class="txts">추억이 깃든 나의 동유럽 여행 일기 ! [김대호 인솔자님 수고하...</span>
								</a>
							</li>
							<li>
								<a href="/customer/episodeView.do?travrvNo=20000005619">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201709/201709141518561841705004001000.jpg" alt="" />
									<em><span>해외패키지</span><span class="sub">호주|뉴질랜드</span></em>
									<span class="txts">★호주,뉴질랜드여행이 아니면 알 수 없는 것들 ★</span>
								</a>
							</li>
							<li>
								<span class="pic_info">7월 베스트후기</span>
								<a href="/customer/episodeView.do?travrvNo=20000005342">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201708/201708091838559711705004001004.JPG" alt="" />
									<em><span>해외패키지</span><span class="sub">미주|남미</span></em>
									<span class="txts">★ 미서부여행이 아니면 알 수 없는 것들 ★</span>
								</a>
							</li>
							<li>
								<span class="pic_info">7월 베스트후기</span>
								<a href="/customer/episodeView.do?travrvNo=20000005096">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201708/201708091839067041705004001086.jpg" alt="" />
									<em><span>해외패키지</span><span class="sub">동남아</span></em>
									<span class="txts">시끌벅적 10년지기 친구들의 라오스 유람기(박영조실장님 감사해요...</span>
								</a>
							</li>
							<li>
								<span class="pic_info">7월 베스트후기</span>
								<a href="/customer/episodeView.do?travrvNo=20000005094">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201708/201708091839229951705004001011.JPG" alt="" />
									<em><span>해외패키지</span><span class="sub">동남아</span></em>
									<span class="txts">	이승보 가이드님과 함께 했던 가성비 최고 방콕+파타야 요트투어 ...</span>
								</a>
							</li>
							<li>
								<span class="pic_info">6월 베스트후기</span>
								<a href="/customer/episodeView.do?travrvNo=20000005041">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201707/201707121054226141705004001022.jpg" alt="" />
									<em><span>해외패키지</span><span class="sub">유럽</span></em>
									<span class="txts">	노랑풍선과 함께한 첫 동유럽+발칸 패키지 여행 후기</span>
								</a>
							</li>
							<li>
								<span class="pic_info">6월 베스트후기</span><a href="/customer/episodeView.do?travrvNo=20000004924">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201707/201707121054407081705004001077.jpg" alt="" />
									<em><span>해외패키지</span><span class="sub">동남아</span></em>
									<span class="txts">
									다시 가고 싶은 나라 태국♡ 이재만 가이드님 감사했습니다.^.^</span>
								</a>
							</li>
							<li>
								<span class="pic_info">6월 베스트후기</span><a href="/customer/episodeView.do?travrvNo=20000004807">
									<img src="http://cimg.cdn.ybtour.co.kr/attachHome/YT/TR/201707/201707121054532081705004001065.jpg" alt="" />
									<em><span>해외패키지</span><span class="sub">유럽</span></em>
									<span class="txts">
									내 생애 최고의 여행, 이탈리아 일주~!!(김지혜 인솔자님 감사...
										 </span>
								</a>
							</li>
						</ul>
					</div>
					<div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-prev"><a href="#" title="Scroll to the left"><span>이전 여행후기 보기</span></a></div>
					<div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-next"><a href="#" title="Scroll to the right"><span>다음 여행후기 보기</span></a></div>
					</div>
				<button type="button" class="bt_type bd_type02" id ="bestBtnA" onclick="bestList('1');">BEST 후기&nbsp;&nbsp;+</button>
				<button type="button" class="bt_type bd_type02" id ="bestBtnB" onclick="bestList('2');" style="display:none">전체 후기&nbsp;&nbsp;+</button>
			</div>
			<!-- //베스트 여행후기 롤링 -->
		</div>
		<!-- search_box -->
		<div class="search_box">
			<form name="searchForm" id="searchForm" action="/customer/episodeList.do" method="post">
			<input type="hidden" name="bestYn" value ="" />
			<span class="select_area">
				<label for="sh_sel01">구분</label>
				<select id="sh_sel01" name="srchParam" title="구분 선택" style="width:133px" onchange="changeCnd(this.value,'')">
					<option value="">구분선택</option>
					<option value ="877" >해외패키지</option>
					<option value ="89" >자유여행</option>
					<option value ="742" >국내여행</option>
					<option value ="328" >허니문</option>
					<option value ="43" >골프</option>
					<option value ="7" >부산|대구출발</option>
					<option value ="880" >해외항공</option>
					<option value ="262" >기업|단체</option>
					</select>
				<label for="sh_sel02">지역</label>
				<select id="sh_sel02" title="지역 선택" style="width:133px" name ="srchParamContent" onchange="subMenuChange(this.value)">
					<option value ="">지역선택</option>
				</select>
				<select title="제목 선택" style="width:133px" name="searchCnd">
					<option value="TITLE" selected="selected">제목</option>
	                <option value="CONTENTS" >내용</option>
	                <option value="REG" >작성자</option>
				</select>
			</span>
			<input type="text" title="검색어 입력" style="width:357px" name ="searchWrd" value =""/>
			<button type="button" class="bt_type bd_type" id="epiBtn">검색</button>  
			</form>
		</div>
		<!-- //search_box -->
		<div class="tbl_wrap">
			<table class="tbl_vertical_type">
			<caption>여행후기 리스트</caption>
			<colgroup>
				<col style="width:106px" /><col style="width:100px" /><col style="width:149px" /><col style="width:423px" /><col style="width:241px" /><col style="width:81px" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">구분</th>
					<th scope="col">지역</th>
					<th scope="col">제목</th>
					<th scope="col">작성일/작성자</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>25937</td>
					<td>해외패키지</td>
					<td>일본</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006127&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">남의 일이 아닌 내 가족의 일이다 생각하고 좀 더 도움을 줄순 없었을까요?</span>
						</a>
					</td>
					<td class="date_writer">2017-09-20  /  baby17**님</td>
					<td>17</td>
				</tr>
				<tr>
					<td>25936</td>
					<td>해외패키지</td>
					<td>일본</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006126&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">김은희 가이드님과 함께한 북해도 여행 </span>
						</a>
					</td>
					<td class="date_writer">2017-09-20  /  jqkr**님</td>
					<td>5</td>
				</tr>
				<tr>
					<td>25935</td>
					<td>해외패키지</td>
					<td>동남아</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006124&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">[최예찬 가이드]하노이/하롱베이/닌빈 추천</span>
						</a>
					</td>
					<td class="date_writer">2017-09-20  /  kind47yo**님</td>
					<td>10</td>
				</tr>
				<tr>
					<td>25934</td>
					<td>해외패키지</td>
					<td>동남아</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006123&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">베트남 호치민 판티엣 4박5일</span>
						</a>
					</td>
					<td class="date_writer">2017-09-20  /  love541**님</td>
					<td>11</td>
				</tr>
				<tr>
					<td>25933</td>
					<td>해외패키지</td>
					<td>유럽</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006122&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">아름다운 터키. 이경우 가이드최고.</span>
						</a>
					</td>
					<td class="date_writer">2017-09-20  /  kjyki**님</td>
					<td>25</td>
				</tr>
				<tr>
					<td>25932</td>
					<td>해외패키지</td>
					<td>유럽</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006121&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">평생 잊을수 없는 서유럽여행... 정용훈인솔자님 감사합니다.</span>
						</a>
					</td>
					<td class="date_writer">2017-09-19  /  aio11**님</td>
					<td>17</td>
				</tr>
				<tr>
					<td>25931</td>
					<td>해외패키지</td>
					<td>동남아</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006118&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">베트남/호치민/판티엣/무이네5일</span>
						</a>
					</td>
					<td class="date_writer">2017-09-19  /  jeni63**님</td>
					<td>15</td>
				</tr>
				<tr>
					<td>25930</td>
					<td>해외패키지</td>
					<td>중국</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006117&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">친구들과 추억을 담은 청도여행</span>
						</a>
					</td>
					<td class="date_writer">2017-09-19  /  kiss61**님</td>
					<td>7</td>
				</tr>
				<tr>
					<td>25929</td>
					<td>부산|대구출발</td>
					<td>부산출발-일본</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006116&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">폭풍을 뚫고 여행한 이야기,김상수 가이드 칭찬합니다</span>
						</a>
					</td>
					<td class="date_writer">2017-09-19  /  pis1**님</td>
					<td>10</td>
				</tr>
				<tr>
					<td>25928</td>
					<td>해외패키지</td>
					<td>중국</td>
					<td class="prd_title">
						<a href="/customer/episodeView.do?travrvNo=20000006115&pageIndex=1&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=">
							<span class="prd_txt">설레임을 갖고 출발한 중국 여행~~</span>
						</a>
					</td>
					<td class="date_writer">2017-09-19  /  creatio**님</td>
					<td>9</td>
				</tr>
				</tbody>
			</table>
			
			<div class="board_navi_area"><!--[[ board navi Start ]]-->
		        <span class="paging">           
		            <span class="first"><a>&lt;</a></span>
		            <span class="pre"><a>이전</a></span>
		            <span>
		             <a href="/customer/episodeList.do?pageIndex=2&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="1">1
		             </a></span>
		            <span class="">
		            <a href="/customer/episodeList.do?pageIndex=2&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="2">
		            2
		            </a>
		            </span>
		            <span class="">
		            <a href="/customer/episodeList.do?pageIndex=3&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="3">
		            3
		            </a>
		            </span><span class=""><a href="/customer/episodeList.do?pageIndex=4&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="4">4</a></span><span class=""><a href="/customer/episodeList.do?pageIndex=5&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="5">5</a></span><span class=""><a href="/customer/episodeList.do?pageIndex=6&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="6">6</a></span><span class=""><a href="/customer/episodeList.do?pageIndex=7&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="7">7</a></span><span class=""><a href="/customer/episodeList.do?pageIndex=8&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="8">8</a></span><span class=""><a href="/customer/episodeList.do?pageIndex=9&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="9">9</a></span><span class=""><a href="/customer/episodeList.do?pageIndex=10&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="10">10</a></span><span class="next"><a href="/customer/episodeList.do?pageIndex=2&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn="  title="다음페이지">다음</a></span><span class="last"><a href="/customer/episodeList.do?pageIndex=2594&searchCnd=&searchWrd=&srchParam=&srchParamContent=&bestYn=" title="마지막페이지">&gt;</a></span></span>
		        <span class="board_btn">
		            <button id="btnWrite" class="btnGray" title="확인" >글쓰기</button>
		        </span>
		    </div><!--[[ board navi End ]]-->
			<div class="travel_banner"><img src="/images/travelInfo/banner_ev_review.gif" alt="노랑풍선으로 여행을 다녀오시고, 여행후기를 남겨주세요~ 매월 최대 3분을 선정하여 노랑풍선 여행상품권을 드립니다!" /></div>
		</div>
		<script>
			$(function(){
				//table 색깔입히기
				$(".tbl_vertical_type tbody tr:odd").addClass("odd");
				
				// 베스트 여행후기 롤링 스크립트
				$("#best_episode_rolling").sliderkit({
					auto:false,
					shownavitems:3,
					start:0,
					scroll:1
				});
				
				$("#epiBtn").on('click',function(){
					var len = $("input[name='searchWrd']").val();
					if(len.length < 2){
						alert("검색은 2글자 이상 하셔야합니다.");
						return;
					}
					$("#searchForm").submit();
				});
			
			});	
		</script>
    </section>
</div>