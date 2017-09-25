<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />
	<script>
		function fnMenuSelect() {
		    //여행내역  
		    
		    //관심내역    
		    
		    //참여내역
		     $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");        $('.sub03_1').addClass('sub03_01 on'); $('#one').show();
		    
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
	<script type="text/javaScript" defer="defer">
		$(document).ready(function(){
			
			//검색
			$("#btnSearch").click(function(){
				fn_submit();
			});
			
			//기간별
			$("button[name='range']").click(function(){
				$("input:hidden[name='searchMonth']").val($(this).val());
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
                        <li class=" sel"><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                        <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                    </ul>
                </div>
            </div><!--[[ 메인상단 End ]]-->
       </section>



<section id="content" class="contentSub"><!--[[ content Start ]]-->

        <div class="tit qna_tit" title="나의 상담문의"><span class="qna_tit_txt">(총 <span class="mint14">0</span>건)</span></div>

		<form name="searchForm" id="searchForm" action="/mypage/inquiryList.do" method="post"">
		<input type="hidden" name="searchMonth" id="searchMonth" value="" />
		<input type="hidden" name="searchStDt" id="searchStDt" value="" />
		<input type="hidden" name="searchEnDt" id="searchEnDt" value="" />
		
        <div class="search_area"><!--[[ 문의내역검색 Start ]]-->
            <ul>
                <li class="head"><label for="searchBbsType">구분</label></li>
                <li class="control">
                    <select name="searchBbsType" id="searchBbsType" class="selType">
                        <option value="">전체보기</option>
                        <option value="QNA" >묻고답하기</option>
                        <option value="CPL" >불편신고</option>
                    </select>
                </li>
                <li class="head"><label for="1m">기간별</label></li>
                <li class="control">
                    <button type="button" name="range" id="1m" title="1개월" value="30" >1개월</button>
                    <button type="button" name="range" id="3m" title="3개월" value="90" >3개월</button>
                    <button type="button" name="range" id="mAll" class="last on" title="전체보기" value="" >전체보기</button>
                </li>
                <li class="head"><label for="fromYY">일자별</label></li>
                <li class="mmdd">
                
                	<select name="fromYY" id="fromYY" class="selYY">
                    	<option value="" >선택</option>
                    	<option value="2017" >2017</option>
                        <option value="2016" >2016</option>
                        <option value="2015" >2015</option>
                        <option value="2014" >2014</option>
                        <option value="2013" >2013</option>
                        <option value="2012" >2012</option>
                        <option value="2011" >2011</option>
                        <option value="2010" >2010</option>
                        <option value="2009" >2009</option>
                        <option value="2008" >2008</option>
                        <option value="2007" >2007</option>
                        <option value="2006" >2006</option>
                        <option value="2005" >2005</option>
                        <option value="2004" >2004</option>
                        <option value="2003" >2003</option>
                        <option value="2002" >2002</option>
                        <option value="2001" >2001</option>
                        <option value="2000" >2000</option>
                        <option value="1999" >1999</option>
                        <option value="1998" >1998</option>
                        <option value="1997" >1997</option>
                        <option value="1996" >1996</option>
                        <option value="1995" >1995</option>
                        <option value="1994" >1994</option>
                        <option value="1993" >1993</option>
                        <option value="1992" >1992</option>
                        <option value="1991" >1991</option>
                        <option value="1990" >1990</option>
                        </select>
                    <select name="fromMM" id="fromMM" class="selMD" title="검색시작월">
                        <option value="" >선택</option>
						<option value="1" >1</option>
						<option value="2" >2</option>
						<option value="3" >3</option>
						<option value="4" >4</option>
						<option value="5" >5</option>
						<option value="6" >6</option>
						<option value="7" >7</option>
						<option value="8" >8</option>
						<option value="9" >9</option>
						<option value="10" >10</option>
						<option value="11" >11</option>
						<option value="12" >12</option>
						</select>
                    <select name="fromDD" id="fromDD" class="selMD" title="검색시작일">
                        <option value="" >선택</option>
						<option value="1" >1</option>
						<option value="2" >2</option>
						<option value="3" >3</option>
						<option value="4" >4</option>
						<option value="5" >5</option>
						<option value="6" >6</option>
						<option value="7" >7</option>
						<option value="8" >8</option>
						<option value="9" >9</option>
						<option value="10" >10</option>
						<option value="11" >11</option>
						<option value="12" >12</option>
						<option value="13" >13</option>
						<option value="14" >14</option>
						<option value="15" >15</option>
						<option value="16" >16</option>
						<option value="17" >17</option>
						<option value="18" >18</option>
						<option value="19" >19</option>
						<option value="20" >20</option>
						<option value="21" >21</option>
						<option value="22" >22</option>
						<option value="23" >23</option>
						<option value="24" >24</option>
						<option value="25" >25</option>
						<option value="26" >26</option>
						<option value="27" >27</option>
						<option value="28" >28</option>
						<option value="29" >29</option>
						<option value="30" >30</option>
						<option value="31" >31</option>
						</select> 
                    ~
                    
                    <select name="toYY" id="toYY" class="selYY" title="검색종료년">
                        <option value="" >선택</option>
                        <option value="2017" >2017</option>
                        <option value="2016" >2016</option>
                        <option value="2015" >2015</option>
                        <option value="2014" >2014</option>
                        <option value="2013" >2013</option>
                        <option value="2012" >2012</option>
                        <option value="2011" >2011</option>
                        <option value="2010" >2010</option>
                        <option value="2009" >2009</option>
                        <option value="2008" >2008</option>
                        <option value="2007" >2007</option>
                        <option value="2006" >2006</option>
                        <option value="2005" >2005</option>
                        <option value="2004" >2004</option>
                        <option value="2003" >2003</option>
                        <option value="2002" >2002</option>
                        <option value="2001" >2001</option>
                        <option value="2000" >2000</option>
                        <option value="1999" >1999</option>
                        <option value="1998" >1998</option>
                        <option value="1997" >1997</option>
                        <option value="1996" >1996</option>
                        <option value="1995" >1995</option>
                        <option value="1994" >1994</option>
                        <option value="1993" >1993</option>
                        <option value="1992" >1992</option>
                        <option value="1991" >1991</option>
                        <option value="1990" >1990</option>
                        </select>
                    <select name="toMM" id="toMM" class="selMD" title="검색종료월">
                        <option value="" >선택</option>
						<option value="1" >1</option>
						<option value="2" >2</option>
						<option value="3" >3</option>
						<option value="4" >4</option>
						<option value="5" >5</option>
						<option value="6" >6</option>
						<option value="7" >7</option>
						<option value="8" >8</option>
						<option value="9" >9</option>
						<option value="10" >10</option>
						<option value="11" >11</option>
						<option value="12" >12</option>
						</select>
                    <select name="toDD" id="toDD" class="selMD" title="검색종료일">
                        <option value="" >선택</option>
						<option value="1" >1</option>
						<option value="2" >2</option>
						<option value="3" >3</option>
						<option value="4" >4</option>
						<option value="5" >5</option>
						<option value="6" >6</option>
						<option value="7" >7</option>
						<option value="8" >8</option>
						<option value="9" >9</option>
						<option value="10" >10</option>
						<option value="11" >11</option>
						<option value="12" >12</option>
						<option value="13" >13</option>
						<option value="14" >14</option>
						<option value="15" >15</option>
						<option value="16" >16</option>
						<option value="17" >17</option>
						<option value="18" >18</option>
						<option value="19" >19</option>
						<option value="20" >20</option>
						<option value="21" >21</option>
						<option value="22" >22</option>
						<option value="23" >23</option>
						<option value="24" >24</option>
						<option value="25" >25</option>
						<option value="26" >26</option>
						<option value="27" >27</option>
						<option value="28" >28</option>
						<option value="29" >29</option>
						<option value="30" >30</option>
						<option value="31" >31</option>
						</select>
                </li>
                <li class="control mg0">
                <button type="button" name="btnSearch" id="btnSearch" class="cmd">검색</button></li>
            </ul>
        </div><!--[[ 문의내역검색 Start ]]-->
		</form>
        <div class="board_area"><!--[[ board area Start ]]-->
            <table>
                <caption>문의내역</caption>
                <colgroup>
                    <col class="type">
                    <col class="subject">
                    <col class="dt">
                    <col class="aq">
                </colgroup>
                <tbody>
	                <tr>
		                <th scope="col">구분</th>
		                <th scope="col">제목</th>
		                <th scope="col">등록일</th>
		                <th scope="col">답변여부</th>
	                </tr>                
               </tbody>
            </table>
        </div><!--[[ board area End ]]-->
        <div class="board_navi_area"><!--[[ board navi Start ]]-->
            <span class="paging">
                <span class="first">&lt;</span>
                <span class="pre">이전</span>
                <span class="on"><a>1</a></span>
                <span class="next">다음</span>
                <span class="last">&gt;</span>
            </span>         
        </div><!--[[ board navi End ]]-->        
        <div class="footBox_banner" style="margin-bottom:20px;">
        	<a href="#"><img src="/images/mypage/faq_banner.jpg" alt=" " /></a>
        </div>
    </section>
</div>
</div>    