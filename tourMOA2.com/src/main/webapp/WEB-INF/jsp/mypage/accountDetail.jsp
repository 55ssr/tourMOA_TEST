<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

<link rel="stylesheet" href="/css/mypage.css" />
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
	<link rel="stylesheet" href="/css/mypage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
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

<script>
$(document).ready(function(){
	 $("#btnok").click(function(){
		 
		 //email 
		 var email = $("input:text[id='email1']").val() + "@" + $("input:text[id='email2']").val();
		 $("input:hidden[id='email']").val(email); 
		
			 //휴대전화
			var phone = $("input:text[name='mobileTel1']").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
			$("input:hidden[name='hidphone']").val(phone); 
			
			//자택전화
			if($("#homeTel1 option:selected").val() != "" && $("input:text[name='homeTel2']").val() != "" && $("input:text[name='homeTel3']").val() != ""){
				var homeTel = $("#homeTel1 option:selected").val() + "-" + $("input:text[name='homeTel2']").val() + "-" + $("input:text[name='homeTel3']").val();
				$("input:hidden[name='hidtel']").val(homeTel);
			}
			
			//결혼기념일
			var marryYear = $("#marryYear option:selected").val();
			var marryMonth = $("#marryMonth option:selected").val();
			var marryDay = $("#marryDay option:selected").val();

			marryMonth = (marryMonth.length == 1) ? "0" + marryMonth : marryMonth;
			marryDay = (marryDay.length == 1) ? "0" + marryDay : marryDay;
			
			var marry = marryYear + marryMonth + marryDay;
			
			 $("input:hidden[name='marry']").val(marry); 
			
			 //생일
			
				var birthYear = $("#birthYear option:selected").val();
				var birthMonth = $("#birthMonth option:selected").val();
				var birthDay = $("#birthDay option:selected").val();
				
				var birth = birthYear+"-"+birthMonth+"-"+birthDay; 
				
				
				 $("input:hidden[name='hidbirth']").val(birth); 
		 
		 var form = "id="+$("input:hidden[id='userid']").val()
				form += "&gender=" +$("#genderCd").val()
				form += "&email=" +$("#email").val()
				form += "&phone=" +$("#hidphone").val()
				form += "&postnum1=" +$("#postnum1").val()
				form += "&addr1_1=" +$("#addr1_1").val()
				form += "&addr1_2=" +$("#addr1_2").val()
				form += "&birthday=" +$("input:hidden[name='hidbirth']").val()
				form += "&tel=" +$("input:hidden[name='hidtel']").val()
				form += "&marry=" +$("input:hidden[name='marry']").val()
				form += "&job=" +$("#jobcd option:selected").val();
		alert(form);
		
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/mypage/accountDetailUpdate.do' />",
			dataType: 'JSON',
			
			success: function (data) {
				if(data.du > 0) {
					alert("변경 되었습니다.");
				} else {
					alert( "변경할 수 없습니다.");
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

	<script type="text/javaScript" defer="defer">

$(document).ready(function(){

	// 좌우 방향키, 백스페이스, delete , tab키에 대한 예외	
	$("#id").keydown(function(event) {
		
		if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode ==39 || event.keyCode == 46 ) return;
		//$(this).val($(this).val().replace(/[\ㄱ-ㅎ ㅏ-ㅣ 가-힣] /g , '' ));
	});
	
	//아이디가 바뀌면
	$("#id").change(function(){
		$("input:hidden[name='idChk']").val("N")
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
	
 	 /* $("#modifyFrm").validate({
		
		submitHandler: function(){
			
			var email = $("input:text[id='email1']").val() + "@" + $("input:text[id='email2']").val() ;
			
			var pattern = /^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
			
			if(!(pattern.test(email))){
				alert("이메일 형식이 잘못되었습니다.");
				return false;
			}else{
				$("input:hidden[id='email']").val(email);
			}
					
			if (($("input:text[name='id']").val()).search(/\s/g) != -1) {
				alert("아이디에 공백은 입력 불가합니다. ");
				return false;
			}
			
			if($("input:hidden[name='idChk']").val() == "N"){
				//현재아뒤와 같으면 중복 체크X
				if($("input:hidden[name='oldid']").val() != $("input:text[name='id']").val()){
					alert("아이디 중복 체크를 해주세요");
					return false;
				}
			}
		  	  //직업
			var job = $("#job option:selected").val();
			$("input:hidden[name='job']").val(job);  
			
			 //email 
			 var email = $("input:text[id='email1']").val() + "@" + $("input:text[id='email2']").val();
			 $("input:hidden[id='email']").val(email); 
			
				 //휴대전화
				var phone = $("input:text[name='mobileTel1']").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
				$("input:hidden[name='phone']").val(phone); 
				
				//자택전화
				if($("#homeTel1 option:selected").val() != "" && $("input:text[name='homeTel2']").val() != "" && $("input:text[name='homeTel3']").val() != ""){
					var homeTel = $("#homeTel1 option:selected").val() + "-" + $("input:text[name='homeTel2']").val() + "-" + $("input:text[name='homeTel3']").val();
					$("input:hidden[name='hidtel']").val(homeTel);
				}
				
				//결혼기념일
				var marryYear = $("#marryYear option:selected").val();
				var marryMonth = $("#marryMonth option:selected").val();
				var marryDay = $("#marryDay option:selected").val();

				marryMonth = (marryMonth.length == 1) ? "0" + marryMonth : marryMonth;
				marryDay = (marryDay.length == 1) ? "0" + marryDay : marryDay;
				
				var marry = marryYear + marryMonth + marryDay;
				
				
				 $("input:hidden[name='marryYn']").val(marry); 
			var result = confirm("변경하시겠습니까?");
			
			if(result){
				return true;
			}else{
				return false;
			}
		
		}
	
	}); */
	
	 
	//취소
	$("#btncancel").click(function(){
		var url = "/mypage/join.do";
		url = "/mypage/main.do";
		
		$(location).attr("href", url);
	});	
});

</script>

<section id="content" class="contentSub"><!--[[ content Start ]]-->
	<div class="tit myinfo_tit" title="회원정보수정"></div>		
	<form name="modifyFrm" id="modifyFrm" method="post" >
		<input type="hidden" name="webCustNo" 	id="webCustNo" 		value="" />
		<input type="hidden" name="userid" 	id="userid" 		value="${vo.id}" />
		<input type="hidden" name="marry" 		id="marry" 		value="${vo.marry}" />
		<input type="hidden" name="hidbirth" 	id="hidbirth" value="${vo.birthday}" />
		<input type="hidden" name="marryYn" 		id="marryYn" 		value="" />
		<input type="hidden" name="email" 		id="email" 			value="" />
		<input type="hidden" name="genderCd" 	id="genderCd" 		value="${vo.gender}" />
		<input type="hidden" name="job" 	id="job" 		value="" />
		<input type="hidden" name="hidphone" 	id="hidphone" 	    value="" />
		<input type="hidden" name="hidtel" 	id="hidtel" 	    value="" />
		<input type="hidden" name="custPassEnc" id="custPassEnc" 	value="" />
		<input type="hidden" name="oldid" 	id="idChk" 			value="" />        
	<div class="join_step"><!--[[ 정보입력 Start ]]-->
		<table class="mg0">
		<caption>회원정보수정</caption>
			<tbody>
				<tr>
					<th scope="row"><label for="id">아이디</label><span class="chk"></span></th>
					<td colspan="3">
						<input type="text" name="id" id="id" value="${vo.id}" maxlength="20" readonly>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="name">성명</label><span class="chk"></span></th>
					<td>${vo.name}</td>
					<th scope="row"><label for="gender">성별</label></th>
					<td align="left">
					<input type="checkbox" name="genderCdM" id="genderCdM" value="M" <c:if test="${vo.gender =='M'}">checked</c:if>>
					     <span class="radio_txt"><label for="genderCdM">남성</label></span>
				<input type="checkbox" name="genderCdF" id="genderCdF" value="F" <c:if test="${vo.gender =='F'}">checked</c:if>>
						<span class="radio_txt"><label for="genderCdF">여성</label></span>
					
					<%-- <input type="radio" name="gender" id="gender" value="M" 
						<c:if test="${vo.gender =='M'}">checked</c:if>
					     >남
						<input type="radio" name="gender" id="gender" value="F" --%>
						
					</td>
				</tr>
				<tr>
				
					<th scope="row"><label for="email">이메일</label><span class="chk"></span></th>
					<td colspan="3">
					<c:set var="email" value="${vo.email}"/>
					 <c:set var="emails" value="${fn:split(email,'@')[2]}"/> 
					 <input type="text" name="email1" id="email1" class="txtemail"value="${fn:split(email,'@')[0]}" maxlength="20">
						<span class="txt">@</span>
						<input type="text" name="email2" id="email2" class="txtemail" value="${fn:split(email,'@')[1]}" maxlength="20"  title="이메일서버">
						<select name="email3" id="email3" class="selemail" title="이메일서버선택">
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
						<div class="sel_area">
							<input type="radio" name="emailYnY" id="emailYnY" value="Y"<%-- <c:if test="${vo.email =='Y'}">checked</c:if> --%>>
					     <span class="radio_txt"><label for="emailYnY">수신동의</label></span>
							<input type="radio" name="emailYnN" id="emailYnN" value="N"><span class="radio_txt"><label for="emailYnN">수신거부</label></span>
							<input type="hidden" name="emailYn" id="emailYn" value="N" />
						</div>
							<span class="regDesc">· 이메일 수신동의를 하시면 이벤트/할인쿠폰/기획전/상품안내를 받으실 수 있습니다.<br />· 수신여부와 상관없이 예약,결제, 개인정보 등에 대한 내용은 발송 됩니다.</span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="tel">휴대폰번호</label><span class="chk"></span></th>
					<td colspan="3">
					<c:set var="phoneNum" value="${vo.phone}"/>
					<input type="text" name="mobileTel1" id="mobileTel1" class="txtcell" maxlength="3"value="${fn:substring(phoneNum,0,3) }">
						<span class="txt">-</span><input type="text" name="mobileTel2" id="mobileTel2" class="txtcell" maxlength="4" value="${fn:substring(phoneNum,4,8) }"  title="휴대폰 중간 4자리">
						<span class="txt">-</span><input type="text" name="mobileTel3" id="mobileTel3" class="txtcell" maxlength="4" value="${fn:substring(phoneNum,9,13) }"  title="휴대폰 마지막 4자리">
						<div class="sel_area">
							<input type="radio" name="mobileRcpYnY" id="mobileRcpYnY" value="Y"  ><span class="radio_txt"><label for="mobileRcpYnY">수신동의</label></span>
							<input type="radio" name="mobileRcpYnN" id="mobileRcpYnN" value="N" checked="checked" ><span class="radio_txt"><label for="mobileRcpYnN">수신거부</label></span>
							<input type="hidden" name="mobileRcpYn" id="mobileRcpYn" value="N" />
						</div>
						<span class="regDesc">· SMS 수신동의를 하시면 이벤트/상품안내를 받으실 수 있습니다.</span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="homeTel1">자택전화</label></th>
					<td colspan="3">
					<c:set var="tel" value="${vo.tel}"/>
					<c:set var="hometel" value="${fn:split(tel,'-')[3]}"/> 
						<select name="homeTel1" id="homeTel1" class="sel_w selprefix" >
							<option value="${fn:split(tel,'-')[0]}">${fn:split(tel,'-')[0]}</option>
							<option value="02">02  (서울)</option>
							<option value="031"  >031 (경기)</option>
							<option value="032"  >032 (인천)</option>
							<option value="033"  >033 (강원)</option>
							<option value="041"  >041 (충남)</option>
							<option value="042"  >042 (대전)</option>
							<option value="043"  >043 (충북)</option>
							<option value="051"  >051 (부산)</option>
							<option value="052"  >052 (울산)</option>
							<option value="053"  >053 (대구)</option>
							<option value="054"  >054 (경북)</option>
							<option value="055"  >055 (경남)</option>
							<option value="061"  >061 (전남)</option>
							<option value="062"  >062 (광주)</option>
							<option value="063"  >063 (전북)</option>
							<option value="064"  >064 (제주)</option>
							<option value="070"  >070 (인터넷)</option>
						</select>
						<span class="txt">-</span>
							<input type="text" name="homeTel2" id="homeTel2"class="txtcell" value="${fn:split(tel,'-')[1]}" maxlength="4" title="자택전화 중간 4자리">
						<span class="txt">-</span>
							<input type="text" name="homeTel3" id="homeTel3" class="txtcell" value="${fn:split(tel,'-')[2]}" maxlength="4" title="자택전화 마지막 4자리">
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="btnZip">자택주소</label></th>
					<td colspan="3">
						<input type="text" id="postnum1" value="${vo.postnum1}" placeholder="우편번호">
			<button type="button" onclick="Postcode()" class="btnChk" >우편번호 찾기</button>
			<input type="text" id="addr1_1" value="${vo.addr1_1}" class="addr clear" placeholder="도로명주소">
			<input type="text" id="addr1_2" value="${vo.addr1_2}" class="addr" placeholder="지번주소">
			<span id="guide" style="color:#999"></span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="jobCd">직업</label></th>
					<td colspan="3">
					<%-- <c:set var="job" value="${vo.job}"/> --%>
						<select name="jobcd" id="jobcd">
							<option value="${vo.job}" selected="selected">${vo.job}</option>
							<option value="주부" >주부</option>
							<option value="공무원" >공무원</option>
							<option value="사무직" >사무직</option>
							<option value="군인" >군인</option>
							<option value="자영업" >자영업</option>
							<option value="학생" >학생</option>
							<option value="기타" >기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="birthday">생년월일</label><span class="chk"></span></th>
					<td colspan="3">
					<c:set var="birthsplit" value="${vo.birthday}"/>
					
				<select name="birthYear" id="birthYear" class="selDt">
					<option value="${fn:substring(birthsplit,0,4) }" selected="selected">${fn:substring(birthsplit,0,4) }</option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		 
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>

					
				<span class="txt">년</span>
				<select name="birthMonth" id="birthMonth" class="selDt" title="생년">
					<option value="${fn:substring(birthsplit,5,7) }" selected="selected">${fn:substring(birthsplit,5,7) }</option>
         		
          			<c:forEach begin="1" end="12" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
		</select>
				<span class="txt">월</span>
				<select name="birthDay" id="birthDay" class="selDt" title="생월">
					<option value="${fn:substring(birthsplit,8,11) }" selected="selected">${fn:substring(birthsplit,8,11) }</option>
         		
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
						<input type="checkbox" name="marryYnY" id="marryYnY" value="Y" /><span class="radio_txt"><label for="marryYnY">예</label></span>
						<input type="checkbox" name="marryYnN" id="marryYnN" value="N" /><span class="radio_txt"><label for="marryYnN">아니오</label></span>
						
						<input type="hidden" name="marryYn" id="marryYn" value="" />
					</td>
						<th scope="row"><label for="marryYear">결혼기념일</label></th>
			<td>
				<div id="marryDiv" style="display:none;">
				<c:set var="marry" value="${vo.marry}"/>
					<select name="marryYear" id="marryYear" class="selDt" title="결혼기념일">
					<option value="" selected="selected">${fn:substring(marry,0,4) }</option>
         				 <c:set var="today" value="<%=new java.util.Date()%>" />
         		
         		 <fmt:formatDate value="${today}" pattern="yyyy" var="start"/> 
          		
          		<c:forEach begin="0" end="60" var="idx" step="1">
          			 <option value="<c:out value="${start - idx}" />">
					<c:out value="${start - idx}" /></option>
         		 </c:forEach>
		</select>
					<span class="txt">년</span>
				<select name="marryMonth" id="marryMonth" class="selDt" title="결혼기념일 월">
					<option value="" selected="selected">${fn:substring(marry,5,7) }</option>
         		
          			<c:forEach begin="1" end="31" var="idx" step="1">
          			 <option value="<c:out value="${idx}" />">
					<c:out value="${idx}" />
					
					</option>
         		 </c:forEach>
				</select>
						<span class="txt">월</span>
				<select name="marryDay" id="marryDay" class="selDt" title="결혼기념일">
					<option value="" selected="selected">${fn:substring(marry,8,11) }</option>
         		
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
<!--[[ 정보입력 End ]]-->
	<div class="btnarea" style="margin-bottom:30px;">
		<button type="button" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
		<button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	</div>
</form>		
</section>
<!--[[ content End ]]-->