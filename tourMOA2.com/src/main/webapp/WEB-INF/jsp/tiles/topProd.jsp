<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/product/jquery.bxslider.js"></script>
<script src="/js/ui.js" type="text/javascript"></script>

 <script>
	function fnMenuSelect() {

	    
	}
	
	$( document ).ready(function() {
	    $('#gnbsub1').mouseleave(function(){
	        setTimeout(function() {
	            $("#one > li").removeClass('on'); // 1depth 초기화
	            fnMenuSelect();
	        }, 2000);
	    });
	});
	</script> 
	 <script type="text/javascript">

 	function setAreaDtl(did) {
		var bSelect = false;
		$('#codeAreaDetail').val("");
		$('#codeAreaDetail option').hide();
		$('#codeAreaDetail option').each(function(idx, el){
			if($(el).data('pid') == did) {
				$(el).show();
				if($(el).data('did') == '76') {
					bSelect = true;
				}
			}
		});
//	 	console.log('val', bSelect);
		$('#codeAreaDetail').val( bSelect ? $('#codeAreaDetail option[data-did=76]').val() : $('#codeAreaDetail option:eq(0)').val() );
	}
	$(document).on('change', '#codeArea[data-dtl=Y]', function(e){
		setAreaDtl($(this).val());
		return false;
	});
	$( document ).ready(function() {
		$('#codeArea[data-dtl=Y]') && setAreaDtl('849');
	}); 

</script> 
<script>
$(document).ready(function(){
	
	//이미지 액박처리start
	$(".txt.txt03 img").error(function(){
		$(this).replaceWith('');
	}); 
	
	
	$(".aside06 .seletboxAir #inputAir img").error(function(){
		$(this).replaceWith('');
	}); 
	
	$(".aside06 .seletboxAir ul li img").error(function(){
		$(this).replaceWith('');
	}); 
	//이미지 액박처리end

	
	$("#menuopen").click(function(){
		$("#locMapOpen").css({display:"block"});
	});
	$(".menuclose").click(function(){
		$("#locMapOpen").css({display:"none"});
	});
	$("span.txt06-2>span>img").hover(function(){
		if(".tip[role='1']"){
			$(".role02").css({display:"none"});
			$(".tooltip").css({display:"block",left:"134px", top:"45px"});
			$(".role01").css({display:"block"});
		}
	});
	$("span.txt06-3>span>img").hover(function(){
		if(".tip[role='2']"){   
			$(".role01").css({display:"none"});
			$(".tooltip").css({display:"block", left:"230px", top:"45px" });
			$(".role02").css({display:"block"}); 
		}
	});
	$(".tip").mouseleave(function(){
		$(".tooltip").css({display:"none"});
	});
});

</script>
	
<div id="content1">
 <div id="wrap1">
	<header>
	
		<nav id="gnbsub1" data-loc="">
            <ul id="one">
            	<li class="tit"><span><a href="/product/detailList.do"></a></span></li>
	            <li class="sub01"><a href="#">유럽</a></li>
	            <li class="sub02"><a href="#">동남아</a></li>
	            <li class="sub03"><a href="#">필리핀/푸켓</a></li>
	            <li class="sub04"><a href="#">중국</a></li>
	            <li class="sub05"><a href="#">홍콩/대만</a></li>
	            <li class="sub06"><a href="#">일본</a></li>
	            <li class="sub07"><a href="#">괌/사이판</a></li>
            </ul>
        </nav>
   
	<div id="detail_wrap">
       <div id="region">
       		<label for="codeArea">선택된 지역</label>
	        <select name="product" id="codeArea" data-dtl="Y">
		        <option value="상품선택">상품선택</option>
		 		<option value="49">미서부</option>
				<option value="342">미동부</option>
				<option value="348">하와이</option>
				<option value="306">캐나다</option>
				<option value="307">중남미</option>
				<option value="3118">기타</option>
		  </select>
        <label for="codeAreaDetail">선택된 세부지역</label>
           <select name="product" id="codeAreaDetail" >
	           	<option value="상품선택" style="display: none;">상품선택</option>
	      		<option value="#" data-pid="49" data-did="235" style="display: block;">LA/라스베가스/샌프란시스코/샌디에고/옐로스톤/그랜드캐년/3대캐년</option>
	 			<option value="#" data-pid="342" data-did="829" style="display: block;">뉴욕/워싱턴/나이아가라/보스턴/시카고/필라델피아</option>
				<option value="#" data-pid="348" data-did="917" style="display: block;">오하우섬 일주</option>		
				<option value="#" data-pid="348" data-did="918" style="display: block;">오하우섬+이웃섬일주</option>				    
				<option value="#" data-pid="306" data-did="7423" style="display: block;">서부(시애틀/밴쿠버/로키/빅토리아)</option>
				<option value="#" data-pid="306" data-did="7424" style="display: block;">동부(토론토/몬트리올/퀘백/나이아가라)</option>
				<option value="#" data-pid="307" data-did="7424" style="display: block;">단독상품</option>
				<option value="#" data-pid="307" data-did="7425" style="display: block;">연합상품</option>
				<option value="#" data-pid="3118" data-did="7159" style="display: block;">임직원 전용</option>
			</select>
	<div id="menuopen">
				<input type="image" src="/images/RYUTEST/detailPackage_menuopen_font.png" alt="열기"/>
			</div>
		 </div>
	</div>
