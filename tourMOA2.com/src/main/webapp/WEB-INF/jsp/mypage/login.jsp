<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/css/mypage.css" />	  
   <!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
   <script type="text/javaScript" language="javascript" defer="defer">
	function airfn_noMemberSearchSubmitMpg(obj){
		
		var rsvno = $('#mpg_rsvno').val();
		var rname = $('#mpg_name').val();
		var mphone1 = $('#mpg_mphone1').val();
		var mphone2 = $('#mpg_mphone2').val();
		var mphone3 = $('#mpg_mphone3').val();
		var mphone = $('#mpg_mphone1').val() + '-' + $('#mpg_mphone2').val() + '-' + $('#mpg_mphone3').val();
	
		if(rsvno == '' || rsvno == undefined || rsvno == null){
			alert('예약 번호를 입력해주세요');
			$('#mpg_rsvno').focus();
			return;
		}else if(rname == '' || rname == undefined || rname == null){
			alert('예약자 이름을 입력해주세요');
			$('#mpg_name').focus();
			return;
		}else if(mphone1 == '' || mphone1 == undefined || mphone1 == null){
			alert('휴대폰번호 첫번째 자리를 입력해주세요');
			$('#mpg_mphone1').focus();
			return;
		}else if(mphone2 == '' || mphone2 == undefined || mphone2 == null){
			alert('휴대폰번호 가운데 자리를 입력해주세요');
			$('#mpg_mphone2').focus();
			return;
		}else if(mphone3 == '' || mphone3 == undefined || mphone3 == null){
			alert('휴대폰번호 마지막 자리를 입력해주세요');
			$('#mpg_mphone3').focus();
			return;
		}
	
		$('#mpg_mphone').val(mphone);
	
	  	$("#noMemberSearchForm").submit(function(event){
			$("#noMemberSearchForm").attr("action","http://air.ybtour.co.kr/air/b2c/auth/loginAction.k1");
			this.submit();
		});
	
		$("#noMemberSearchForm").submit();
	
	}
	
	$(document).ready(function(){		
		//전화번호 
		$.ajax({
			
			url : "/mypage/selectCodeList.do"			
			, dataType: 'JSON'	
			, data:{
				  "commGripId"	:	"WEB_CUST_TEL",
				  "commCdIdHi"	:	""
			}		
			, success : function(data) {
				if(data.length>0){
					$("#cellNo1").selectOptionAllDelete();
					$("#cellNo1").selectOptionAppendCode(data,"","선택");
				}else{	
					$("#cellNo1").val("");
				}
	               
			}
			, error: function() {					
			}
			
		});
		
		//로그인
		$("#btnLoginMpg").click(function(){
	
			if($('#mpg_custId').val() == ""){
				alert("아이디를 입력하세요.");
				$('#mpg_custId').val("");
				$('#mpg_custId').focus();
				return false;
			}
	
			if($('#mpg_custPassEnc').val() == ""){
				alert("비밀번호를 입력하세요.");
				$('#mpg_custPassEnc').val("");
				$('#mpg_custPassEnc').focus();
				return false
			}
					
			//아이디저장
			saveId();
			
			
		});
		
		//비회원일 때 예약상세내역쪽으로 가야함. /mypage/loginPopProc.do복사하여 새로 만들어 실예약 카운팅 0보다 크면 예약상세 아니면 alert 띄워주고 로그인창 닫고 그대로 
		$("#btnSubmitMpg").click(function(){
			if($('#mpg_nonCuNm').val() == ""){
				alert("이름을 입력하세요.");
				$('#mpg_nonCuNm').val("");
				$('#mpg_nonCuNm').focus();
				return false;
			}
	
			if($('#mpg_nonRervNo').val() == ""){
				alert("예약번호를 입력하세요.");
				$('#mpg_nonRervNo').val("");
				$('#mpg_nonRervNo').focus();
				return false;
			}		
			
			var nonRervNo = $('#mpg_nonRervNo').val();		
			
			if(nonRervNo.length != 15){
				alert("투어모아에 예약하신 내역이 없거나, 아직 실제 출발로 확정된 예약내역이 없습니다. \n이름과 예약번호를 정확하게 입력해 주세요. \n항공권 비회원 예약확인의 경우 하단의 항공권 비회원 예약 확인에서 확인해 주세요.");
				$('#mpg_nonRervNo').val("");
				$('#mpg_nonRervNo').focus();
				return false;
			} 
			// 크로스도메인 처리를 위한 Ajax Low Level 커스터마이징
			$.ajaxPrefilter('json', function(options, orig, jqXHR) {
				return 'jsonp'
			});
	
			var pageNm = (($(location).attr("pathname")).split('/'))[1];
			
			$.ajax({
				  type:"POST"	
				, url:"/"+((pageNm == 'mypage')?'mypage':'reserve')+"/nonCustRervView.do"
				, cache:false
				, data:{  
				      	"nonCuNm"   	: $('#mpg_nonCuNm').val()
				      , "nonRervNo"     : $('#mpg_nonRervNo').val()
				}
		        , success:function(json){
		        	if(json.rervCheck > 0){
		        		$("	#mpg_rervNo").val(json.nonRervNo);
		        		$("	#mpg_rervFlag").val(json.rervFlag);
		        		if(json.rervFlag == 'R') {
		        			alert("예약 확인 페이지로 이동합니다.");
		        			// 2017.01.31 수정
		    				$("#mpg_frmRes").attr("action","/mypage/reserveView.do").submit();
		    				closeLayer();
		        		}else{
		        			alert("예약 취소 페이지로 이동합니다.");
		        			$("#mpg_frmRes").attr("action","/mypage/reserveCancelView.do").submit();
		        			closeLayer();						
		        		}
		        	}else{
		        		alert("투어모아에 예약하신 내역이 없거나, 아직 실제 출발로 확정된 예약내역이 없습니다. \n이름과 예약번호를 정확하게 입력해 주세요. \n항공권 비회원 예약확인의 경우 하단의 항공권 비회원 예약 확인에서 확인해 주세요.");
		        		return false;
		        	}
		        }
		        , error:function(){
		            
		        }			
		   });		
		
		   return false;
		});
		
		//아이디/비밀번호 찾기
		$("#mpg_btnIdPw").click(function(){
			$(location).attr('href','/mypage/findId.do');
		});
		
		//회원가입
		$("#mpg_btnJoin").click(function(){
			$(location).attr('href','/mypage/join.do');
		});		
		getId();		
	});
	
	function setCookie (name, value, expires) {
		document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
	}
	
	function getCookie(Name) {
		var search = Name + "="
		if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
			offset = document.cookie.indexOf(search)
			if (offset != -1) { // 쿠키가 존재하면
				offset += search.length
				// set index of beginning of value
				end = document.cookie.indexOf(";", offset)
				// 쿠키 값의 마지막 위치 인덱스 번호 설정
				if (end == -1)
					end = document.cookie.length
				return unescape(document.cookie.substring(offset, end))
			}
		}
		return "";
	}
	
	function saveId() {
		var expdate = new Date();
		// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
		
		if($('#mpg_chkSave').prop('checked')){
			expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
		}else{
			expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
		}
	
		setCookie("saveId", $('#mpg_custId').val(), expdate);		
	}
	
	function getId() {
		
		var saveId = getCookie("saveId");
		
		if (saveId != null && saveId != "") {
			$('#mpg_custId').val(saveId);
			$('#mpg_chkSave').prop('checked', true);
			$('#mpg_custPassEnc').focus();
		}else{
			$('#mpg_custId').focus();	
		}
	}
	
	function naverLogin(){
		//location.href="/mypage/naverLogin.do";
		var encode = encodeURI('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00');
		var url = "https://www.ybtour.co.kr/mypage/naverLogin.do?pss_rtnurl="+encode;
		window.open(url, "_blank");
	}

