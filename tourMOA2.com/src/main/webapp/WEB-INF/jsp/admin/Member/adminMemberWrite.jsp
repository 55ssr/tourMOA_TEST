<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
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
		alert($("input:text[id=id]").val());
		alert($("input:text[id='id']").val());
				
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
		var param ="id="+$("input:text[id='id']").val();
		$.ajax({
			  type:'POST'
			, url:"<c:url value='/mypage/selectCustIdDuplication.do'/>"
			, data:param
			, dataType: 'JSON'
		   
			, success:function(data) {
				if(data.cnt == 0){
					alert("사용할 수 있는 아이디입니다.");
					$("#idSpan").css({color:"#2F9D27"});
					$("input:hidden[name='idChk']").val("Y");
				}else{
					alert("이미 중복 된 아이디입니다.");
					$("#idSpan").css({color:"#ff0000"});
					$("#idSpan").html("사용할 수 없는 아이디입니다.");
					$("input:hidden[name='idChk']").val("N");
				}
			}
			, error: function() {
				alert('Loading Error! ');
			}
		
	   });
	});
});
</script>

<script>
$(document).ready(function(){
	 $("#btnok").click(function(){
		//생일
			
			var birthYear = $("#birthYear option:selected").val();
			var birthMonth = $("#birthMonth option:selected").val();
			var birthDay = $("#birthDay option:selected").val();
			
			var birth = birthYear+"-"+birthMonth+"-"+birthDay; 
			
			
			 $("input:hidden[name='hidbirth']").val(birth); 
			 
		//결혼기념일
			var marryYear = $("#marryYear option:selected").val();
			var marryMonth = $("#marryMonth option:selected").val();
			var marryDay = $("#marryDay option:selected").val();

			marryMonth = (marryMonth.length == 1) ? "0" + marryMonth : marryMonth;
			marryDay = (marryDay.length == 1) ? "0" + marryDay : marryDay;
			
			var marry = marryYear + marryMonth + marryDay;
			
			 $("input:hidden[name='marry']").val(marry); 
			 
		 //email 
		 var email = $("input:text[id='email1']").val() + "@" + $("input:text[id='email2']").val();
		 $("input:hidden[id='email']").val(email); 
		
			 //휴대전화
			var phone = $("input:text[name='mobileTel1']").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
			$("input:hidden[name='hidphone']").val(phone); 
			
		 
		 var form = "id="+$("input:hidden[id='custId']").val()
				form += "&pwd=" +$("input:password[id='userpwd']").val()
				form += "&name=" +$("#name").val()
				form += "&gender=" +$("#genderCd").val()
				form += "&email=" +$("#email").val()
				form += "&phone=" +$("#hidphone").val()
				form += "&postnum1=" +$("#postnum1").val()
				form += "&addr11=" +$("#addr1_1").val()
				form += "&addr12=" +$("#addr1_2").val()
				form += "&birthday=" +$("input:hidden[name='hidbirth']").val()
				form += "&marry=" +$("input:hidden[name='marryYn']").val()
				form += "&mdate=" +$("input:hidden[name='marry']").val()
				form += "&mobileRcpYn=" +$("input:hidden[name='mobileRcpYn']").val()
				form += "&emailYn=" +$("input:hidden[name='emailYn']").val()
				form += "&job=" +$("#jobcd option:selected").val();
		alert(form);
		
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/insertadminSave.do' />",
			dataType: 'JSON',
			
			success: function (data) {
				if(data.result =="ok") {
					alert("저장 되었습니다.");
					location.href="/adminMemberList.do";
				} else {
					alert( "저장할 수 없습니다.");
				}
			},
			error: function (error) {
				alert("error111 : " + error);
			}
		});
	 $("#modifyFrm").submit();
	});
});

</script>


<script>
	// domain을 select로 선택
