<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

<link rel="stylesheet" href="/css/mypage.css" />
<script type="text/javaScript">
	
$(document).ready(function(){	
	$("#btnok").click(function(){
			if($("input:text[name='userid']").val() == ""){
				alert("아이디를 입력해주세요");
				$("#userid").focus();
				return;
			}
			if($("#email").val() == ""){
				alert("메일을 입력해주세요");
				$("#email").focus();
				return;
			}
		
		var param ="id=" + $("#userid").val()
			param += "&email=" + $("#email").val() ;
		alert(param);
		
		$.ajax({
			  type:'POST'
			, url:"<c:url value='/mypage/findPwRe.do'/>"
			, data:param
			, dataType: 'JSON'
		   
			, success:function(data) {
				if(data.cnt > 0){
					alert("비밀번호는 [ "+data.userPwd+ " ] 입니다.");
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
	
	<div class="txt01">
	        	<span class="txt">회원가입 시, 입력하신 회원정보 또는 본인인증으로 아이디와 비밀번호를 확인할 수 있습니다.
				아이디와 비밀번호는 가입 시 적어주신 이메일로 보내드립니다.</span>
			</div>
	<div class="id_border">
		<div class="id_block">
			<label for="id_check">아이디</label>
			<input type="text" name="userid" id="userid" placeholder="아이디를 입력해주세요" />
		</div>
		<div class="id_block1">
			<label for="email_check">메일주소</label>
			<input type="text" name="email" id="email" placeholder="이메일을 입력해주세요" />
		</div>
	</div>
		 <div class="btnarea" style="margin-bottom:40px;">
		    <button type="button" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
		    <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	    </div>  
	
	</form>
</section><!--[[ content End ]]-->

