<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />
<script type="text/javaScript">

$(document).ready(function(){
	
	$(".cat > tbody > tr > th").on('click',function(){
		$(location).attr("href", $(this).children("a").attr("href"));
	});
	
	$("#btnCell").click(function(){
		
		if($("#custId").val() == ""){
			alert("아이디를 입력해주세요");
			$("#custId").focus();
			return;
		}
		
		var UserAgent = navigator.userAgent;
	    /* 모바일 접근 체크*/
	    // 모바일일 경우 (변동사항 있을경우 추가 필요)
	    if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
	   		 document.reqKMCISForm.target = '';
		}
	    // 모바일이 아닐 경우
	    else {
				var kmcis = $('#frm').ybKmcis({
		    		returnUrl : '/mypage/findPwProc.do' 
		 		});
		 		//console.log("Test : ", kmcis );
		 		kmcis.open();
	    }
	});	
	
	$("#btnIpin").click(function(){
		
		if($("#custId").val() == ""){
			alert("아이디를 입력해주세요");
			$("#custId").focus();
			return;
		}
		
		var UserAgent = navigator.userAgent;
	    /* 모바일 접근 체크*/
	    // 모바일일 경우 (변동사항 있을경우 추가 필요)
	    if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
	   		 document.reqKMCISForm.target = '';
		}
	    // 모바일이 아닐 경우
	    else {
	     	 var iPin = $('#frm').ybipin({ 
					returnUrl : '/mypage/findPwProc.do' 
			   });
			 //console.log("Test : ", iPin );
			   iPin.open();
	    }
	});	
});
</script>
<section id="content" class="contentSub"><!--[[ content Start ]]-->
    <!-- <div class="tit findId_tit" title="아이디/비밀번호찾기"></div> -->
    <table class="cat"><!--[[ tab Start ]]-->
      <caption>아이디/비밀번호찾기</caption>
        <tbody>
            <tr>
                <th scope="col"><a href="/mypage/findId.do">아이디찾기</a></th>
	            <th scope="col" class="on"><a href="/mypage/findPw.do">비밀번호찾기</a></th>
            </tr>
        </tbody>
    </table><!--[[ tab End ]]-->
	<form name="frm" id="frm" method="post" >
	<input type="hidden" name="plusInfo" value="3" />
	
	<!-- 아이디 입력 -->
	<div class="id_block">
		<h4 class="tit_find">아이디를 입력하시고, 하단에 휴대폰인증 or 아이핀인증을 통해 본인인증을 진행해주세요.</h4>
		<label for="id_check">아이디</label><input type="text" name="custId" id="custId" placeholder="아이디를 입력해주세요" />
	</div>
	<!-- //아이디 입력 -->	
    <div class="certWrap"><!--[[ 인증방법선택 Start ]]-->
        <div class="certType">
            <div class="txt01">
                <span class="sbj">휴대폰인증으로 찾기</span>
                <span class="txt">본인 명의의 휴대폰으로만 인증이 가능하며,</span>
                <span class="txt">휴대폰이 본인명의가 아닐 시에는 아이핀을 이용해주세요.</span>
                <button type="button" name="btnCell" id="btnCell">휴대폰 인증하기</button>
            </div>
        </div>
        <div class="certType no-bdr">
            <div class="txt01">
                <span class="sbj">아이핀(I-PIN)으로찾기</span>
                <span class="txt">회원 가입 시 아이핀(I-PIN)으로 가입하신 회원님은</span>
                <span class="txt">아이핀 인증을 통해 아이디 찾기를 진행해주세요.</span>
                <button type="button" name="btnIpin" id="btnIpin">아이핀(I-PIN) 인증하기</button>
            </div>
        </div>
    </div><!--[[ 인증방법선택 End ]]-->
	</form>
</section><!--[[ content End ]]-->
</div>

