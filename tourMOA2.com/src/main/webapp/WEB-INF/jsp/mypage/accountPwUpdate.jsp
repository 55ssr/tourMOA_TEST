<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

	<link rel="stylesheet" href="/css/mypage.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script type="text/javascript" src="/js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/js/jquery.validate.js"></script>
<script type="text/javascript" src="/js/additional-methods.js"></script>
<script type="text/javascript" src="/js/messages_ko.js"></script>
	<script>
		function fnMenuSelect() {
		    //여행내역
		    
		    
		    //관심내역
		    
		    
		    //참여내역
		    
		    
		    //추가결제수단
		    
		    
		    //개인정보
		     $('.lnb05').addClass('lnb05 on'); $("ul.sub_5").css("display","block");       $('.sub05_02').addClass('sub05_02 on'); $('#one').show();
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
                        <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                        <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                    </ul>
                </div>
            </div><!--[[ 메인상단 End ]]-->
       </section>
   <script type="text/javaScript" language="javascript" defer="defer">

$(document).ready(function(){
	
	
	$("#newPw1").focusout(function(){
		var cnt = 0;
		var format1 = /[0-9]/;
	    if(format1.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('숫자');
	    }
	    var format2 = /[a-z]/;
	    if(format2.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('소문자');
	    }
	    var format3 = /[A-Z]/;
	    if(format3.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('대문자');
	    }
	    var format4 = /[~?!@#$%<>^&*\()\-=+_\’\:\;\.\,\"\'\[\]\{\}\/\|\`]/gi;
	    if(format4.test($("#newPw1").val())){
	    	cnt ++ ;
// 	    	alert('특수문자');
	    }
	    
		if(cnt < 3 || $(this).val().length < 8 || $(this).val().length > 16){
			$("#passSpan").css({color:"#ff0000"});
			$("#passSpan").html("8~16자리 영문 (소/대문자), 숫자, 특수문자 중 3종류를 조합한 최소 8자리 이상으로 사용해 주세요.");
			$("#custPassChk").val("N");
		} else {
			$("#passSpan").css({color:"#2F9D27"});
			$("#passSpan").html("사용 가능한 비밀번호 입니다.");
        	$("#custPassChk").val("Y");
		}
	});
	

	
	$("#btncancel").click(function(){
		$("#frm")[0].reset();
 	});
});
</script>
<script>
	$(document).ready(function(){
		 $("#btnok").click(function(){
	
		var form = "pwd="+$("input:password[id='newPw1']").val()
			form += "&id="+$("input:hidden[id='userid']").val();
		
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/mypage/accountPwUpdateProc.do' />",
			dataType: 'JSON',
			
			success: function (data) {
				if(data.du > 0) {
					alert("변경 되었습니다.");
					location.href="<c:url value='/main.do' />";
				} else {
					alert( "변경할 수 없습니다.");
				}
			},
			error: function (error) {
				alert("error111 : " + error);
			}
		});
	 $("#frm").submit();
		});
	});


</script>
<section id="content" class="contentSub"><!--[[ content Start ]]-->

		<div class="tit myinfo_tit" title="풍선머니"></div>
		
		<form name="frm" id="frm" method="post" >
		<input type="hidden" name="custPassChk" id="custPassChk" 	value="" />
		<input type="hidden" name="custPassFg" id="custPassFg" 	value="Y" />
		<input type="hidden" name="userpwd" 	id="userpwd" 		value="${vo.pwd}" />
		<input type="hidden" name="userid" 	id="userid" 		value="${vo.id}" />
			<div class="passChangeBox">
				<div class="cont_area">
					<span class="pass_tit"><label for="txtpass">현재 비밀번호</label></span><span class="cont"><input type="password" id="pwd" name="pwd" class="input"></span>
					<span class="pass_tit"><label for="txtpassN">새로운 비밀번호</label></span><span class="cont"><input type="password" id="newPw1" name="newPw1" class="input"></span>
					<div class="txt_wrap_t">
						<span class="txt">8~16자리의 영문(대소문자), 숫자, 특수문자를 조합하여 사용하실 수 있습니다.</span><span class="txt">비밀번호 입력 시 우측 보안등급을 참조하여 안전한 비밀번호를 사용하시기 바랍니다.</span>
					</div>
					<span class="pass_tit"><label for="txtConfirm">비밀번호 확인</label></span><span class="cont"><input type="password" id="newPw2" name="newPw2" class="input"></span>
					<div class="txt_wrap_b">
						<span class="txt">재확인을 위해서 입력하신 비밀번호를 다시 한번 입력해 주세요.</span>
					</div>
				</div>
			</div>
			
	        <div class="btnarea">
	            <button type="button" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
	            <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	        </div>  
	        
		</form>
		
		<div class="pass_infoBox">
			<span class="alert"></span><span class="info_tit">알려 드립니다.</span>
			<span class="info">쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같을 경우, 도용되기 쉬우므로 주기적으로 변경하여 사용하는 것이 좋습니다.</span>
			<span class="info">아이디와 주민등록번호, 생일, 전화번호 등 개인정보와 관련된 숫자, 연속된 숫자, 반복된 문자 등 다른사람이 쉽게 알아낼 수 있는 비밀번호는 개인정보 유출의 위험이 높으므로 사용을 자제해 주시기 바랍니다.</span>
		</div>
    </section>