</script>
<script type="text/javaScript" defer="defer">
$(document).ready(function(){
	$("#loginTopMain").click(function(){
		if($("input:text[id=mpg_custId]").val()==null){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if($("input:password[id=mpg_custPassEnc]").val()==null){
			alert("패스워드를 입력해주세요.");
			return false;
		}
			
			
			var param  = "id=" + $("#mpg_custId").val()
				param += "&pwd=" + $("#mpg_custPassEnc").val();
		
			$.ajax({
				  type:'POST'
				, url:"<c:url value='/loginSession.do'/>" 
				, data:param
				, dataType: 'JSON'
				,success:function(data) {
					if(data.msg == "ok"){
						alert("환영합니다.");
						location.href="<c:url value='/main.do'/>";
						
					}else if(data.msg == "fail"){
						$("#loginId").val('');
						$("#loginPwd").val('');
						alert("아이디 혹은 비밀번호가 다릅니다.");
						window.reload();
					}
				}
				, error: function(error) {
					alert('Loading Error! '+error);
				}
			
	  		 });
		
	});
});
</script>
<section id="content" class="contentSub"><!--[[ content Start ]]-->
	<div class="tit login_tit" title="회원로그인"></div>
        <div class="loginWrap">
            <div class="loginBox_01 bdb0">
				 <form name="frmLogin" id="frmLogin" method="post">
					<input type="hidden" name="forwardUrl" id="forwardUrl"  value="https://www.ybtour.co.kr/mypage/reserveList.do"/>
					<input type="hidden" name="loginFrom" id="loginFrom"  value="YBPC"/>
	                <span class="login_header">로그인</span>
	                <div class="input01">
	                    <span class="sbj mgb10"><label for="custId">아이디</label></span><span class="cont mgb10"><input type="text" id="mpg_custId" name="custId" maxlength="20"></span>
	                    <span class="sbj"><label for="custPassEnc">비밀번호</label></span><span class="cont"><input type="password" id="mpg_custPassEnc" name="custPassEnc" maxlength="20"></span>
	                </div>
	                <div class="input02">
	                <!-- <button type="submit" name="btnLogin" id="btnLoginMpg">로그인</button> -->
	                <button type="button" name="btnLogin" id="loginTopMain">로그인</button>
	                </div>
	                <span class="chk"><input type="checkbox" id="mpg_chkSave" name="chkSave"><label for="chkSave">아이디저장</label></span>
	                <div class="para">
	                    <span>회원가입 시 입력하신 회원정보를 통해<br /> 아이디와 비밀번호를 찾으실 수 있습니다.</span>
	                    <button type="button" name="btnIdPw" id="mpg_btnIdPw">아이디/비밀번호찾기</button>
	                </div>
	                <div class="para">
	                    <span>아직 투어모아 회원이 아니신가요?<br /> 투어모아 회원이 되시면 급이 다른 혜택을<br /> 누리실 수 있습니다.</span>
	                    <button type="button" name="btnJoin" class="btnwh" id="mpg_btnJoin">회원가입</button>
	                </div>
	            </form> 
        		<div class="infoWrap"><!--[[ info Start ]]-->
					<div class="txt01">
						<span class="para01">급이다른 투어모아 회원혜택</span>
						<span class="hypo"></span>
						<span class="para02">01. 이메일과 SMS를 통해 최신 여행정보와 할인소식을 알려드립니다.</span>
						<span class="para02">02. 다양하고 풍성한 이벤트와 혜택을 놓치지 마세요.</span>
						<span class="para02">03. 회원 전용 맞춤상담으로 여행에 대한 궁금증을 해결해 드립니다.</span>
					</div>
				</div>   
            </div>
			<div class="loginBox_01 floatR bdb0">
                <form name="mpg_frmRes" id="mpg_frmRes" method="post" >
               	 	<input type="hidden" name="rervNo" id="mpg_rervNo"  value=""/>
					<input type="hidden" name="nonCustYn" id="mpg_nonCustYn"  value="Y"/>
					<input type="hidden" name="rervFlag" id="mpg_rervFlag"  value=""/>
					
                    <span class="login_header"><span class="point">여행상품</span> 비회원 예약확인</span>
                    <div class="input01">
                        <span class="sbj mgb10"><label for="txtid2">이름</label></span><span class="cont mgb10"><input type="text" id="mpg_nonCuNm" name="nonCuNm"></span>
                        <span class="sbj"><label for="txtno">예약번호</label></span><span class="cont"><input type="text" id="mpg_nonRervNo" name="nonRervNo"></span>
                    </div>
                    <div class="input02"><button type="submit" name="btnSubmit" id="btnSubmitMpg">확인</button></div>
                    <div class="para_l">
                        <span>비회원 예약확인은 담당자 확인 후 실제 출발이 확정된 경우만 가능합니다.</span>
                        <span>예약번호를 모르실 경우 1544-2288로 문의해 주세요.</span>
					</div>
                </form>    
			</div>
			<div class="loginBox_01 floatR">				
                <form name="noMemberSearchForm" id="noMemberSearchForm" method="post">
				<input type="hidden" name="r_userid"  value="smart_guest" />
				<input type="hidden" name="r_sitecode"  value="SELK138AN" />
				<input type="hidden" name="r_sitemem"  value="N" />
				<input type="hidden" name="KSESID"  value="air:b2c:SELK138AN:AA024::00" />
				<input type="hidden" name="pss_rtnurl"  value="http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00" />
				<!-- <input type="hidden" name="email" value="admin@topas.net" /> -->
					<span class="login_header"><span class="point">항공권</span> 비회원 예약확인</span>
					<div class="input01">
						<span class="sbj mgb10"><label for="txtid2">이름</label></span><span class="cont mgb10"><input type="text" id="mpg_name" name="r_name"></span>
						<span class="sbj"><label for="txtno">예약번호</label></span><span class="cont mgb10"><input type="text" id="mpg_rsvno" name="rsvno"></span>
						<span class="label sbj2"><label for="r_mphone1">휴대폰번호</label></span>
						<span>
							<select name="r_mphone1" id="mpg_mphone1">
								<option>010</option>
								<option>011</option>
								<option>015</option>
								<option>016</option>
								<option>017</option>
								<option>019</option>
							</select><span class="txt">-</span>
							<span class="num"><input type="text" name="r_mphone2" id="mpg_mphone2" class="txt_s" title="휴대번호 중간 4자리"></span><span class="txt">-</span>
							<span class="num"><input type="text" name="r_mphone3" id="mpg_mphone3" class="txt_s" title="휴대번호 마지막 4자리"></span>
							<input type="hidden" id="mpg_mphone" name="r_mphone" title="" />
						</span>
					</div>
					<div class="input02 input02B"><button type="submit" name="btnSubmit" id="btnSubmitMpg" onclick="airfn_noMemberSearchSubmitMpg(this); return false;">확인</button></div>
					<div class="para para_l">
					<span>네이버 아이디로 항공권을 예약하신 경우<br />네이버 항공권 예약확인 버튼을 클릭해주세요.</span>
					<button type="button" name="btnNaver" class="naver" onclick="naverLogin();" title="네이버항공권예약확인"></button>
					</div>
				</form>    
			</div>
        </div>
</section>
<!--[[ content End ]]-->
</div>