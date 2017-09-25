<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	 $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");            $('.sub03_03').addClass('sub03_03 on'); $('#one').show();
	
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
	<div class="survey_tit">
		<span class="blind">고객만족도조사</span>
		<span class="sub_tit">고객 여러분들의 소리에 항상 귀 기울이는 투어모아가 될 것을 약속 드립니다.</span>
	</div>
    
    <img src="/images/customer/img_voice_main.jpg" alt="투어모아에 대한 고객 여러분의 의견을 들려주세요! 만족도조사를 참여해 주시면 추첨을 통해 신세계상품권 기프티콘을 드립니다." usemap="#voice" />
		<map name="voice">
			<area shape="rect" coords="257,1023,538,1089" href="/customer/surveyList.do" alt="고객만족도 조사 하러 가기" >
		 	<area shape="rect" coords="561,1024,842,1089" href="#none" role-w="564" role-h="643" role-url="/customer/surveyCertificationPopup.do" onclick="showLayer(this);" />
		</map>  
   
</section>