<!-- [[detailPackage_selectlocWrap End]]   -->
	<!-- [[locMapOpen START]] : 펼치기 눌렀을 때 나오는 메뉴   -->
	<div id="locMapOpen">
		<div class="areaBox">
			<table>
				<caption>지역메뉴</caption>
					<tr>
						<th>
						<span>서유럽</span>
						</th>
							<td>
							<a href="#">서유럽(8일 이하)</a>
							<a href="#">서유럽(9일)</a>
							<a href="#">서유럽(10일)</a>
							<a href="#">서유럽(11일 이상)</a>
							<a href="#">한나라 일주</a>
							</td>
					</tr>
					
					<tr>
						<th>
						<span>체코/오스트리아/동유럽</span>
						</th>
							<td>
							<a href="/main/main.do">동유럽(9일 이하)</a>
							<a href="#">동유럽(10일 이상)</a>
							<a href="#">동유럽 + 서유럽</a>
							</td>
					</tr>
					
					<tr>
						<th>
						<span>크로아티아/발칸/동유럽</span>
						</th>
							<td>
							<a href="#">크로아티아/발칼일주</a>
							<a href="#">크로아티아/발칸/동유럽</a>
							</td>
					</tr>
					
					<tr>
						<th>
						<span>스페인/포르투갈/모로코</span>
						</th>
							<td>
							<a href="#">스페인/포르투갈(9일 이하)</a>
							<a href="#">스페인/포르투갈(10일 이상)</a>
							</td>
					</tr>
			</table>
			
			<div class="areaNotice">
				<div class="fastBox">
					<ul>
						<li class="areaNoticeTitle"><span>이달의 문의 증가 상품</span></li>
						<li class="areaNoticeText"> - 
						<a href="#">단기 (6~9일)</a>
						</li>
						<li class="areaNoticeText"> - 
						<a href="#">장기 (10~15일)</a>
						</li>
					</ul>
				</div>
				<div class="fastBox">
					<ul>
						<li class="areaNoticeTitle"><span>여성 고객이 찾는 상품</span></li>
						<li class="areaNoticeText"> - 
						<a href="#">단기 (6~9일)</a>
						</li>
						<li class="areaNoticeText"> - 
						<a href="#">장기 (10~15일)</a>
						</li>
					</ul>
				</div>
				<div class="fastBox">
					<ul>
						<li class="areaNoticeTitle"><span>유럽 스토리 텔링</span></li>
						<li class="areaNoticeText"> - 
						<a href="#">스토리텔링 보기</a>
						</li>
					</ul>
				</div>
			</div> 
			<div class="localBg01"></div>
			<div class="localBg02"></div>
			<div class="localBg03"></div>
			<button type="button" class="menuclose" title="지역메뉴 닫기"></button>
		</div>
		
	</div>
	<!-- [[locMapOpen END]] : 펼치기 눌렀을 때 나오는 메뉴  -->
		</header>
	</div>
</div>       