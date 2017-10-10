<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script src="/js/jquery-ui.multidatespicker.js"></script>
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
        <div class="notiWrapCon"><script src="/js/ui.js"></script>
<script src="/js/jquery.number.min.js"></script>
<script src="/js/jquery-ui.js"></script>
<script>


$(document).ready(function(){
	var startCount = 0;
	
    popKeyword();
    popRecommend();
    //결과내 검색 창 열고 닫기
    $(".bntOption").click(function(event) {
    	
    	event.preventDefault();
    	
    	var bntOptionStr = $( '.bntOption' ).attr( 'class' );
    	
    	if(bntOptionStr == "bntOption"){
    		$(".bntOption").attr('class','bntOption on');
    		$("#optionMenu").hide();
    		return false;
    	}else{
    		$(".bntOption").attr('class','bntOption');
    		$("#optionMenu").show();
    		return false;
    	}

    });
    
  //출발요일 전체 선택
    $("#reweekall").click(function(event) {
    	event.preventDefault();
    	//클릭되었으면
        if($("#reweekall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name='departWDay2']").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name='departWDay2']").prop("checked",false);
        }		
	});
 
    
    //결과내 검색 리셋
    $(".btnReset").on("click",function(event) {  
    	event.preventDefault();
    	
    	$("input[type=checkbox]").prop("checked",false); // 체크박스 해제
    	$("input[type=radio]").removeAttr("checked"); // 라디오 선택 해제
    	$("#departDate").attr("value","");  //날짜 삭제      
    	$("#lowPrice").attr("value","");  //가격 삭제    
    	$("#highPrice").attr("value","");  //가격 삭제    
        $("form").each(function() {          	
           	this.reset();  
        });  
   	});  
  
    
    $("#sort").change(function(event) {
    	event.preventDefault();
    	$("#reSearch").attr('action','/search/searchKeyword.do').submit();
    	resultReSearchList();
    });
    
    $("#viewCount").change(function(event) {
    	event.preventDefault();
    	$("#reSearch").attr('action','/search/searchKeyword.do').submit();
    	resultReSearchList();
    });
    
    $("#departDate").datepicker({
        beforeShow:function( input, inst ) {
            var dp = $(inst.dpDiv);
            var offset = $(input).outerWidth(false) - dp.outerWidth(false) + 1;
            dp.css('margin-left', offset);
        }, showMonthAfterYear: true ,
        minDate: 1,
        dateFormat : 'yymmdd'        
    });
    
    var priceCheked = $('input:radio[name="price"]:checked').val();
    
    if(priceCheked =="pricetext" && typeof priceCheked != undefined ){
		$("input:text[id='lowPrice']").prop('readonly', false);
		$("input:text[id='highPrice']").prop('readonly', false); 
		$("input:text[numberOnly]").number(true);
	}else{
		$("input:text[id='lowPrice']").prop("readonly",true);
		$("input:text[id='highPrice']").prop("readonly",true); 
	}
	
    $("input:radio[name='price']").click(function(){
    	var value = $(this).val();
    	if(value =="pricetext"){
    		$("input:text[id='lowPrice']").prop('readonly', false);
    		$("input:text[id='highPrice']").prop('readonly', false); 
    		$("input:text[numberOnly]").number(true);
    	}else{
    		$("input:text[id='lowPrice']").prop("readonly",true);
    		$("input:text[id='highPrice']").prop("readonly",true); 
    	}
    });	
    
    $("button[name='btnSchedule']").click(function(){
        var dspCls = $(this).val();
        dspCls = (dspCls.indexOf('detailFit.do') > -1 ? 'B' : 'A');
        if(dspCls == 'B'){
//             $(location).attr('href',$(this).attr('role-url'));
            $(location).attr('href',$(this).val());
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
            $(this).attr('role-url', roleUrl);  //최초 URL로 복원
        }       
    });
});


