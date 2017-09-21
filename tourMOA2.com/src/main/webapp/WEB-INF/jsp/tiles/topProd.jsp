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
	
	
<div id="content">
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
    </header>
 </div> 
</div>       