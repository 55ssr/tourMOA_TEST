<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script src="/js/jquery-ui.multidatespicker.js">
function resultSearchPrice(event){
	
	event.preventDefault();
	 
	lowPrice = $('input:text[name="lowPrice"]').val();
	highPrice = $('input:text[name="highPrice"]').val();
	
	
	if(lowPrice == "" && highPrice == "" ){
		alert("가격을 입력하세요.");
		return false;
	}
	
	var urlStr = "/search/incSearch.do";
	
	$.ajax({
    	url:urlStr,
    	data:{	
			"lowPrice"		:  lowPrice
			,"highPrice" : highPrice
			,"query"		:  ''
	  	}  
    	,success:function(html){
  			$(".notiWrapCon").html(html);
		}
    	,error: function(html) {
			
		}
    });
}
</script>

<script src="/js/jquery.number.min.js"></script>
<script>
$(document).ready(function(){
	popKeyword(); // 인기검색어 DIV
	popRecommend(); //추천검색어 DIV
	popRecommendStr(); //추천검색어 String
	popLikeStr(); //연관검색어
	
    
	//가격별 검색 직업입력 부분 숫자 처리
	$("input:text[numberOnly]").number(true);
	
	//출발요일 전체 선택
    $("#weekall").click(function(event) {
    	
    	event.preventDefault();
    	
    	//클릭되었으면
        if($("#weekall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name='departWDayTop']").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name='departWDayTop']").prop("checked",false);
        }
		
	});
	
	
  
    $("#datepickers").multiDatesPicker({
    	numberOfMonths: 3,
    	dateFormat: "yymmdd",
    	minDate: 1,
    	altField: '#departDate'
    });
    
    
    $( "#departDate" ).datepicker({
    	dateFormat : 'yymmdd'
    }); 
  
    
    $("button[name='btnSchedule']").click(function(event){
    	
    	event.preventDefault();
    	
		var dspCls = $(this).val();
		if(dspCls == 'B'){
			$(location).attr('href',$(this).attr('role-url'));
		}else{
			showLayer($(this));
		}
	});
  
  //선택상품비교하기
	$("#btnCompare").click(function(event){
		
		event.preventDefault();
		
		var checkedVal = "";
		var cnt = 0;
		
		$("input:checkbox[name='chk']:checked").each(function(){
			cnt++;
			checkedVal += ((checkedVal == "" ? "" : ",") + $(this).val());
		});		
		
		if(cnt != 2){
			alert("상품비교는 2개를 선택하셔야 가능합니다");
			return true;
		}else{
			var roleUrl = $(this).attr('role-url');
			roleUrl = "/product/compareMaster.do";
			$(this).attr('role-url', roleUrl + "?compareGoodCd=" + checkedVal + "&menu=&did=");
			showLayer(this);
			$(this).attr('role-url', roleUrl);	//최초 URL로 복원
		}		
	});
});

function resultSearch(query,categoryDepth1,categoryDepth2 ,categoryName2,departDate,price,lowPrice,highPrice){
	lowPrice = replaceAll(lowPrice,",","");
	highPrice = replaceAll(highPrice,",","");
	pageNum = 1;
	$.ajax({
    	url:"/search/incSearch.do"
    	,async:true
    	,data:{
    		  "query"		: query
    		  ,"categoryDepth1" : categoryDepth1
    		  ,"categoryDepth2" : categoryDepth2
    		  ,"categoryName2" : categoryName2
    		  ,"departDate" : departDate
    		  ,"price" : price
    		  ,"lowPrice" : lowPrice
    		  ,"highPrice" : highPrice
    	}        	
    	,success:function(html){
    		$(".notiWrapCon").html(html);    	
    
    	}
    	,error: function(html) {
			//alert("incMaster");
		}
    });
}

//전체 replace 함수 
function replaceAll(str, searchStr, replaceStr) {

    return str.split(searchStr).join(replaceStr);
}

//가격별 검색 
function resultSearchDepartDay(event){
	
	event.preventDefault();
	
	var query = $("input:text[name='query']").val();
	
	var urlStr = "/search/incSearch.do";
	$.ajax({
    	url:urlStr,
    	data:{	
			"query"		:  query
	  	}  
    	,success:function(html){
    		$(".notiWrapCon").empty();
  			$(".notiWrapCon").html(html);
		}
    	,error: function(html) {
			
		}
    });
}


//출발일 검색 
function resultSearchDepartDay(){
	var departDate = $("input:hidden[name='departDate']").val();
	var departWDay = $("input:checkbox[name='departWDay']").val();
	
	departDate =replaceAll(departDate.replace(/ /gi, ''),',','|');
	
	var wDay = "";
	$("input:checkbox[name='departWDayTop']:checked").each(function (index) {
		wDay += $(this).val() + "|";
	});
	
	var departWDay = wDay;	

	if(departDate == "" && departWDay == "" ){
		alert("출발일 또는 출발요일을 선택하세요.");
		return false;
	}
	
	var urlStr = "/search/incSearch.do";
	$.ajax({
    	url:urlStr,
    	data:{	
			"departDate"		:  departDate
			,"departWDay" : departWDay
			,"query"		:  ''
	  	}  
    	,success:function(html){
    		$(".notiWrapCon").empty();
  			$(".notiWrapCon").html(html);
		}
    	,error: function(html) {
			
		}
    });
}