function resultSearchList(query,categoryDepth1,categoryDepth2 ,categoryName2,departDate,lowPrice,highPrice,categoryYn){
    pageNum = 1;
    
    startCount =0;
    var viewCount = parseInt($('select[name="viewCount"]').val()); 
    
    lowPrice = replaceAll(lowPrice,",","");
	highPrice = replaceAll(highPrice,",","");
    
    $.ajax({
        url:"/search/incSearchNoti.do"
        ,async:true
        ,data:{
              "query"       : query
              ,"categoryDepth1" : categoryDepth1
              ,"categoryDepth2" : categoryDepth2
              ,"categoryName2" : categoryName2
              ,"departDate" : departDate
              ,"lowPrice" : lowPrice
              ,"highPrice" : highPrice
              ,"categoryYn" : categoryYn
        }           
        ,success:function(html){
            $("#notiWrap").html(html);      
            $.ajax({
                url:"/search/incSearchList.do"
                ,async:true
                ,data:{
                    "query"     : query
                      ,"categoryDepth1" : categoryDepth1
                      ,"categoryDepth2" : categoryDepth2
                      ,"categoryName2" : categoryName2
                      ,"departDate" : departDate
                      ,"lowPrice" : lowPrice
                      ,"highPrice" : highPrice
                      ,"categoryYn" : categoryYn
                      ,"startCount" : startCount
                      ,"viewCount" : viewCount
                }           
                ,success:function(html){
                    $("#product02").html(html);     
            
                }
                ,error: function(html) {
                    alert("검색결과가 없습니다.");
                }
            });
        }
        ,error: function(html) {
            alert("검색결과가 없습니다.");
        }
    });
}

//전체 replace 함수 
function replaceAll(str, searchStr, replaceStr) {

    return str.split(searchStr).join(replaceStr);
}

function resultReSearchList(event){
    
	event.preventDefault();
    
    startCount =0;
    
    query =$('input:text[name="query"]').val();
   	categoryDepth1 = $('input:hidden[name="categoryDepth1"]').val();
   	categoryDepth2 = $('input:hidden[name="categoryDepth2"]').val();
   	categoryName2 = $('input:hidden[name="categoryName2"]').val();
    
   	var wDay = "";
	$("input:hidden[name='departWDay']").each(function (index) {
		wDay += $(this).val() + "|";
	});

	departWDay = wDay;
	
    var wDay2 = "";
	$("input:checkbox[name='departWDay2']:checked").each(function (index) {
		wDay2 += $(this).val() + "|";
	});

	departWDay2 = wDay2;
	
	departMonth = $('select[name="departMonth"]').val(); 
    departDate = $('input:text[name="departDate"]').val();
    period = $('select[name="period"]').val(); 
    departCity = $('select[name="departCity"]').val(); 
    departCityNm =  $('#departCity option:selected').text();
    keyword = $('input:text[name="keyword"]').val();
    
    
    sort = $('select[name="sort"]').val();
    
    viewCount = $('select[name="viewCount"]').val();

    var price = $('input:radio[name="price"]:checked').val();
    
    if(price == "p30hi"){
        lowPrice = "";
        highPrice = "300000"
    }else if(price == "p3040"){
    	lowPrice = "300000";
    	highPrice = "400000"
    }else if(price == "p4050"){
    	lowPrice = "400000";
    	highPrice = "500000"
    }else if(price == "p50100"){
    	lowPrice = "500000";
    	highPrice = "1000000"
    }else if(price == "p100200"){
    	lowPrice = "1000000";
    	highPrice = "2000000"
    }else if(price == "p200lo"){
    	lowPrice = "2000000";
    	highPrice = ""
    }else if(price == "pricetext"){
    	lowPrice = replaceAll($('input:text[name="lowPrice"]').val(),",","");
    	highPrice = replaceAll($('input:text[name="highPrice"]').val(),",","");
    }else {
    	lowPrice = replaceAll($('input:text[name="lowPrice"]').val(),",","");
    	highPrice = replaceAll($('input:text[name="highPrice"]').val(),",","");
    }
   
   
	$.ajax({
    	url:"/search/incSearch.do"
    	,async:true
    	,data:{
    		  "query"		: query
    		  ,"categoryDepth1" : categoryDepth1
    		  ,"categoryDepth2" : categoryDepth2
    		  ,"categoryName2" : categoryName2
    		  ,"departDate" : departDate
    		  ,"departMonth" : departMonth
    		  ,"price" : price
    		  ,"lowPrice" : lowPrice
    		  ,"highPrice" : highPrice
    		  ,"departWDay" : departWDay
    		  ,"departWDay2" : departWDay2
    		  ,"period" : period
    		  ,"departCity" : departCity
    		  ,"departCityNm" : departCityNm
    		  ,"keyword" : keyword
    		  ,"sort" : sort
    		  ,"startCount" : startCount   
    		  ,"viewCount" : viewCount    
    	}        	
    	,success:function(html){
    	
    		$(".notiWrapCon").html(html);    	
    
    	}
    	,error: function(html) {
    		//
		}
    });
}