$(document).ready(function(){
	$("#email3").change(function(){
		
		if ( $(this).val() !='9' && $(this).val() !='0' && $(this).val() !=''){
			$("#email2").val($(this).val());
		}else{
			$("#email2").focus();
			$("#email2").val("");
		}
	});
	//성별
	$("#genderCdM").click(function(){
		var gender = this.checked;
		
		if(gender) { 
			$("#genderCdF").removeAttr("checked"); 
			$("input:hidden[id='genderCd']").val("M");
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
			$("input:hidden[id='genderCd']").val("F");
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
			$("#emailYn").val("Y");
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
			$("#emailYn").val("N");
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
			$("#mobileRcpYn").val("Y");
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
			$("#mobileRcpYn").val("N");
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
			$("#marryDiv").css("display","block"); 
			$("#marryYnN").removeAttr("checked"); 
			$("#marryYn").val("Y");
		}else{ 
			$("#marryDiv").css("display","none");
			var marryN = document.getElementById("marryYnN").checked;
			if(marryN == false){
				$("#marryYn").val("");	
			}
		}		
	});

	$("#marryYnN").click(function(){
		var marry = this.checked;
		
		if(marry) { 
			$("#marryDiv").css("display","none"); 
			$("#marryYnY").removeAttr("checked"); 
			$("#marryYn").val("N");
		}else{ 
			
			var marryY = document.getElementById("marryYnY").checked;
			if(marryY == false){
				$("#marryYn").val("");	
			}else if(marryY == true){
				$("#marryDiv").css("display","block");
			}
		}		
		
	});	
});
		$("#modifyFrm").validate({
		
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
				var userid = $("input:text[id='id']").val();
				$("input:hidden[name='custId']").val(userid);
			}
			
			if($("#custPassChk").val() == "N"){
				alert("8~16자리 영문 (소/대문자), 숫자, 특수문자 중 3종류를 조합한 최소 8자리 이상으로 사용해 주세요.");
				return false;
			}
			//직업
			var job = $("#jobCd option:selected").val();
			$("input:hidden[name='job']").val(job);
			
			
			//패스워드
			$("input:hidden[name='custPassEnc']").val( $("input:password[name='pwd']").val() );
			
			//휴대전화
			if("" != ""){
				var mobileTel = $("input:hidden[name='mobileTel1']").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
			}else{
				var mobileTel = $("#mobileTel1 option:selected").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
			}
			$("input:hidden[name='mobileTel']").val(mobileTel);
			
			
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
		
	</script>
	 
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
             //document.getElementById('addr1_2').value = data.jibunAddress;

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
	
	<h1>회원 등록</h1>
		<form name="modifyFrm" id="modifyFrm" method="post" >
		<input type="hidden" name="webCustNo" 	id="webCustNo" 		value="" />
		<input type="hidden" name="custId" 	id="custId" 		value="" />
		<input type="hidden" name="name" 	id="name" 		value="" />
		<input type="hidden" name="marry" 		id="marry" 		value="" />
		<input type="hidden" name="hidbirth" 	id="hidbirth" value="" />
		<input type="hidden" name="marryYn" 		id="marryYn" 		value="" />
		<input type="hidden" name="email" 		id="email" 			value="" />
		<input type="hidden" name="genderCd" 	id="genderCd" 		value="" />
		<input type="hidden" name="job" 	id="job" 		value="" />
		<input type="hidden" name="hidphone" 	id="hidphone" 	    value="" />
		<input type="hidden" name="hidtel" 	id="hidtel" 	    value="" />
		<input type="hidden" name="custPassEnc" id="custPassEnc" 	value="" />
		<input type="hidden" name="idChk" 	id="idChk" 			value="Y" />        
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminMemberList.do'">목록</button>
		</div>
	</div>
	
		<div class="form-group row">
			<label for="inputUserId" class="col-sm-2 col-form-label">아이디</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="id" id="id" placeholder="아이디">
				<small id="passwordHelpInline" class="text-muted">
					6자이상 14자 이하
				</small>
			</div>
			<div class="col-sm-2">
				<button type="button" name="btnDup" id="btnDup" class="btn btn-primary">아이디 중복확인</button>
			</div>
		
		</div>
	
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="userpwd" name="pwd" placeholder="비밀번호">
				<small id="passwordHelpInline" class="text-muted">
					8자이상 20자 이하
				</small>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">이름</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="name" name="name" placeholder="이름">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">성별</label>
			<div class="col-sm-2">

				<div class="form-check form-check-inline">
						<!-- <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="M"> 남
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="F"> 여 -->
					<input type="checkbox" name="genderCdM" id="genderCdM" value="M" <c:if test="${vo.gender =='M'}">checked</c:if>>
					     <span class="radio_txt"><label for="genderCdM">남성</label></span>
				<input type="checkbox" name="genderCdF" id="genderCdF" value="F" <c:if test="${vo.gender =='F'}">checked</c:if>>
						<span class="radio_txt"><label for="genderCdF">여성</label></span>
					
				</div>

			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">직업</label>
			<div class="col-sm-2">
			<select class="form-control" name="jobcd" id="jobcd">
							<option value="" selected="selected"></option>
							<option value="주부" >주부</option>
							<option value="공무원" >공무원</option>
							<option value="사무직" >사무직</option>
							<option value="군인" >군인</option>
							<option value="자영업" >자영업</option>
							<option value="학생" >학생</option>
							<option value="기타" >기타</option>
			</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="email" class="col-sm-2 col-form-label">이메일</label>
			<div class="col-sm-6">
				<div class="form-row align-items-center">
					<div class="col-auto">
						<label class="sr-only" for="email">Name</label>
						<c:set var="email" />
					 <c:set var="emails"/> 
						<input type="text" class="form-control mb-2 mb-sm-0" name="email1" id="email1" placeholder="email"></div>
					<div class="col-auto">
						<div class="input-group mb-2 mb-sm-0">
							<div class="input-group-addon">@</div>
							<input type="text" class="form-control" name="email2" id="email2" placeholder="*.com">
						</div>
					</div>
					<div class="col-auto">
						<div class="form-check mb-2 mb-sm-0">
						<select class="form-control" name="email3" id="email3" class="selemail" title="이메일서버선택">
							<option  value="0">직접입력</option>
							<option value="naver.com">네이버</option>
							<option value="hanmail.net" >한메일</option>
							<option value="nate.com" >네이트</option>
							<option value="daum.net" >다음</option>
							<option value="gmail.com" >구글</option>
							<option value="hotmail.com" >핫메일</option>
							<option value="yahoo.com" >야후</option>
							<option value="9">선택하세요</option>
							
						</select>	
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-2">

				<div class="sel_area">
					<input type="radio" name="emailYnY" id="emailYnY" value="Y">
					     <span class="radio_txt"><label for="emailYnY">수신동의</label></span>
					<input type="radio" name="emailYnN" id="emailYnN" value="N">
						<span class="radio_txt"><label for="emailYnN">수신거부</label></span>
					<input type="hidden" name="emailYn" id="emailYn" value="" />
				</div>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputPhone" class="col-sm-2 col-form-label">휴대폰</label>
			<div class="col-sm-6">
				<div class="form-row align-items-center">
					<c:set var="phoneNum"/>
					<div class="col-auto">
					<input type="text" name="mobileTel1" id="mobileTel1"  class="form-control" maxlength="3">
					</div>
						<div class="col-auto">-</div>
					<div class="col-auto">
						<input type="text" name="mobileTel2" id="mobileTel2"  class="form-control" maxlength="4" title="휴대폰 중간 4자리">
					</div>
						<div class="col-auto">-</div>
					<div class="col-auto">
						<input type="text" name="mobileTel3" id="mobileTel3"  class="form-control" maxlength="4" title="휴대폰 마지막 4자리">
					</div>
						<div class="sel_area">
							<input type="radio" name="mobileRcpYnY" id="mobileRcpYnY" value="Y">
								<span class="radio_txt"><label for="mobileRcpYnY">수신동의</label></span>
							<input type="radio" name="mobileRcpYnN" id="mobileRcpYnN" value="N">
								<span class="radio_txt"><label for="mobileRcpYnN">수신거부</label></span>
						<input type="hidden" name="mobileRcpYn" id="mobileRcpYn" value="" />
						</div>
					</div>
				</div>
			</div>	
		
		
		<div class="form-group row">
			<label for="inputPostnum" class="col-sm-2 col-form-label">주소</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" id="postnum1" placeholder="우편번호">
			</div>
			<div class="col-sm-2">
				<button type="button" onclick="Postcode()"  class="btn btn-primary">우편번호 찾기</button>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputAddr" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-3">
				<input type="text" id="addr1_1" class="form-control" placeholder="도로명주소">
			</div>
			<div class="col-sm-3">
				<input type="text" id="addr1_2" class="form-control" placeholder="지번주소">
			</div>
			<span id="guide" style="color:#999"></span>
	</div>
		<div class="form-group row">
			<label for="inputBirth" class="col-sm-2 col-form-label">생년월일</label>
			<div class='col-sm-2'>
					<select name="birthYear" id="birthYear" class="selDt" title="생년">
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
				<select name="birthDay" id="birthDay" class="selDt" title="생일">
					<option value="" selected="selected">선택</option>
         		
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
						<span class="txt">일</span>
					</div>
			</div>
<!-- 		<div class="form-group row">
			<label for="inputBirth" class="col-sm-2 col-form-label">생일</label>
			<div class='col-sm-2'>
				<div class='input-group date' id='datetimepicker2'>
					<input type='text' class="form-control" />
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
				    </span>
				</div>
			</div>
			<script type="text/javascript">
				$(function () {
					$('#datetimepicker2').datetimepicker({
						changeMonth: true,
					    changeYear: true,
						locale: 'ko'
					});
				});
			</script>
		</div> -->
		
		<div class="form-group row">
			<label for="inputMarried" class="col-sm-2 col-form-label">결혼여부</label>
			<div class="col-sm-3">

				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="marryYnN" id="marryYnN" value="N" > 미혼
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="marryYnY" id="marryYnY" value="Y"> 기혼
					</label>
				</div>
			<input type="hidden" name="marryYn" id="marryYn" value="" />
			</div>
			<div class='col-sm-1'>결혼기념일</div>
			<div class='col-sm-2'>
			<div id="marryDiv" style="display:none;">
				<c:set var="mdate" value="${vo.marry}"/>
					<select name="marryYear" id="marryYear" class="selDt" title="결혼기념일">
					<option value="" selected="selected"></option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>
					<span class="txt">년</span>
				<select name="marryMonth" id="marryMonth" class="selDt" title="결혼기념일 월">
					<option value="" selected="selected"></option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
						<span class="txt">월</span>
				<select name="marryDay" id="marryDay" class="selDt" title="결혼기념일">
					<option value="" selected="selected"></option>
         		
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
         		 
				</select>
						<span class="txt">일</span>
					</div>
				</div>
			</div>
		<hr class="w-100" />
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" id="btnok" class="btn btn-primary">Modify</button>
				<button type="button" class="btn btn-danger">Delete</button>
			</div>
		</div>
		
	</form>
	
    </main>