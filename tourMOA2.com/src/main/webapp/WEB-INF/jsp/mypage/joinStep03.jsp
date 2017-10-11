<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<%
			String agreeEss01 = request.getParameter("agreeEss01");
			String agreeEss02 = request.getParameter("agreeEss02");
			String plusInfo = request.getParameter("plusInfo");
			String agreeSav = request.getParameter("agreeSav");
			String agreePrv = request.getParameter("agreePrv");
			String agreeShr = request.getParameter("agreeShr");
			String agreeMkt = request.getParameter("agreeMkt");
			String custStatCd = request.getParameter("custStatCd");
			String custNmKor = request.getParameter("custNmKor");
			String custphone = request.getParameter("custphone");
%>
<link rel="stylesheet" href="/css/mypage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script type="text/javascript" src="/js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/js/jquery.validate.js"></script>
<script type="text/javascript" src="/js/additional-methods.js"></script>
<script type="text/javascript" src="/js/messages_ko.js"></script>


<!-- DAUM API 주소 찾기 -->
 <script>
 //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
 function Postcode() {
     new daum.Postcode({
         oncomplete: function(data) {
             // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

             // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
             var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
             var extraRoadAddr = ''; // 도로명 조합형 주소 변수

             // 법정동명이 있을 경우 추가한다. (법정리는 제외)
             // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
             if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                 extraRoadAddr += data.bname;
             }
             // 건물명이 있고, 공동주택일 경우 추가한다.
             if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
             }
             // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
             if(extraRoadAddr !== ''){
                 extraRoadAddr = ' (' + extraRoadAddr + ')';
             }
             // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
             if(fullRoadAddr !== ''){
                 fullRoadAddr += extraRoadAddr;
             }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
             document.getElementById('postnum1').value = data.zonecode; //5자리 새우편번호 사용
             document.getElementById('addr1_1').value = fullRoadAddr;
             document.getElementById('addr1_2').value = data.jibunAddress;

             // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
             if(data.autoRoadAddress) {
                 //예상되는 도로명 주소에 조합형 주소를 추가한다.
                 var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                 document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

             } else if(data.autoJibunAddress) {
                 var expJibunAddr = data.autoJibunAddress;
                 document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

             } else {
                 document.getElementById('guide').innerHTML = '';
             }
         }
     }).open();
 }
</script> 
<!-- DAUM API 주소찾기 END -->

