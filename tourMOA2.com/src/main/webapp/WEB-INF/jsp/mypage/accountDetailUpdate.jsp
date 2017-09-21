<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="-1" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="robots" content="noindex,nofollow" />
<meta name="subject" content="" />
<meta name="description" content="해외패키지, 자유여행, 허니문, 국내여행, 항공권 등 실시간예약">
<meta name="keywords" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />

<title>투어모아 [거품없는 직판여행 NO.1]</title>
<link rel="shortcut icon" href="/images/yb.ico" />	
<script src="/js/jquery-1.11.2.min.js"></script>	
<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
<script type="text/javascript">
	$(window).on('resize', function() {
		setMobileViewport();
	})
	.on('orientationchange', function(){
		setMobileViewport();
	});

	//PC링크 클릭에 대한 파라미터
   	var strPC = getParameterByName("pc");
	if(isMobile() && strPC == "Y") {
		setMobileViewport();
	}
</script>
<script type="text/javascript">
	var filter = "win16|win32|win64|mac|macintel";
	
	if( navigator.platform ) {
		if( filter.indexOf(navigator.platform.toLowerCase())<0 ) {
			goMobileVersion();
	    }
	}
</script>
<link rel="stylesheet" href="/css/jquery-ui.css" />
<link rel="stylesheet" href="/css/sliderkit/sliderkit.css" />
<link rel="stylesheet" href="/css/mypage.css" /> 
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.cookie.js" type="text/javascript"></script>	
<script src="/js/ui.js" type="text/javascript"></script>
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.validate.js"></script>
<script src="/js/additional-methods.js"></script>
<script src="/js/localization/messages_ko.js"></script> 
<script src="/js/common.js"></script> 
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
<script src="/js/sessionCheck.js"></script><!-- 새벽 배포이후 빼기로 -->
<script src="/js/naverLogin_implicit-1.0.2.js"></script>
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
<!-- 메인베너영역 -->
<script type="text/javascript">
	$(document).ready(function(){
		popRecommendStr(); // 추천검색어 호출
		
		$(".top_banner_close").on('click', function(){
			mainTodayChk();
		});
		
		// 쿠키설정에 따른 웹상단배너 노출여부 결정
		var cookiedata = document.cookie;
	    if( cookiedata.indexOf("ybtourMainPopup=done") < 0 ) { 
	    	$(".top_main_banner").show();
	    } else {
	    	$(".top_main_banner").hide();
	    }
	
	});
	
	function setMainCookie(name, value, expiredays){
		var todayDate = new Date(); 
		todayDate.setDate(todayDate.getDate() + expiredays); 
		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	}
	
	function mainTodayChk(){
		setMainCookie('ybtourMainPopup', 'done', 1); 
		$(".top_main_banner").hide();
	}