function resultReSearchListPg(){
    //var sf = document.reSearchform;
    query =$('input:text[name="query"]').val();
   	categoryDepth1 = $('input:text[name="categoryDepth1"]').val();
   	categoryDepth2 = $('input:text[name="categoryDepth2"]').val();
   	categoryName2 = $('input:text[name="categoryName2"]').val();
    
    var wDay = "";
	$("input:hidden[name='departWDay']").each(function (index) {
		wDay += $(this).val() + "|";
	});

	departWDay = wDay;
	
	var wDay2 = "";
	$("input:checkbox[name='departWDay2']:checked").each(function (index) {
		wDay2 += $(this).val() + "|";
	});

	departWDay2 = wDay2;
	departMonth = $('select[name="departMonth"]').val(); 
    departDate = $('input:text[name="departDate"]').val();
    period = $('select[name="period"]').val(); 
    departCity = $('select[name="departCity"]').val(); 
    departCityNm =  $('#departCity option:selected').text();
    keyword = $('input:text[name="keyword"]').val();
    sort = $('select[name="sort"]').val();
    startCount = parseInt($("#startCount").val());
    
    viewCount = $('select[name="viewCount"]').val();

    var price = $('input:radio[name="price"]:checked').val();
    
    if(price == "p30hi"){
        lowPrice = "";
        highPrice = "300000";
    }else if(price == "p3040"){
    	lowPrice = "300000";
    	highPrice = "400000";
    }else if(price == "p4050"){
    	lowPrice = "400000";
    	highPrice = "500000";
    }else if(price == "p50100"){
    	lowPrice = "500000";
    	highPrice = "1000000";
    }else if(price == "p100200"){
    	lowPrice = "1000000";
    	highPrice = "2000000";
    }else if(price == "p200lo"){
    	lowPrice = "2000000";
    	highPrice = "";
    }else if(price == "pricetext"){
    	lowPrice = replaceAll($('input:text[name="lowPrice"]').val(),",","");
    	highPrice = replaceAll($('input:text[name="highPrice"]').val(),",","");
    }else {
    	lowPrice = replaceAll($('input:text[name="lowPrice"]').val(),",","");
    	highPrice = replaceAll($('input:text[name="highPrice"]').val(),",","");
    }
   
        
    pageNum = 1;
    
    pageNum = 1;
	$.ajax({
    	url:"/search/incSearchListPg.do"
    	,async:true
    	,data:{
    		  "query"		: query
    		  ,"categoryDepth1" : categoryDepth1
    		  ,"categoryDepth2" : categoryDepth2
    		  ,"categoryName2" : categoryName2
    		  ,"departDate" : departDate
    		  ,"departMonth" : departMonth
    		  ,"price" : price
    		  ,"lowPrice" : lowPrice
    		  ,"highPrice" : highPrice
    		  ,"departWDay" : departWDay
    		  ,"departWDay2" : departWDay2
    		  ,"period" : period
    		  ,"departCity" : departCity
    		  ,"departCityNm" : departCityNm
    		  ,"keyword" : keyword
    		  ,"sort" : sort
    		  ,"startCount" : startCount   
    		  ,"viewCount" : viewCount    		  
    	}        	
    	,success:function(html){
    	
    		$(".listBar").append(html);    	
    
    	}
    	,error: function(html) {
			//
		}
    });
}



function paging(){
	
	var totCnt = parseInt($("#totCount").val());
	var startCount = parseInt($("#startCount").val());
	var viewCount = parseInt($('select[name="viewCount"]').val()); 
	var page = parseInt(startCount + viewCount);	
	
	var totPage = Math.ceil(totCnt/viewCount);
	
	if(totPage*viewCount >= startCount+viewCount){
		$(".morelist").show();
	}else{
		$(".morelist").hide();
	}
	

 	startCount + viewCount + 1;
	
	$("#startCount").val(parseInt(page));
	
	resultReSearchListPg();
	
}

$(document).on("keyup", "input:text[numberOnly]", function() {
	$(this).number(true);
});
</script>