<script type="text/javaScript" language="javascript" defer="defer">
$(document).ready(function(){	
	// 좌우 방향키, 백스페이스, delete , tab키에 대한 예외	
	$("#id").keydown(function(event) {		
		if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode ==39 || event.keyCode == 46 ) return;
		//$(this).val($(this).val().replace(/[\ㄱ-ㅎ ㅏ-ㅣ 가-힣] /g , '' ));
	});
	//중복체크
	$("#btnDup").click(function(){
		
		if($("input:text[id=id]").val() == '') {
			alert("아이디를 입력해주세요.");
			$("input:text[id=id]").focus();
			return false;
		}
				
	 /* 	if (id.search(/\s/g) != -1) {
			alert("아이디에 공백은 입력 불가합니다. ");
			return false;
		}

		if(id.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/) != -1){
			alert("한글은 아이디로 입력 불가합니다. \n \n 영문과 숫자로 10자이내로 신청해 주세요");
			$("#id").val("");
			$("#id").focus();
			return;
		}   */
		var param ="id="+$("input:text[id=id]").val();
		$.ajax({
			  type:'POST'
			, url:"<c:url value='/mypage/selectCustIdDuplication.do'/>"
			, data:param
			, dataType: 'JSON'
		   
			, success:function(data) {
				if(data.cnt == 0){
					alert("사용할 수 있는 아이디입니다.");
					$("#idSpan").css({color:"#2F9D27"});
					$("input:hidden[name='idChk']").val("Y")
				}else{
					alert("이미 중복 된 아이디입니다.");
					$("#idSpan").css({color:"#ff0000"});
					$("#idSpan").html("사용할 수 없는 아이디입니다.");
					$("input:hidden[name='idChk']").val("N")
				}
			}
			, error: function() {
				alert('Loading Error! ');
			}
		
	   });
	});
	
	$("#pwd").keyup(function(){
		
		var cnt = 0;
		var format1 = /[0-9]/;
	    if(format1.test($("#pwd").val())){
	    	cnt ++ ;
// 	    	alert('숫자');
	    }
	    var format2 = /[a-z]/;
	    if(format2.test($("#pwd").val())){
	    	cnt ++ ;
// 	    	alert('소문자');
	    }
	    var format3 = /[A-Z]/;
	    if(format3.test($("#pwd").val())){
	    	cnt ++ ;
// 	    	alert('대문자');
	    }
	    var format4 = /[~?!@#$%<>^&*\()\-=+_\’\:\;\.\,\"\'\[\]\{\}\/\|\`]/gi;
	    if(format4.test($("#pwd").val())){
	    	cnt ++ ;
// 	    	alert('특수문자');
	    }
	    
	    if(cnt < 3 || $(this).val().length < 8 || $(this).val().length > 16){
				$("#passSpan").css({color:"#ff0000"});
				$("#passSpan").html("8~16자리 영문 (소/대문자), 숫자, 특수문자 중 최소 2종류를 조합한 최소 8자리 이상으로 사용해 주세요.");
				$("#custPassChk").val("N");
		} else {
				$("#passSpan").css({color:"#2F9D27"});
				$("#passSpan").html("사용 가능한 비밀번호 입니다.");
	        	$("#custPassChk").val("Y");
		}
	});
		
	//비밀번호 확인
	$("#pwd2").keyup(function(){
		var pwd1 = $("#pwd").val();
		var pwd2 = $("#pwd2").val();
		if(pwd1 == pwd2){
			$("#pwdChk").css({color:"#2F9D27"});
			$("#pwdChk").text("확인되었습니다.");
		}else{
			$("#pwdChk").css({color:"#ff0000"});
			$("#pwdChk").text("비밀번호가 다릅니다.")
		}
	});
	
	// domain을 select로 선택
	$("#email3").change(function(){
		
		if ( $(this).val() !='9' && $(this).val() !='0' && $(this).val() !=''){
			$("#email2").val($(this).val());
		}else{
			$("#email2").focus();
			$("#email2").val("");
		}		
	});

	//성별 선택 여부
	$("#genderCdM").click(function(){
		var gender = this.checked;
		
		if(gender) { 
			$("#genderCdF").removeAttr("checked"); 
			$("input:hidden[id=genderCd]").val("M");
		}else{ 
			var genderF = document.getElementById("genderCdF").checked;
			if(genderF == false){
				$("#genderCd").val("");	
			}
		}		
	});

	$("#genderCdF").click(function(){
		var gender = this.checked;
		
		if(gender) { 
			$("#genderCdM").removeAttr("checked"); 
			$("input:hidden[id=genderCd]").val("F");
		}else{ 
			var genderM = document.getElementById("genderCdM").checked;
			if(genderM == false){
				$("#genderCd").val("");	
			}
		}		
	});
	
	//이메일 수신여부
	$("#emailYnY").click(function(){
		var email = this.checked;
		
		if(email) { 
			$("#emailYnN").removeAttr("checked"); 
			$("input:hidden[id='emailYn']").val("Y");
		}else{ 
			var emailN = document.getElementById("emailYnN").checked;
			if(emailN == false){
				$("#emailYn").val("");	
			}
		}		
	});

	$("#emailYnN").click(function(){
		var email = this.checked;
		
		if(email) { 
			$("#emailYnY").removeAttr("checked"); 
			$("input:hidden[id='emailYn']").val("N");
		}else{ 
			
			var emailY = document.getElementById("emailYnY").checked;
			if(emailY == false){
				$("#emailYn").val("");	
			}
		}		
	});
	
	
	//휴대폰 번호 수신여부
	$("#mobileRcpYnY").click(function(){
		var mobile = this.checked;
		
		if(mobile) { 
			$("#mobileRcpYnN").removeAttr("checked");
			$("input:hidden[id='mobileRcpYn']").val("Y");
		}else{ 
			var mobileN = document.getElementById("mobileRcpYnN").checked;
			if(mobileN == false){
				$("#mobileRcpYn").val("");	
			}
		}		
	});
	$("#mobileRcpYnN").click(function(){
		var mobile = this.checked;
		
		if(mobile) { 
			$("#mobileRcpYnY").removeAttr("checked"); 
			$("input:hidden[id='mobileRcpYn']").val("N");
		}else{ 
			
			var mobileY = document.getElementById("mobileRcpYnY").checked;
			if(mobileY == false){
				$("#mobileRcpYn").val("");	
			}
		}		
	});
	//결혼여부
	$("#marryYnY").click(function(){
		var marry = this.checked;
		
		if(marry) { 
			$("#marryYnN").removeAttr("checked"); 
			$("input:hidden[id='marryYn']").val("Y");
			$("#marryDiv").css({display:"block"});
		}else{ 
			var marryYnN = document.getElementById("marryYnN").checked;
			if(marryYnN == false){
				$("#marryYn").val("");	
			}
		}		
	});

	$("#marryYnN").click(function(){
		var marry = this.checked;
		
		if(marry) { 
			$("#marryYnY").removeAttr("checked"); 
			$("input:hidden[id='marryYn']").val("N");
			$("#marryDiv").css({display:"none"});
		}else{ 
			var marryYnY = document.getElementById("marryYnY").checked;
			if(marryYnY == false){
				$("#marryYn").val("");	
			}
		}		
	});

	
	
	
			$("#mbrFrm").validate({
			
			submitHandler: function(){
				
				var email = $("#email1").val() + "@" + $("#email2").val() ;
				
				var pattern = /^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
				
				if(!(pattern.test(email))){
					alert("이메일 형식이 잘못되었습니다.");
					return false;
				}else{
					$("input:hidden[name='email']").val(email);
				}
				
				/* if (($("input:text[name='Id']").val()).search(/\s/g) != -1) {
					alert("아이디에 공백은 입력 불가합니다. ");
					return false;
				} */
	
				if($("input:hidden[name='idChk']").val() == "N"){
					alert("아이디 중복 체크를 해주세요");
					return false;
				}else if($("input:hidden[name='idChk']").val() == "Y"){
					var id = $("input:text[id='id']").val();
					$("input:hidden[name='custId']").val(id);
				}
				
				if($("#custPassChk").val() == "N"){
					alert("8~16자리 영문 (소/대문자), 숫자, 특수문자 중 3종류를 조합한 최소 8자리 이상으로 사용해 주세요.");
					return false;
				}
				//직업
				var job = $("#jobCd option:selected").val();
				$("input:hidden[name='job']").val(job);
				
				//결혼기념일
				var marryYear = $("#marryYear option:selected").val();
				var marryMonth = $("#marryMonth option:selected").val();
				var marryDay = $("#marryDay option:selected").val();
	
				marryMonth = (marryMonth.length == 1) ? "0" + marryMonth : marryMonth;
				marryDay = (marryDay.length == 1) ? "0" + marryDay : marryDay;
				
				var marryDt = marryYear + marryMonth + marryDay;
				
				$("input:hidden[name='marryDt']").val(marryDt);
				
				//패스워드
				$("input:hidden[name='custPassEnc']").val( $("input:password[name='pwd']").val() );
				
				//휴대전화
				if("" != ""){
					var mobileTel = $("input:hidden[name='mobileTel1']").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
				}else{
					var mobileTel = $("#mobileTel1 option:selected").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
				}
				$("input:hidden[name='mobileTel']").val(mobileTel);
				
				//자택전화
				if($("#homeTel1 option:selected").val() != "" && $("input:text[name='homeTel2']").val() != "" && $("input:text[name='homeTel3']").val() != ""){
					var homeTel = $("#homeTel1 option:selected").val() + "-" + $("input:text[name='homeTel2']").val() + "-" + $("input:text[name='homeTel3']").val();
					$("input:hidden[name='homeTel']").val(homeTel);
				}
				//생년월일
				if($("#birthYear option:selected").val() != "" && $("#birthMonth option:selected").val() != "" && $("#birthDay option:selected").val() != ""){
					var birthDt = $("#birthYear option:selected").val() + "-" + $("#birthMonth option:selected").val() + "-" + $("#birthDay option:selected").val();
					$("input:hidden[name='birthDt']").val(birthDt);
				}
				
				
				var result = confirm("회원으로 가입 하시겠습니까?");
				
				if(result){
					return true;
				}else{
					return false;
				}
			}
			,rules: {	
					  
				  //아이디
				  custId : "required"
				
				  //비밀번호
				, custPw1 : "required"
				  //비밀번호 확인
				, custPw2 : {
						 required: true
					   , equalTo: "#custPw1"
				}
				
				  //성명
				, custNmKor : "required"
				
			      //성별
				, genderCd : "required"
				
				  //email1
				, email1 : "required"
				
				  //email2
				, email2 : "required"			
				
				
				  //휴대전화1
				, mobileTel1 : {
					 	 required: true
					   , number: true
					   
				}
				
				  //휴대전화2
				, mobileTel2 : {
				 	 	 required: true
					   , number: true
					   , rangelength: [3, 4]
				}
				
				  //휴대전화3
				, mobileTel3 : {
				 	 	 required: true
					   , number: true
					   , rangelength: [3, 4]
				}
				  
				  //자택전화1
				, homeTel1 : {
				 	 	 required: false
					   , number: true				  
				}
				  
				  //자택전화2
				, homeTel2 : {
				 	 	 required: false
					   , number: true
					   , rangelength: [3, 4]
				}
				  
				  //자택전화3
				, homeTel3 : {
				 	 	 required: false
					   , number: true
					   , rangelength: [3, 4]
				}
				  
				  //우편번호
				, zipCd : {
			 	 	 required: false
				   , number: true
				   , maxlength: 6
				}
				  
				  //주소
				, custAddr : {
			 	 	 required: false
				   , maxlength: 100
				}
				  
				  //상세주소
				, custAddrDetail : {
			 	 	 required: false
				   , maxlength: 100
				}  
				  
				
				  //생년월일1
				, birthYear : "required"
				
				  //생년월일2
				, birthMonth : "required"
				
				  //생년월일3
				, birthDay : "required"
				
				 //결혼여부
				, marryYn : "required"
				
				 //결혼여부
				, marryYear : {
			 	 	 required: function(element) {
					 	        return $("input:radio[name='marryYn']:checked").val() == "Y";
					 	      }			   
				} 
				  
				, marryMonth : {
			 	 	 required: function(element) {
			 	 				return $("input:radio[name='marryYn']:checked").val() == "Y";
					 	      }			   
				} 
				
				, marryDay : {
			 	 	 required: function(element) {
			 	 				return $("input:radio[name='marryYn']:checked").val() == "Y";
					 	      }			   
				}  
			}
			, messages:{
				custId : "아이디를  입력하세요"
	
					  //비밀번호
					, custPw1 : {
							 required: "비밀번호를 입력하세요"
					}
					  //비밀번호 확인
					, custPw2 : {
							 required: "비밀번호 확인을 입력하세요"
						   , equalTo: "비밀번호와 같은 값을 입력해 주세요"
					}
	
					  //성명
					, custNmKor : "이름를 입력하세요"
	
					  //성별
					, genderCd : "성별을 선택하세요"
	
					  //email1
					, email1 : "이메일을 입력하세요"
	
					  //email2
					, email2 : "이메일을 입력하세요"
	
	
	
					  //휴대전화1
					, mobileTel1 : {
							 required: "휴대전화 앞자리를 입력하세요"
						   , number: "숫자만 가능합니다"
						   
					}
	
					  //휴대전화2
					, mobileTel2 : {
							 required: "휴대전화 가운데자리를 입력하세요"
						   , number: "숫자만 가능합니다"
						   , rangelength: "3~4자만 가능합니다"
					}
	
					  //휴대전화3
					, mobileTel3 : {
							 required: "휴대전화 끝자리를 입력하세요"
						   , number: "숫자만 가능합니다"
						   , rangelength: "3~4자만 가능합니다"
					}
					  
					  //자택전화1
					, homeTel1 : {
							  number: "숫자만 가능합니다"				  
					}
					  
					  //자택전화2
					, homeTel2 : {
							 number: "숫자만 가능합니다"
						   , rangelength: "3~4자만 가능합니다"
					}
					  
					  //자택전화3
					, homeTel3 : {
							 number: "숫자만 가능합니다"
						   , rangelength: "3~4자만 가능합니다"
					}
					  
					  //우편번호
					, zipCd : {
						 number: "숫자만 가능합니다"
					   , maxlength: "6자리 이하만 가능합니다"
					}
					  
					  //주소
					, custAddr : {
						 maxlength: "100자리 이하만 가능합니다"
					}
					  
					  //상세주소
					, custAddrDetail : {
						 maxlength: "100자리 이하만 가능합니다"
					}				  
	
					  //생년월일1
					, birthYear : "년도를 선택하세요"
	
					  //생년월일2
					, birthMonth : "월을 선택하세요"
	
					  //생년월일3
					, birthDay : "일자를 선택하세요"
	
					 //결혼여부
					, marryYn : "결혼여부를 선택하세요"
	
					 //결혼여부
					, marryYear : "년도를 선택하세요"
					  
					, marryMonth : "월을 선택하세요"
	
					, marryDay : "일자를 선택하세요"			
			}
		});
			
	//취소
	$("#btncancel").click(function(){
		$(location).attr('href',"/mypage/join.do");
	});
	$("#btnok").click(function(){
		if($("#genderCd").val()==""){
			alert("성별을 선택해주세요");
			$("#genderCd").focus();
			return false;
		}
		if(!$("#postnum1").val()==""){
			var address = $("#postnum1").val();
			var addr1_1 = $("#addr1_1").val();
			var addr1_2 = $("#addr1_2").val();
			
			$("input:hidden[name='hidPostNum1']").val(address);
			$("input:hidden[name='hidAddr1_1']").val(addr1_1);
			$("input:hidden[name='hidAddr1_2']").val(addr1_2);
		}if($("#pwd").val()==""){
			alert("패스워드를 입력해주세요");
		}
		else{
			var custPassEnc = $("#pwd").val();
			$("input:hidden[name='custPassEnc']").val(custPassEnc);
		}
		$("#mbrFrm").submit();
	});
	
});
</script>
<section id="content" class="contentSub">
	<!--[[ content Start ]]-->
	<div class="tit join_tit" title="회원가입">
		<div class="join_tit_step">
			<span class="step_off">1</span>
			<span class="step_txt">약관동의</span>
			<span class="step_arr"></span>
			<span class="step_off">2</span>
			<span class="step_txt">본인인증</span>
			<span class="step_arr"></span>
			<span class="step_on">3</span>
			<span class="step_txt_on">정보입력</span>
			<span class="step_arr"></span>
			<span class="step_off">4</span>
			<span class="step_txt">입력확인</span>
			<span class="step_arr"></span>
			<span class="step_off">5</span>
			<span class="step_txt">가입완료</span>
		</div>
	</div>
	<form id="mbrFrm" method="post" action="<c:url value='/mypage/joinStep04.do'></c:url>">
	    <input type="hidden" name="birthDt"		id="birthDt" 		value="" />
	    <input type="hidden" name="marryDt" 	id="marryDt" 		value="" />
	    <input type="hidden" name="email" 		id="email" 			value="" />
	    <input type="hidden" name="custPassEnc" id="custPassEnc" 	value="" />
	    <input type="hidden" name="custPassChk" id="custPassChk" 	value="" />
	    <input type="hidden" name="mobileTel" 	id="mobileTel" 	    value="" />
	    <input type="hidden" name="homeTel" 	id="homeTel" 	    value="" />
	    <input type="hidden" name="idChk" 		id="idChk" 		    value="N" />
	    <input type="hidden" name="custCi" 		id="custCi" 	    value="" />
	    <input type="hidden" name="custDi" 		id="custDi" 	    value="" />
	    <input type="hidden" name="plusInfo" 	id="plusInfo"		value="<%=plusInfo%>" />
	    <input type="hidden" name="agreeEss01" 	id="agreeEss01" 	value="<%=agreeEss01%>" />
	    <input type="hidden" name="agreeEss02" 	id="agreeEss02" 	value="<%=agreeEss02%>" />
	    <input type="hidden" name="agreeSav" 	id="agreeSav" 	    value="<%=agreeSav%>" />
	    <input type="hidden" name="agreePrv" 	id="agreePrv" 	    value="<%=agreePrv%>" />
	    <input type="hidden" name="agreePrv" 	id="agreeShr" 	    value="<%=agreeShr%>" />
	    <input type="hidden" name="agreeMkt" 	id="agreeMkt" 	    value="<%=agreeMkt%>" />
	    <input type="hidden" name="genderCd" 	id="genderCd" 	    value="" />
	    <input type="hidden" name="job" 		id="job" 	    	value="" />
	    <input type="hidden" name="certDiviCd" 	id="certDiviCd" 	value="" />
	    <input type="hidden" name="fdCd"   		id="fdCd"   	    value="" />
	    <input type="hidden" name="custStatCd"  id="custStatCd"   	value="<%=custStatCd%>" />      
      	<input type="hidden" name="prtNm"		id="prtNm"			value=""/>
		<input type="hidden" name="prtCustCi"	id="prtCustCi"		value=""/>
		<input type="hidden" name="prtCustDi" 	id="prtCustDi"		value=""/>
		<input type="hidden" name="prtGenderCd"	id="prtGenderCd"	value=""/>
		<input type="hidden" name="prtCertDiviCd" id="prtCertDiviCd"value=""/>
		<input type="hidden" name="prtFdCd"		id="prtFdCd"		value=""/>
		<input type="hidden" name="prtCustStatCd" id="prtCustStatCd"value=""/>
		<input type="hidden" name="prtBirthDt"	id="prtBirthDt"		value=""/>
		<input type="hidden" name="prtMobileTel" id="prtMobileTel"	value=""/> 
		<input type="hidden" name="prtEmail"	id="prtEmail"		value=""/> 
		<input type="hidden" name="prtRelCd"	id="prtRelCd"		value=""/> 
		<input type="hidden" name="prtRelAdd"	id="prtRelAdd"		value=""/> 
		<input type="hidden" name="custId"	  	id="custId"			value=""/>        
		<input type="hidden" name="custNmKor"	id="custNmKor"		value="<%=custNmKor%>"/>        
		<input type="hidden" name="custphone"	id="custphone"		value="<%=custphone%>"/>        
		<input type="hidden" name="hidPwd"		id="hidPwd"		value=""/>        
		<input type="hidden" name="hidPostNum1"		id="hidPostNum1"		value=""/>        
		<input type="hidden" name="mobileRcpYn"		id="mobileRcpYn"		value="N"/><!-- SMS 수신동의/거부 -->        
		<input type="hidden" name="emailYn"			id="emailYn"			value="N"/><!-- EMAIL 수신동의/거부 -->        
		<input type="hidden" name="hidAddr1_1"		id="hidAddr1_1"			value=""/>        
		<input type="hidden" name="hidAddr1_2"		id="hidAddr1_2"			value=""/>        
