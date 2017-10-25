<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

<link rel="stylesheet" href="/css/mypage.css" />

<!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
<script type="text/javaScript">
/* function fn_btn(a) {
	var f = document.frm;
	f.hiddenID.value = a;
	alert(f.hiddenID.value);
	f.submit();
} */
  $(document).ready(function(){	
	$("#btnok").click(function(){
		if($("input:text[name='name']").val() == ""){
			alert("이름을 입력해주세요");
			$("#name").focus();
			return;
		}
		if($("#email").val() == ""){
			alert("메일을 입력해주세요");
			$("#email").focus();
			return;
		}
	
	var 
		param = "name=" + $("#name").val()
		param += "&email=" + $("#email").val() ;
	
	$.ajax({
		  type:'POST'
		, url:"<c:url value='/mypage/findIdRe.do'/>"
		, data:param
		, dataType: 'JSON'
	   
		, success:function(data) {
			if(data.cnt > 0){
				alert("아이디는 [ "+data.userID+ " ] 입니다.");
			}else{
				alert("없는아이디입니다.");
			}
		}
		, error: function() {
			//alert('Loading Error! ');
		}
	
		});
	});
}); 

</script>
<section id="content" class="contentSub">
<!--[[ content Start ]]-->
	<!-- <div class="tit findId_tit" title="아이디/비밀번호찾기"></div> -->	
	<table class="cat"><!--[[ tab Start ]]-->
	  <caption>아이디/비밀번호찾기</caption>
	    <tbody>
	        <tr>
	            <th scope="col" class="on"><a href="/mypage/findId.do">아이디찾기</a></th>
	            <th scope="col"><a href="/mypage/findPw.do">비밀번호찾기</a></th>
	        </tr>
	        
	    </tbody>
	</table><!--[[ tab End ]]-->
	<!-- <form name="frm" id="frm" method="post" action="/icert/kmcisStep02.do"> -->
	<form name="frm" id="frm" method="post" action="/mypage/findIdRe.do" >
	<input type="hidden" name="plusInfo" value="2" />

	        <div class="txt01">
	        	<span class="txt">회원가입 시, 입력하신 회원정보 또는 본인인증으로 아이디와 비밀번호를 확인할 수 있습니다.
				아이디와 비밀번호는 가입 시 적어주신 이메일로 보내드립니다.</span>
			</div>
	<div class="id_border">
		<div class="id_block">
			<label for="name_check">이름</label>
			<input type="text" name="name" id="name" placeholder="이름을 입력해주세요" />
		</div>
		<div class="id_block1">
			<label for="email_check">메일주소</label>
			<input type="text" name="email" id="email" placeholder="이메일을 입력해주세요" />
		</div>
	</div>
		 <div class="btnarea" style="margin-bottom:40px;">
			 <button type="button" id="btnok" class="btnGray" title="확인">확인</button>
		    <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	    </div>  
	
	<!-- <div class="certWrap">[[ 인증방법선택 Start ]]
	    <div class="certType">
	        <div class="txt01">
	            <span class="sbj">휴대폰인증으로 찾기</span>
	            <span class="txt">본인 명의의 휴대폰으로만 인증이 가능하며,</span>
	            <span class="txt">회원가입 시, 입력하신 회원정보 또는 본인인증으로 아이디와 비밀번호를 확인할 수 있습니다.
아이디와 비밀번호는 가입 시 적어주신 이메일로 보내드립니다.</span>
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
	</div>[[ 인증방법선택 End ]] -->
	</form>
</section>
<!--[[ content End ]]-->