</script>
<script>
	function fnMenuSelect() {
	    //여행내역
	    
	    //관심내역    
	    
	    //참여내역	    
	    
	    //추가결제수단	    
	    
	    //개인정보	    
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
<script>
	function fnMenuSelect() {
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
<div id="content">
<!--[[ wrap Start ]]-->
<div id="wrap">
	<!--[[ header Start ]]-->
	<header>		
		<!--[[ LNB Start ]]-->
		<nav id="lnb_mp">		
			<ul id="one">
				<li class="tit"><span><a href="/mypage/main.do"/></span></li>
				<li class="lnb01"><a href="#wrap" >여행내역</a>
					<ul class="sub sub_1">
						<li class="sub01_01"><a href="/mypage/reserveList.do" >여행상품예약</a></li>
						<li class="sub01_02"><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_blank'); return false;" >해외항공권 예약내역 </a></li>
						<li class="sub01_03"><a href="#" onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_blank'); return false;" >국내항공권 예약내역</a></li>	
					</ul>
				</li>
				<li class="lnb02"><a href="#wrap" >관심내역</a>
					<ul class="sub sub_2">
						<li class="sub02_01"><a href="/mypage/wishList.do" >관심상품</a></li>
						<li class="sub02_02"><a href="/mypage/today.do" >오늘 본 상품</a></li>
					</ul>
				</li>
				<li class="lnb03"><a href="#wrap" >참여내역</a>
					<ul class="sub sub_3">
						<li class="sub03_01"><a href="inquiryList.do" >상담문의</a></li>
						<li class="sub03_02"><a href="/mypage/myPostList.do" >커뮤니티</a></li>
						<li class="sub03_03 none"><a href="/mypage/myEventList.do" >이벤트참여</a></li>
					</ul>
				</li>
				<li class="lnb04"><a href="#wrap" >추가결제수단</a>
					<ul class="sub sub_4">
						<li class="sub04_01"><a href="/mypage/giftcardBuy.do" >여행상품권</a></li>
					</ul>
				</li>
				<li class="lnb05"><a href="#wrap" >개인정보</a>
					<ul class="sub sub_5">
						<li class="sub05_01"><a href="/mypage/accountPwReaffirm.do" >개인정보관리</a></li>
						<li class="sub05_02"><a href="/mypage/accountPwUpdate.do" >비밀번호변경</a></li>
						<li class="sub05_03"><a href="/mypage/accountWithdrawal.do" >회원탈퇴</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<!--[[ LNB End ]]-->
	</header>
	<!--[[ header End ]]-->
   
	<!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
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
	// 좌우 방향키, 백스페이스, delete , tab키에 대한 예외	
	$("#custId").keydown(function(event) {
		
		if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode ==39 || event.keyCode == 46 ) return;
		//$(this).val($(this).val().replace(/[\ㄱ-ㅎ ㅏ-ㅣ 가-힣] /g , '' ));
	});
	
	//아이디가 바뀌면
	$("#custId").change(function(){
		$("input:hidden[name='idChk']").val("N")
	});
	
	//중복체크
	$("#btnDup").click(function(){

		var custId = $("#custId").val();
		
		if (custId == ""){
			alert("아이디를 입력하세요");
			$("#custId").focus();
			return;
		}
		
		if (custId.search(/\s/g) != -1) {
			alert("아이디에 공백은 입력 불가합니다. ");
			return;
		}

		if(custId.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/) != -1){
			alert("한글은 아이디로 입력 불가합니다. \n \n 영문과 숫자로 10자이내로 신청해 주세요");
			$("#custId").val("");
			$("#custId").focus();
			return;
		}

		$.ajax({
			  type:"POST"	
			, url:"/mypage/selectCustIdDuplication.do"
			, data:{
			      "custId"   : custId
			}
			, dataType: 'JSON'
			, async: false
		   
			, success:function(jsonResult) {
				if(jsonResult == 0) msg = "사용할 수 있는 아이디입니다";
				else				msg = "<font style='color:#ff0000;'>사용할 수 없는 아이디입니다.</font>";
				
				$("#idSpan").html(msg);
				$("input:hidden[name='idChk']").val("Y")
				
			}
			, error: function() {
				//alert('Loading Error! ');
			}
		
	   });
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
					
			if (($("input:text[name='custId']").val()).search(/\s/g) != -1) {
				alert("아이디에 공백은 입력 불가합니다. ");
				return false;
			}
			
			if($("input:hidden[name='idChk']").val() == "N"){
				//현재아뒤와 같으면 중복 체크X
				if($("input:hidden[name='oldCustId']").val() != $("input:text[name='custId']").val()){
					alert("아이디 중복 체크를 해주세요");
					return false;
				}
			}
			
			//결혼기념일
			var marryYear = $("#marryYear option:selected").val();
			var marryMonth = $("#marryMonth option:selected").val();
			var marryDay = $("#marryDay option:selected").val();

			marryMonth = (marryMonth.length == 1) ? "0" + marryMonth : marryMonth;
			marryDay = (marryDay.length == 1) ? "0" + marryDay : marryDay;
			
			var marryDt = marryYear + marryMonth + marryDay;
			
			
			$("input:hidden[name='marryDt']").val(marryDt);
					
			//휴대전화
			var mobileTel = $("#mobileTel1 option:selected").val() + "-" + $("input:text[name='mobileTel2']").val() + "-" + $("input:text[name='mobileTel3']").val();
			$("input:hidden[name='mobileTel']").val(mobileTel);
			
			//자택전화
			if($("#homeTel1 option:selected").val() != "" && $("input:text[name='homeTel2']").val() != "" && $("input:text[name='homeTel3']").val() != ""){
				var homeTel = $("#homeTel1 option:selected").val() + "-" + $("input:text[name='homeTel2']").val() + "-" + $("input:text[name='homeTel3']").val();
				$("input:hidden[name='homeTel']").val(homeTel);
			}
			var result = confirm("변경하시겠습니까?");
			
			if(result){
				return true;
			}else{
				return false;
			}
		},
		rules: {			
				  
			  //아이디
			  custId : "required"
			
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
			   , maxlength: 50
			}
			  
			  //상세주소
			, custAddrDetail : {
		 	 	 required: false
			   , maxlength: 50
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
					 maxlength: "50자리 이하만 가능합니다"
				}
				  
				  //상세주소
				, custAddrDetail : {
					 maxlength: "50자리 이하만 가능합니다"
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
		var url = "/mypage/join.do";
		url = "/mypage/main.do";
		
		$(location).attr("href", url);
	});	
});
</script>
<section id="content" class="contentSub"><!--[[ content Start ]]-->
	<div class="tit myinfo_tit" title="회원정보수정"></div>		
	<form name="mbrFrm" id="mbrFrm" method="post" action="/mypage/accountDetailUpdateProc.do">
		<input type="hidden" name="webCustNo" i	d="webCustNo" 		value="12016519941" />
		<input type="hidden" name="birthDt" 	id="birthDt" 		value="" />
		<input type="hidden" name="marryDt" 	id="marryDt" 		value="" />
		<input type="hidden" name="email" 		id="email" 			value="" />
		<input type="hidden" name="mobileTel" 	id="mobileTel" 	    value="" />
		<input type="hidden" name="homeTel" 	id="homeTel" 	    value="" />
		<input type="hidden" name="custPassEnc" id="custPassEnc" 	value="" />
		<input type="hidden" name="idChk" 		id="idChk" 			value="N" />
		<input type="hidden" name="oldCustId" 	id="idChk" 			value="" />        
	<div class="join_step"><!--[[ 정보입력 Start ]]-->
		<table class="mg0">
		<caption>회원정보수정</caption>
			<tbody>
				<tr>
					<th scope="row"><label for="custId">아이디</label><span class="chk"></span></th>
					<td colspan="3">
						<input type="text" name="custId" id="custId" maxlength="20" value="">
						<button type="button" name="btnDup" id="btnDup" class="btnChk">중복 확인</button>
						<span class="tooltip" id="idSpan"></span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="custNmKor">성명</label><span class="chk"></span></th>
					<td>이름표시</td>
					<th scope="row"><label for="genderCd">성별</label></th>
					<td>성별표시</td>
				</tr>
				<tr>
					<th scope="row"><label for="email1">이메일</label><span class="chk"></span></th>
					<td colspan="3">
						<input type="text" name="email1" id="email1" class="txtemail" maxlength="20" value="메일주소">
						<span class="txt">@</span>
						<input type="text" name="email2" id="email2" class="txtemail" maxlength="20" value="선택된메일" title="이메일서버">
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
							<input type="radio" name="emailYnY" id="emailYnY" value="Y"  ><span class="radio_txt"><label for="emailYnY">수신동의</label></span>
							<input type="radio" name="emailYnN" id="emailYnN" value="N" checked="checked" ><span class="radio_txt"><label for="emailYnN">수신거부</label></span>
							<input type="hidden" name="emailYn" id="emailYn" value="N" />
						</div>
							<span class="regDesc">· 이메일 수신동의를 하시면 이벤트/할인쿠폰/기획전/상품안내를 받으실 수 있습니다.<br />· 수신여부와 상관없이 예약,결제, 개인정보 등에 대한 내용은 발송 됩니다.</span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="mobileTel1">휴대폰번호</label><span class="chk"></span></th>
					<td colspan="3">
						<select name="mobileTel1" id="mobileTel1" class="sel_w selprefix">
							<option value="">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<span class="txt">-</span><input type="text" name="mobileTel2" id="mobileTel2" class="txtcell" maxlength="4" value=""  title="휴대폰 중간 4자리">
						<span class="txt">-</span><input type="text" name="mobileTel3" id="mobileTel3" class="txtcell" maxlength="4" value=""  title="휴대폰 마지막 4자리">
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
						<select name="homeTel1" id="homeTel1" class="sel_w selprefix">
							<option value="">선택</option>
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
						<span class="txt">-</span><input type="text" name="homeTel2" id="homeTel2" class="txtcell" maxlength="4" value="" title="자택전화 중간 4자리">
						<span class="txt">-</span><input type="text" name="homeTel3" id="homeTel3" class="txtcell" maxlength="4" value="" title="자택전화 마지막 4자리">
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="btnZip">자택주소</label></th>
					<td colspan="3">
						<input type="text" name="zipCd" id="zipCd"  maxlength="6" value="" title="우편번호">
						<button type="button" name="btnZip" id="btnZip" class="btnChk" role-w="462" role-h="794" role-url="/mypage/selectZipCodeLayer.do" onclick="showLayer(this)">우편번호 찾기</button>
						<input type="text" name="custAddr" id="custAddr" class="addr clear" maxlength="80" value="" title="자택주소">
						<input type="text" name="custAddrDetail" id="custAddrDetail" class="addr" maxlength="50" value="" title="상세주소">
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="jobCd">직업</label></th>
					<td colspan="3">
						<select name="jobCd" id="jobCd">
							<option value="">선택하세요</option>
							<option value="10" >주부</option>
							<option value="15" >공무원</option>
							<option value="20" >교직자</option>
							<option value="25" >전문직</option>
							<option value="30" >사무직</option>
							<option value="35" >의료인</option>
							<option value="40" >법조인</option>
							<option value="45" >군인</option>
							<option value="5" >자영업</option>
							<option value="50" >종교인</option>
							<option value="55" >언론방송인</option>
							<option value="60" >학생</option>
							<option value="99" >기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="birthYear">생년월일</label><span class="chk"></span></th>
					<td colspan="3">YYYY년M월 dd일</td>
				</tr>
				<tr>
					<th scope="row"><label for="marryYn">결혼여부</label></th>
					<td>
						<input type="checkbox" name="marryYnY" id="marryYnY" value="Y" /><span class="radio_txt"><label for="marryYnY">예</label></span>
						<input type="checkbox" name="marryYnN" id="marryYnN" value="N" /><span class="radio_txt"><label for="marryYnN">아니오</label></span>
						<input type="hidden" name="marryYn" id="marryYn" value="Y" />
					</td>
					<th scope="row"><label for="marryYear">결혼기념일</label></th>
					<td>
						<div id="marryDiv"  style="display:block;">
						<select name="marryYear" id="marryYear" class="selDt">
							<option value="">선택</option>
							<option value="2017" >2017</option>
							<option value="2016" >2016</option>
							<option value="2015" >2015</option>
							<option value="2014" >2014</option>
							<option value="2013" >2013</option>
							<option value="2012" >2012</option>
							<option value="2011" >2011</option>
							<option value="2010" >2010</option>
							<option value="2009" >2009</option>
							<option value="2008" >2008</option>
							<option value="2007" >2007</option>
							<option value="2006" >2006</option>
							<option value="2005" >2005</option>
							<option value="2004" >2004</option>
							<option value="2003" >2003</option>
							<option value="2002" >2002</option>
							<option value="2001" >2001</option>
							<option value="2000" >2000</option>
							<option value="1999" >1999</option>
							<option value="1998" >1998</option>
							<option value="1997" >1997</option>
							<option value="1996" >1996</option>
							<option value="1995" >1995</option>
							<option value="1994" >1994</option>
							<option value="1993" >1993</option>
							<option value="1992" >1992</option>
							<option value="1991" >1991</option>
							<option value="1990" >1990</option>
							<option value="1989" >1989</option>
							<option value="1988" >1988</option>
							<option value="1987" >1987</option>
							<option value="1986" >1986</option>
							<option value="1985" >1985</option>
							<option value="1984" >1984</option>
							<option value="1983" >1983</option>
							<option value="1982" >1982</option>
							<option value="1981" >1981</option>
							<option value="1980" >1980</option>
							<option value="1979" >1979</option>
							<option value="1978" >1978</option>
							<option value="1977" >1977</option>
							<option value="1976" >1976</option>
							<option value="1975" >1975</option>
							<option value="1974" >1974</option>
							<option value="1973" >1973</option>
							<option value="1972" >1972</option>
							<option value="1971" >1971</option>
							<option value="1970" >1970</option>
							<option value="1969" >1969</option>
							<option value="1968" >1968</option>
							<option value="1967" >1967</option>
							<option value="1966" >1966</option>
							<option value="1965" >1965</option>
							<option value="1964" >1964</option>
							<option value="1963" >1963</option>
							<option value="1962" >1962</option>
							<option value="1961" >1961</option>
							<option value="1960" >1960</option>
							<option value="1959" >1959</option>
							<option value="1958" >1958</option>
							<option value="1957" >1957</option>
							<option value="1956" >1956</option>
							<option value="1955" >1955</option>
							<option value="1954" >1954</option>
							<option value="1953" >1953</option>
							<option value="1952" >1952</option>
							<option value="1951" >1951</option>
							<option value="1950" >1950</option>
							<option value="1949" >1949</option>
							<option value="1948" >1948</option>
							<option value="1947" >1947</option>
							<option value="1946" >1946</option>
							<option value="1945" >1945</option>
							<option value="1944" >1944</option>
							<option value="1943" >1943</option>
							<option value="1942" >1942</option>
							<option value="1941" >1941</option>
							<option value="1940" >1940</option>
							<option value="1939" >1939</option>
							<option value="1938" >1938</option>
							<option value="1937" >1937</option>
							<option value="1936" >1936</option>
							<option value="1935" >1935</option>
							<option value="1934" >1934</option>
							<option value="1933" >1933</option>
							<option value="1932" >1932</option>
							<option value="1931" >1931</option>
							<option value="1930" >1930</option>
							<option value="1929" >1929</option>
							<option value="1928" >1928</option>
							<option value="1927" >1927</option>
							<option value="1926" >1926</option>
							<option value="1925" >1925</option>
							<option value="1924" >1924</option>
							<option value="1923" >1923</option>
							<option value="1922" >1922</option>
							<option value="1921" >1921</option>
							<option value="1920" >1920</option>
							<option value="1919" >1919</option>
							<option value="1918" >1918</option>
							<option value="1917" >1917</option>
							<option value="1916" >1916</option>
							<option value="1915" >1915</option>
							<option value="1914" >1914</option>
							<option value="1913" >1913</option>
							<option value="1912" >1912</option>
							<option value="1911" >1911</option>
							<option value="1910" >1910</option>
						</select>
						<span class="txt">년</span>
						<select name="marryMonth" id="marryMonth" class="selDt" title="결혼기념일 월">
							<option value="">선택</option>
							<option value="1" >1</option>
							<option value="2" >2</option>
							<option value="3" >3</option>
							<option value="4" >4</option>
							<option value="5" >5</option>
							<option value="6" >6</option>
							<option value="7" >7</option>
							<option value="8" >8</option>
							<option value="9" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
						</select>
						<span class="txt">월</span>
						<select name="marryDay" id="marryDay" class="selDt" title="결혼기념일">
							<option value="">선택</option>
							<option value="1" >1</option>
							<option value="2" >2</option>
							<option value="3" >3</option>
							<option value="4" >4</option>
							<option value="5" >5</option>
							<option value="6" >6</option>
							<option value="7" >7</option>
							<option value="8" >8</option>
							<option value="9" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
							<option value="13" >13</option>
							<option value="14" >14</option>
							<option value="15" >15</option>
							<option value="16" >16</option>
							<option value="17" >17</option>
							<option value="18" >18</option>
							<option value="19" >19</option>
							<option value="20" >20</option>
							<option value="21" >21</option>
							<option value="22" >22</option>
							<option value="23" >23</option>
							<option value="24" >24</option>
							<option value="25" >25</option>
							<option value="26" >26</option>
							<option value="27" >27</option>
							<option value="28" >28</option>
							<option value="29" >29</option>
							<option value="30" >30</option>
							<option value="31" >31</option>
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
		<button type="submit" id="btnok" class="btnBlack btn_r" title="확인">확인</button>
		<button type="button" id="btncancel" class="btnGray" title="취소">취소</button>
	</div>
</form>		
</section>
<!--[[ content End ]]-->
</div>
</div>