<div class="join_step">	
	<!--[[ 정보입력 Start ]]-->
		<div class="join_step">
	<!--[[ 정보입력 Start ]]-->
	<span class="h1">회원정보입력</span>
	<table>
	<caption>가입정보입력</caption>
	<tbody>
		<tr>
			<th scope="row"><label for="id" style="float: left;">아이디 </label><span class="idSpan"></span><span class="chk"></span></th>
			<td colspan="3">
				<input type="text" name="id" id="id" maxlength="20">
				<button type="button" name="btnDup" id="btnDup" class="btnChk">중복 확인</button>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="pwd">비밀번호</label><span class="chk"></span></th>
			<td colspan="3"><input type="password" name="pwd" id="pwd" maxlength="20" ><div id="passSpan"></div>
			
				<span class="regDesc">· 영문(소/대문자), 숫자,특수문자 중 3종류를 조합하여 8~16자리로 사용하시기 바랍니다. <br />
				· 비밀번호 입력 시 우측 보안등급을 참조하여 안전한 비밀번호를 사용하시기 바랍니다.</span>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="pwd2">비밀번호 확인</label><span class="chk"></span></th>
			<td colspan="3"><input type="password" name="pwd2" id="pwd2" maxlength="20"><div id="pwdChk"></div>
				<span class="regDesc">· 재확인을 위해서입력하신비밀번호를 다시한번 입력해주세요.</span>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="username">성명</label><span class="chk"></span></th>
			<td><input type="hidden" id="custNmKor" name="custNmKor" value="<%=custNmKor%>"><%=custNmKor %></td>

			<th scope="row"><label for="genderCd">성별</label></th>
			<td>
				<input type="checkbox" name="genderCdM" id="genderCdM" value="M" ><span class="radio_txt"><label for="genderCdM">남성</label></span>
				<input type="checkbox" name="genderCdF" id="genderCdF" value="F" ><span class="radio_txt"><label for="genderCdF">여성</label></span>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="email1">이메일</label><span class="chk"></span></th>
			<td colspan="3">
				<input type="text" name="email1" id="email1" class="txtemail" maxlength="20">
				<span class="txt">@</span>
				<input type="text" name="email2" id="email2" class="txtemail" maxlength="20" title="이메일서버">
				<select name="email3" id="email3" class="selemail" title="이메일서버선택">
					<option  value="0">직접입력</option>
					<option value="naver.com" >네이버</option>
					<option value="hanmail.net" >한메일</option>
					<option value="nate.com" >네이트</option>
					<option value="daum.net" >다음</option>
					<option value="gmail.com" >구글</option>
					<option value="9"  selected="selected" >선택하세요</option>
				</select>
				<div class="sel_area">
					<input type="checkbox" name="emailYnY" id="emailYnY" value="Y"  ><span class="radio_txt"><label for="emailYnY">수신동의</label></span>
					<input type="checkbox" name="emailYnN" id="emailYnN" value="N" checked="checked" ><span class="radio_txt"><label for="emailYnN">수신거부</label></span>
					</div>
				<span class="regDesc">· 이메일 수신동의를 하시면 이벤트/할인쿠폰/기획전/상품안내를 받으실 수 있습니다.<br />
	                     · 수신여부와 상관없이 예약,결제, 개인정보 등에 대한 내용은 발송 됩니다.</span>
			</td>
		</tr>		
		<tr>
			<th scope="row"><label for="mobileTel1">휴대폰번호</label><span class="chk"></span></th>
			<td colspan="3">
				<c:set var="phoneNum" value="<%=custphone%>" />
				<input type="text" name="mobiletel1"  class="txtcell" value="${fn:substring(phoneNum,0,3) }" maxlength="3" readonly>
				<span class="txt">-</span><input type="text" name="mobileTel2" id="mobileTel2" value="${fn:substring(phoneNum,4,8) }"  class="txtcell" maxlength="4" title="휴대전화 중간 4자리" readonly>
				<span class="txt">-</span><input type="text" name="mobileTel3" id="mobileTel3" value="${fn:substring(phoneNum,9,13) }"  class="txtcell" maxlength="4" title="휴대전화 마지막 4자리" readonly>
				<div class="sel_area">
					<input type="checkbox" name="mobileRcpYnY" id="mobileRcpYnY" value="Y"  ><span class="radio_txt"><label for="mobileRcpYnY">수신동의</label></span>
					<input type="checkbox" name="mobileRcpYnN" id="mobileRcpYnN" value="N" checked="checked" ><span class="radio_txt"><label for="mobileRcpYnN">수신거부</label></span>
				</div>
				<span class="regDesc">· SMS 수신동의를 하시면 이벤트/상품안내를 받으실 수 있습니다.</span>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="homeTel1">자택전화</label></th>
			<td colspan="3">
				<select name="homeTel1" id="homeTel1" class="sel_w selprefix">
					<option value="">선택</option>
					<option value="02" >02  (서울)</option>
					<option value="031" >031 (경기)</option>
					<option value="032" >032 (인천)</option>
					<option value="033" >033 (강원)</option>
					<option value="041" >041 (충남)</option>
					<option value="042" >042 (대전)</option>
					<option value="043" >043 (충북)</option>
					<option value="051" >051 (부산)</option>
					<option value="052" >052 (울산)</option>
					<option value="053" >053 (대구)</option>
					<option value="054" >054 (경북)</option>
					<option value="055" >055 (경남)</option>
					<option value="061" >061 (전남)</option>
					<option value="062" >062 (광주)</option>
					<option value="063" >063 (전북)</option>
					<option value="064" >064 (제주)</option>
					<option value="070" >070 (인터넷)</option>
				</select>
				<span class="txt">-</span><input type="text" name="homeTel2" id="homeTel2" class="txtcell" maxlength="4" title="자택전화 중간 4자리">
				<span class="txt">-</span><input type="text" name="homeTel3" id="homeTel3" class="txtcell" maxlength="4" title="자택전화 마지막 4자리">
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="postnum1">자택주소</label></th>
			<td colspan="3">
			
			<input type="text" id="postnum1" placeholder="우편번호">
			<button type="button" onclick="Postcode()" class="btnChk" >우편번호 찾기</button>
			<input type="text" id="addr1_1" class="addr clear" placeholder="도로명주소">
			<input type="text" id="addr1_2" class="addr" placeholder="지번주소">
			<span id="guide" style="color:#999"></span>
	<!-- 		<input type="text" name="postnum1" id="postnum1" maxlength="20" title="우편번호">
				<button type="button" name="btnZip" id="btnZip" class="btnChk" onclick="sample4_execDaumPostcode()">검색하기</button>
				<input type="text" name="addr1_1" id="postnum1" class="addr clear"maxlength="100" title="자택주소">
				<input type="text" name="addr1_2" id="postnum1" class="addr" maxlength="100" title="상세주소">    -->
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="jobCd">직업</label></th>
			<td colspan="3">
				<select name="jobCd" id="jobCd">
					<option value="">선택하세요</option>
					<option value="주부" >주부</option>
					<option value="공무원" >공무원</option>
					<option value="군인" >군인</option>
					<option value="자영업" >자영업</option>
					<option value="학생" >학생</option>
					<option value="기타" >기타</option>
				</select>
			</td>
		</tr>	
		<tr>
			<th scope="row"><label for="birthYear">생년월일</label><span class="chk"></span></th>
			<td colspan="3">
				<select name="birthYear" id="birthYear" class="selDt">
					<option value="" selected="selected">선택</option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>

					
				<span class="txt">년</span>
				<select name="birthMonth" id="birthMonth" class="selDt" title="생월">
					<option value="" selected="selected">선택</option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
		</select>
				<span class="txt">월</span>
				<select name="birthDay" id="birthDay" class="selDt" title="생월">
					<option value="" selected="selected">선택</option>
         		
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
				<span class="txt">일</span>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="marryYn">결혼여부</label></th>
			<td>
				<input type="checkbox" name="marryYnY" id="marryYnY" value="Y"  ><span class="radio_txt"><label for="marryYnY">예</label></span>
				<input type="checkbox" name="marryYnN" id="marryYnN" value="N"  ><span class="radio_txt"><label for="marryYnN">아니오</label></span>
				<input type="hidden" name="marryYn" id="marryYn" value="N" />
			</td>
			<th scope="row"><label for="marryYear">결혼기념일</label></th>
			<td>
				<div id="marryDiv" style="display:none;">
					<select name="marryYear" id="marryYear" class="selDt" title="결혼기념일">
					<option value="" selected="selected">선택</option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>
					<span class="txt">년</span>
				<select name="marryMonth" id="marryMonth" class="selDt" title="결혼기념일 월">
					<option value="" selected="selected">선택</option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
						<span class="txt">월</span>
				<select name="marryDay" id="marryDay" class="selDt" title="결혼기념일">
					<option value="" selected="selected">선택</option>
         		
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
						<span class="txt">일</span>
					</div>
				</td>
			</tr>
		</tbody>
		</table>	
		</div>
		</div>
		<!--[[ 정보입력 End ]]-->
	    <div class="btnarea" style="margin-bottom:40px;">
		    <button type="button" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
		    <button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	    </div>  
	</form>
	</section>