<div id="notiWrap"><!--[[ 검색결과 알림 notiWrap Start ]]-->

            <span class=""><p class="keywd">
            'asfdasd'&nbsp;
            &nbsp;에 대한 총 
             0
             건의 여행상품 검색 결과가 있습니다.</p></span>
            </div><!--[[ 검색결과 알림 notiWrap End ]]-->
        <div class="titleBox">     
        	<div class="title"><span class="bul"></span>결과 내 재검색</div>
        	<a class="bntOption" href="#">검색옵션<span class="spim"></span></a>
        </div>
        <div class="optionMenu" id="optionMenu">
	        <form id="reSearch" action="/search/searchKeyword.do" method="post" onsubmit="resultReSearchList(event); return false;">
	        		<input type="hidden" name="query" value="asfdasd"><div id="reWrap"><!--[[ 결과내재검색 reWrap Start ]]-->
	        <div class="frm">
	            <ul class="frm">
	                <li>
	                    <span class="tit">출발월</span>
	                    <select name="departMonth" id="departMonth" title="출발월선택">
	                        <option value="">월별 전체 선택</option>
	                            <option value="201710">2017년 10월</option>
	                            <option value="201711">2017년 11월</option>
	                            <option value="201712">2017년 12월</option>
	                            <option value="201801">2018년 01월</option>
	                            <option value="201802">2018년 02월</option>
	                            <option value="201803">2018년 03월</option>
	                            <option value="201804">2018년 04월</option>
	                            <option value="201805">2018년 05월</option>
	                            <option value="201806">2018년 06월</option>
	                            <option value="201807">2018년 07월</option>
	                            <option value="201808">2018년 08월</option>
	                            <option value="201809">2018년 09월</option>
	                            </select>
	                    <span class="tit">출발일</span>
	                    <input type="text" name="departDate" id="departDate" title="일자개별선택" placeholder="일자개별선택" value="" class="term hasDatepicker">
	                    <span class="tit">출발요일</span>
	                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweekall" value=""><label for="reweekall">전체</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek01" value="월"><label for="reweek01">월</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek02" value="화"><label for="reweek02">화</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek03" value="수"><label for="reweek03">수</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek04" value="목"><label for="reweek04">목</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek05" value="금"><label for="reweek05">금</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek06" value="토"><label for="reweek06">토</label></span>
		                    <span class="chk"><input type="checkbox" name="departWDay2" id="reweek07" value="일"><label for="reweek07">일</label></span>
	                </li>
	                <li>
	                    <span class="tit">상품가격</span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p30hi">30만원 이하</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p3040">30~40만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p4050">40~50만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p50100">50~100만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p100200">100~200만원</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="p200lo">200만원 이상</label></span>
	                    <span class="chkPrice"><label><input type="radio" name="price" id="price" value="pricetext">직접입력</label></span>
	                    <span class="chkPrice"><input type="text" name="lowPrice" id="lowPrice" value="" numberonly="" readonly=""><span class="divide">~</span><input type="text" name="highPrice" id="highPrice" value="" numberonly="" readonly=""></span>
	                </li>
	                <li>
	                    <span class="tit">여행기간</span>
	                    <select name="period" id="period">
	                        <option value="">전체</option>
	                        <option value="4">4일 이하</option>
	                        <option value="5">5일 이하</option>
	                        <option value="6">6일 이하</option>
	                        <option value="7">7일 이하</option>
	                        <option value="8">8일 이하</option>
	                        <option value="9">9일 이하</option>
	                        <option value="10">10일 이상</option>
	                    </select>
	                    <span class="tit">출발도시</span>
	                    <select name="departCity" id="departCity">
	                        <option value="">전체</option>
	                        <option value="I">인천</option>
	                        <option value="G">김포</option>
	                        <option value="P">부산</option>                 
	                        <option value="T">대구</option>
	                        <option value="J">제주</option>
	                        <option value="Y">양양</option>
	                        <option value="C">청주</option>
	                        <option value="K">광주</option>
	                        <option value="M">무안</option>
	                        <option value="R">여수</option>
	                        <option value="Z">기타</option>
	                    </select>
	                    <span class="tit">상세키워드</span>
	                    <input type="text" name="keyword" id="keyword" value="">
	                    <button class="btnReSearch" type="submit" title="재검색" onclick="resultReSearchList(); return false;">재검색</button>
	                    <button type="reset" class="btnReset" title="초기화">초기화</button>
	                </li>
	            </ul>
				</div>
	            <div id="rank">
	                <span class="tab on">인기검색어</span><span class="tab">추천검색어</span>
	                <ul class="rankList tab01" style="display: block;"><a href="/search/searchKeyword.do?query=오사카"><li><span class="no grade">1</span><span class="name">오사카</span><span class="updown  new"></span><span class="num">0</span></li></a><a href="/search/searchKeyword.do?query=스페인 포르투갈 모로코"><li><span class="no grade">2</span><span class="name">스페인 포르투갈 모로코</span><span class="updown up"></span><span class="num">6</span></li></a><a href="/search/searchKeyword.do?query=오키나와"><li><span class="no grade">3</span><span class="name">오키나와</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=동유럽"><li><span class="no">4</span><span class="name">동유럽</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=장가계"><li><span class="no">5</span><span class="name">장가계</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=다낭"><li><span class="no">6</span><span class="name">다낭</span><span class="updown down"></span><span class="num">1</span></li></a><a href="/search/searchKeyword.do?query=미서부"><li><span class="no">7</span><span class="name">미서부</span><span class="updown down"></span><span class="num">1</span></li></a><a href="/search/searchKeyword.do?query=베트남"><li><span class="no">8</span><span class="name">베트남</span><span class="updown  new"></span><span class="num">0</span></li></a><a href="/search/searchKeyword.do?query=터키"><li><span class="no">9</span><span class="name">터키</span><span class="updown down"></span><span class="num">2</span></li></a><a href="/search/searchKeyword.do?query=호주"><li><span class="no">10</span><span class="name">호주</span><span class="updown  new"></span><span class="num">0</span></li></a></ul>
	                <ul class="rankList tab02"><a href="/search/searchKeyword.do?query=제주도"><li><span class="no grade">1</span><span class="name">제주도</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=보라카이"><li><span class="no grade">2</span><span class="name">보라카이</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=코타키나발루"><li><span class="no grade">3</span><span class="name">코타키나발루</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=러시아"><li><span class="no">4</span><span class="name">러시아</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=괌"><li><span class="no">5</span><span class="name">괌</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=대만"><li><span class="no">6</span><span class="name">대만</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=사이판"><li><span class="no">7</span><span class="name">사이판</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=큐슈"><li><span class="no">8</span><span class="name">큐슈</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=서유럽"><li><span class="no">9</span><span class="name">서유럽</span><span class="updown"></span><span class="num"></span></li></a><a href="/search/searchKeyword.do?query=몽골"><li><span class="no">10</span><span class="name">몽골</span><span class="updown"></span><span class="num"></span></li></a></ul>
	            </div>
	        </div><!--[[ 결과내재검색 reWrap End ]]-->        
	        </form>
        </div>
        <div id="product02"><!--[[ 여행상품목록 Start ]]-->
            <div class="title title02 none" title="여행상품"></div>
            <div class="searchBar">
                <span class="barL">
                    <span>전체 0개 상품</span>
                    <select name="sort" id="sort" class="mgr10" title="정렬순서선택">
                    	<option value="">정렬순서</option>
                        <option value="AMTASC">낮은가격순</option>
                        <option value="AMTDESC">높은가격순</option>
                    </select>
                    <select name="viewCount" id="viewCount" title="상품개수선택">
                        <option value="20">상품개수 20</option>
                        <option value="30">상품개수 30</option>
                        <option value="50">상품개수 50</option>
                        <option value="100">상품개수 100</option>
                    </select>
                </span>
                <span class="barR">
                    <select name="productRegion" id="productRegion" class="mgr10 none" title="국가선택">
                        <option value="국가선택">국가선택</option>
                    </select>
                    <select name="productRegion" id="productCity" class="none" title="도시선택">
                        <option value="도시선택">도시선택</option>
                    </select>
                    <button type="button" id="btnCompare" title="선택상품비교하기">선택상품비교하기</button>
                </span>
            </div>
            <div class="listNoti"><!--[[ listWrap Start ]]-->
                <div class="noti"><!--[[ listBar Start ]]-->
                <span>검색된 결과가 없습니다.</span>
                <p>검색어가 올바르게 입력되었는지 확인해 보세요.</p>
                <p>일반적이고 포괄적인 단어로 재검색 해보세요.</p>
                <p>검색어의 띄어쓰기를 조정해 보세요.</p>
                <p>지역명 도는 국가명으로 검색해 보세요.</p>
                </div>
            </div>
        </div><!--[[ 여행상품목록 End ]]-->        
        </div>
    </section>

    <!--[[ content End ]]-->