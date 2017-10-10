<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<link rel="stylesheet" href="/css/mypage.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javaScript" defer="defer">
function wrapWindowByMask(){
	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();  
	var maskWidth = $(window).width();  

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#mask').css({'width':maskWidth,'height':maskHeight});  
	//윈도우 같은 거 띄운다.
	$('.window').show();
}

$(document).ready(function(){
	//검은 막 띄우기
	$('.loginBtn').click(function(e){
		e.preventDefault();
		wrapWindowByMask();
	});

	//닫기 버튼을 눌렀을 때
	$('.layer_close').click(function () {  
	    //링크 기본동작은 작동하지 않도록 한다.
	    $(this).hide(); 
	    $("#mask").hide();
	    $('.window').hide();  
	});       

	//검은 막을 눌렀을 때
	$('#mask').click(function () {  
		$(this).hide();  
	    $('.window').hide();  
	});	
	
});
 
$(document).ready(function(){
	$("#loginTopMain").click(function(){
		if($("input:text[id=loginId]").val()==null){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if($("input:password[id=loginPwd]").val()==null){
			alert("패스워드를 입력해주세요.");
			return false;
		}
			
			
			var param  = "id=" + $("#loginId").val()
				param += "&pwd=" + $("#loginPwd").val();
				alert(param);
		
			$.ajax({
				  type:'POST'
				, url:"<c:url value='/loginSession.do'/>" 
				, data:param
				, dataType: 'JSON'
				,success:function(mav) {
					if(mav.msg == "success"){
						alert("환영합니다.");
					}else{
						$("#loginId").val('');
						$("#loginPwd").val('');
						alert("오류가 발생했습니다.");
						window.reload();
					}
				}
				, error: function(error) {
					alert('Loading Error! '+error);
				}
			
	  		 });
		
	$('#mask, .window').hide();
	});
});
</script>
<!-- 레이어 팝업 -->
<div id="mask"></div>
<div class="window">
	<div id="login_layer"><!--[[ 로그인 레이어 Start ]]-->
    <div class="layer_top">
        <span class="layer_tit">회원가입</span>
        <span class="layer_close"><a class="modalCloseImg" id="modalCloseImg"></a></span>
    </div>
    <div class="layer_body">
        <div class="loginBox_01">
            <div class="box_top">
                <form name="loginTopMainFrm" id="loginTopMainFrm" method="post">
                    <div class="input01">
                        <span class="sbj mgb10"><label for="username">아이디</label></span><span class="cont mgb10" >
                        <input type="text" id="loginId" name="loginId" />
                        </span>
                    	<span class="sbj"><label for="custPassEnc">비밀번호</label></span><span class="cont">
                    		<input type="password" name="loginPwd"  id="loginPwd" value="">
                    	</span>
                    </div>
                    <div class="input02"><button type="button" id="loginTopMain">로그인</button></div>
                	<span class="chk"><input type="checkbox" id="chkSave" name="chkSave"><label for="chkSave">아이디저장</label></span>
                </form>
            </div>
            <div class="box_btm">
                <div class="para">
                    <span>회원가입 시 입력하신 회원정보를 통해<br> 아이디와 비밀번호를 찾으실 수 있습니다.</span>
                    <button type="button" name="btnIdPw" id="btnIdPw">아이디/비밀번호찾기</button>
                </div>
                <div class="para">
                    <span>아직 투어모아 회원이 아니신가요?<br> 투어모아 회원이 되시면 급이 다른 혜택을<br> 누리실 수 있습니다.</span>
                    <button type="button" name="btnJoin" id="btnJoin">회원가입</button>
                </div>
            </div>
        </div>
        <div class="loginBox_02">
            <span class="head">투어모아 회원혜택</span>
            <span class="hypo"></span>
            <span class="sub_head">01. 최신 여행 정보를 쉽고 빠르게!</span>
            <span class="txt">이메일과 SMS를 통해<br>최신 여행정보와 할인소식을 알려드립니다.</span>
            <span class="sub_head">02. 365일 즐거운 투어모아</span>
            <span class="txt">다양하고 풍성한<br>이벤트와 혜택을 놓치지 마세요.</span>
            <span class="sub_head">03. 무엇이든 물어보세요!</span>
            <span class="txt">회원 전용 맞춤상담으로 여행에 대한<br>궁금증을 해결해 드립니다.</span>
        </div>
    </div>
</div>	
</div>			
 	




<div id="wrap">
    <div id="header">
        <div id="topmenu">
          <div id="tt">
           <ul>
				<li><a href="/admin.do">어드민</a></li>
				<li><a href="#" class="loginBtn">로그인</a></li>
				<li><a href="/mypage/join.do">회원가입</a></li>
           </ul>
          </div>  
        </div>  
        
        
        <div id="header_logo">
        	<div id="tt">
            <h1><a href="/main.do"><img src="/images/tp-main/tourMOA.png" alt="로고" width="160px" height="120px"></a></h1>
            <div id="searchBox">
            <select class="searchCondition">
              <option>전체 상품</option>
            </select>
            <input type="text" class="search" placeholder="search">
            <a href="#"><img alt="검색" src="/images/customer/top_search.png"></a>
        	</div>
            </div>
        </div>  