$(document).on("keyup", "input:text[numberOnly]", function() {
	$(this).number(true);
	
});
</script>
<script>
function fn_popup(){
	var url = "/ctgRegPop.do";
	window.open(url,"ctgReg","width=500,height=500,resizeble=yes,left=500,top=200");	
}
</script>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

	<section id="content"><!--[[ content Start ]]-->

        <div id="searchWrap"><!--[[ 통합검색 searchWrap Start ]]-->
            <div class="title" title="검색하기"></div>
            <div class="tab">
                <ul>
                    <a href="/search/searchKeyword.do" ><li class="t01 on">
                        <p>키워드검색</p>
                    </li></a>
                    <a href="/search/searchDate.do" ><li class="t02 ">
                        <p>출발일검색</p>
                    </li></a>
                    <a href="/search/searchPrice.do" ><li class="t03 ">
                        <p>가격별검색</p>
                    </li></a>
                </ul>
            </div>
			<form name="searchforms" id="totalSearch" action="/search/searchKeyword.do" method="POST"  onSubmit="resultSearchKeyword(event); return false;">
			<input type="hidden" name="sort" value="">
			<input type="hidden" name="collection" value="">
			<input type="hidden" name="realQuery" value="" />
            <div class="tabview tab01 block"><!--[[ 키워드검색 tab01 Start ]]-->
                <span class="noti" >상품번호를 알고 계시다면, 상품번호로 간편하게 검색하세요!</span>
                <div id="keywordSrh">
                
                    <input type="text" id="query2" name="query" title="키워드입력" value="" style="ime-mode:active;"    />
                    <input type="hidden" name="product" value="전체상품">                    
                    <span class="divide"></span>
                    <button type="submit" class="btnTotalSearch" title="검색"></button>
                    <!-- <a href="/search/searchKeyword.do" onclick="document.forms['searchform'].submit(); return false;"><img src="/images/top_search.png" alt="검색"></a> -->
                </div>
                <div id="ark2" ></div>
                <div class="relKeywordBox">
                추천검색어 |
                <span class="Keyword">
                <a href="/search/searchKeyword.do?query=보라카이"><span>보라카이</span></a>
                <a href="/search/searchKeyword.do?query=제주도"><span>제주도</span></a>
                <a href="/search/searchKeyword.do?query=대만"><span>대만</span></a>
                <a href="/search/searchKeyword.do?query=사이판"><span>사이판</span></a>
                <a href="/search/searchKeyword.do?query=코타키나발루"><span>코타키나발루</span></a>
                <a href="/search/searchKeyword.do?query=오키나와"><span>오키나와</span></a>
                </span>
               </div>
            </div><!--[[ 키워드검색 tab01 End ]]-->
			</form>

        </div><!--[[ 통합검색 searchWrap End ]]-->
        
        <div class="notiWrapCon">
	        <div id="rankWrap"><!--[[ 검색 전 인기검색어 rankWrap Start ]]-->
	            <span class="tab">인기검색어</span><span class="tab" style="border-left: 1px solid #d6d6d6;width:547px">추천검색어</span>
	            <ul class="rankList tab01" style="border-left:">
	            <a href="/search/searchKeyword.do?query=오사카">
	            <li>
	            <span class="no grade">1</span>
	            <span class="name">오사카</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=장가계">
	            <li>
	            <span class="no grade">2</span>
	            <span class="name">장가계</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=북해도">
	            <li>
	            <span class="no grade">3</span>
	            <span class="name">북해도</span>
	            <span class="updown"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=다낭">
	            <li>
	            <span class="no">4</span>
	            <span class="name">다낭</span>
	            <span class="updown"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=서유럽">
	            <li>
	            <span class="no">5</span>
	            <span class="name">서유럽</span>
	            <span class="updown up"></span>
	            <span class="num">2</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=터키">
	            <li>
	            <span class="no">6</span>
	            <span class="name">터키</span>
	            <span class="updown"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=라오스">
	            <li>
	            <span class="no">7</span>
	            <span class="name">라오스</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=미서부">
	            <li>
	            <span class="no">8</span>
	            <span class="name">미서부</span>
	            <span class="updown down"></span>
	            <span class="num">3</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=홍콩">
	            <li>
	            <span class="no">9</span>
	            <span class="name">홍콩</span>
	            <span class="updown down"></span>
	            <span class="num">1</span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=스페인 포르투갈 모로코">
	            <li>
	            <span class="no">10</span>
	            <span class="name">스페인 포르투갈 모로코</span>
	            <span class="updown  new"></span>
	            <span class="num">0</span>
	            </li>
	            </a>
	            </ul>
	            <ul class="rankList tab02">
	            <a href="/search/searchKeyword.do?query=보라카이">
	            <li>
	            <span class="no grade">1</span>
	            <span class="name">보라카이</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=제주도">
	            <li>
	            <span class="no grade">2</span>
	            <span class="name">제주도</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=대만">
	            <li>
	            <span class="no grade">3</span>
	            <span class="name">대만</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=사이판">
	            <li>
	            <span class="no">4</span>
	            <span class="name">사이판</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=코타키나발루">
	            <li>
	            <span class="no">5</span>
	            <span class="name">코타키나발루</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=오키나와">
	            <li>
	            <span class="no">6</span>
	            <span class="name">오키나와</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=괌">
	            <li>
	            <span class="no">7</span>
	            <span class="name">괌</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=몽골">
	            <li>
	            <span class="no">8</span>
	            <span class="name">몽골</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=러시아">
	            <li>
	            <span class="no">9</span>
	            <span class="name">러시아</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            <a href="/search/searchKeyword.do?query=동유럽">
	            <li>
	            <span class="no">10</span>
	            <span class="name">동유럽</span>
	            <span class="updown"></span>
	            <span class="num"></span>
	            </li>
	            </a>
	            </ul>
	        </div>
	        <!--[[ 검색 전 인기검색어 rankWrap End ]]-->
        </div>
    </section>
    <!--[[ content End ]]-->