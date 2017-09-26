<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}
.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}
.ws_toolbar {z-index:100000} 
.ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}
.tb_highlight{background-color:yellow} 
.tb_hide {visibility:hidden} 
.ws_toolbar img {padding:2px;margin:0px}
</style>
<div id="simplemodal-overlay" class="simplemodal-overlay" style="opacity: 0.5; height: 12876px; width: 1920px; position: fixed; left: 0px; top: 0px; z-index: 1001;"></div>
<div id="simplemodal-container" class="simplemodal-container" style="position: fixed; z-index: 1002; height: 439px; width: 933px; left: 493.5px; top: 10px;"><a class="modalCloseImg simplemodal-close" title="Close"></a><div tabindex="-1" class="simplemodal-wrap" style="height: 100%; outline: 0px; width: 100%; overflow: visible;"><div id="popLayer_wrap" class="simplemodal-data" style="">
<!-- <link rel="stylesheet" href="/css/popup.css"> -->
<script src="/js/ui.js" type="text/javascript"></script>
<script src="/js/jquery.cookie.js" type="text/javascript"></script>
<script src="/js/common.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">

$(document).ready(function(){
	$("#btnClose, .layer_close").click(function(){
		closeLayer();
	});
	
	//로그인
	$("#btnLogin").click(function(){
		
		if($("input:text[name='custId']").val() == ""){
			alert("아이디를 입력하세요.");
			$("input:text[name='custId']").val("");
			$("input:text[name='custId']").focus();
			return false;
		}

		if($("input:password[name='custPassEnc']").val() == ""){
			alert("비밀번호를 입력하세요.");
			$("input:password[name='custPassEnc']").val("");
			$("input:password[name='custPassEnc']").focus();
			return false;
		}
		
		// 크로스도메인 처리를 위한 Ajax Low Level 커스터마이징
// 		$.ajaxPrefilter('json', function(options, orig, jqXHR) {
			//return 'jsonp'
		//});
		var hostName = $(location).attr('hostname');
		if(hostName.indexOf("localhost") > -1){
			hostName = "http://"+hostName+":8080";
		}else{
			hostName = "https://"+hostName;
		}
		$.ajax({
			  type:"POST"		
			, url:"/mypage/loginRsvPopProc.do?callback=loginProc"
			, async:false            // true-동기, false-비동기
			, crossDomain:true
			, dataType:"jsonp"
			, cache:false
			, data:{
			      	"custId"   : $("input:text[name='custId']").val()
			      , "custPassEnc"   : $("input:password[name='custPassEnc']").val()
			      , "loginFrom"   : "YBPC"
			}	
	        , success:function(data, textStatus, jqXHR){
	        	
	        }
	        , error:function(xhr, msg, e){
	            
	        }
		
	   });
		
		return false;	
	});
	
	//비회원 일때
	$("#btnRes").click(function(){

		if($("input:text[name='nonCuNm']").val() == ""){
			alert("이름을 입력하세요.");
			$("input:text[name='nonCuNm']").val("");
			$("input:text[name='nonCuNm']").focus();
			return false;
		}
		
		if($("#nonCuCall1").val() == ""){
			alert("휴대폰번호를 입력하세요");
			$("#nonCuCall1").val("");
			$("#nonCuCall1").focus();
			return false;
		}
		if($("input:text[name='nonCuCall2']").val() == ""){
			alert("휴대폰번호를 입력하세요");
			$("input:text[name='nonCuCall2']").val("");
			$("input:text[name='nonCuCall2']").focus();
			return false;
		}
		if($("input:text[name='nonCuCall3']").val() == ""){
			alert("휴대폰번호를 입력하세요");
			$("input:text[name='nonCuCall3']").val("");
			$("input:text[name='nonCuCall3']").focus();
			return false;
		}

// 		if(!$("input:checkbox[name='chkShare']").prop("checked")){
// 			alert("개인정보 수집 및 이용에 대한 안내에 동의를 선택해 주세요.");
// 			$("input:checkbox[name='chkShare']").focus();
// 			return false;
// 		}

// 		if(!$("#chkUseInfo").prop("checked")){
// 			alert("개인정보의 제3자 제공 및 공유에 대해 동의를 선택해 주세요.");
// 			$("#chkUseInfo").focus();
// 			return false;
// 		}
		
// 		if(!$("#chkUseInfo2").prop("checked")){
// 			alert("개인정보의 취급위탁 제공 및 공유에 대해 동의를 선택해 주세요.");
// 			$("#chkUseInfo2").focus();
// 			return false;
// 		}
		if( isNaN($("input:text[name='nonCuCall2']").val()) ||  isNaN($("input:text[name='nonCuCall3']").val())){
			
			alert("휴대폰번호를 숫자를 입력해 주세요");
			return false;
		}
		
		
		var year = $("#nonCuYy option:selected").val();
		var mon = $("#nonCuMm option:selected").val();
		var day = $("#nonCuDd option:selected").val();		
		
		var age =ageCheck(year, mon, day);
		
		if(age <= 14){
			alert("만14세 미만 아동의 경우 상품 예약이 불가합니다.\n관련 문의 사항은 고객센터를 이용하시기 바랍니다. ");
			return false;
		}		
		
	});	
	
	//아이디/비밀번호 찾기
	$("#btnIdPw").click(function(){
		$(location).attr('href','/mypage/findId.do');
	});
	
	//회원가입
	$("#btnJoin").click(function(){
		$(location).attr('href','/mypage/join.do');
	});
	
	getId();
	
	//전화번호 
	$.ajax({
		
		url : "/common/selectCodeList.do"			
		, dataType: 'JSON'	
		, data:{
			  "commGripId"	:	"WEB_CUST_TEL",
			  "commCdIdHi"	:	""
		}		
		, success : function(data) {
			if(data.length>0){
				$("#nonCuCall1").selectOptionAllDelete();
				$("#nonCuCall1").selectOptionAppendCode(data,"","선택");
			}else{	
				$("#nonCuCall1").val("");
			}
               
		}
		, error: function() {						
		}
		
	});
	
});

function loginProc(json){
	if(json.result == 'success'){
		// 쿠키 설정
		//$.cookie('ybtour', json.webSessKey, { expires: 1 , domain: '.ybtour.co.kr', path: '/', secure: false });
		
		/* C 미인증 I 휴면 W 탈퇴 */
		if(json.custStatCd == "C"){
			alert("14세 미승인");
			return;
		}else if(json.custStatCd == "I"){
			closeLoginLayer("/mypage/accountDmtCertify.do?webCustNo=" + json.webCustNo);
			return;
		}
		
		//아이디저장
		saveId();
		
		//비밀번호 6개월
		if(json.udtPassFg == "false"){
			closeLoginLayer("/mypage/accountOldPwUpdate.do");
		}

		var year = json.birthDt.substring(0,4);
		var mon = json.birthDt.substring(4,6);
		var day = json.birthDt.substring(6,8);	
		var age = ageCheck(year, mon, day);
		
		if(age <= 14){
			alert("만14세 미만 아동의 경우 상품 예약이 불가합니다.\n관련 문의 사항은 고객센터를 이용하시기 바랍니다. ");
			return;
			 
		}else{
			closeLoginLayer("/product/reserveStep01.do?menu=pkg&did=702&evCd=PGP5006-170926TW00&webDisplayCls=A" + "&nonCustYn=N");
		}
		
	}else{
		alert("입력하신 아이디 혹은 비밀번호가 일치하지 않습니다.\n다시 확인하신 후 로그인 해주시기 바랍니다.");
	}
}

/*********************
 * 만 나이검사
 ********************/
function ageCheck(birthYear, birthMon, birthDay){
	
	var today = new Date();
	var birthday = new Date(birthMon + '/' + birthDay + '/' + birthYear);
	var years = today.getFullYear() - birthday.getFullYear();
	
	// 현재 년도에서 생일을 재설정
	birthday.setFullYear(today.getFullYear());
	
	// 생일이 지났으면 -1
	if(today < birthday)
	{
		years--;
	}	
	
	return years;
}

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
	
	if($("input:checkbox[name='chkSave']").prop('checked')){
		expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
	}else{
		expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
	}

	setCookie("saveId", $("input:text[name='custId']").val(), expdate);
}

function getId() {
	
	var saveId = getCookie("saveId");
	
	if (saveId != null && saveId != "") {
		$("input:text[name='custId']").val(saveId);
		$("input:checkbox[name='chkSave']").prop('checked', true);
		$("input:password[name='custPassEnc']").focus();
	}else{
		$("input:text[name='custId']").focus();	
	}
}

// function fnAgreeDtl(dtl){
	
// 	var contUrl =""
	
// 	if(dtl =="chkShare"){
// 		contUrl="/html/common/other/agree2.html";
// 	}
	
// 	if(dtl =="chkUseInfo"){
// 		contUrl="/html/common/other/agree1.html";
// 	}	
	
// 	if(dtl =="chkUseInfo2"){
// 		contUrl="/html/common/other/agree3.html";
// 	}	

	
// 	window.open(contUrl,'detailLook','width=1200, height=650, resizable=no, scrollbars=yes, left=200, top=15');
// 	//window.open('about:blank').location.href = contUrl;	
// }

</script>



<div id="loginRes_layer"><!--[[ 예약하기 로그인 레이어 Start ]]-->
    <div class="layer_top">
        <span class="layer_tit">예약하기</span>
        <span class="layer_close"><a class="modalCloseImg" title="Close"></a></span>
    </div>

    <div class="layer_body"><!--[[ 레이어 본문 Start ]]-->
        <div class="loginWrap">
            
            <div class="loginBox_01">
            <form name="frmLogin" id="frmLogin" method="post" action="">
	            
                <span class="login_header">노랑풍선 회원으로 예약하기</span>
                <div class="input01">
                    <span class="sbj mgb10"><label for="txtid">아이디</label></span><span class="cont mgb10"><input type="text" id="custId" name="custId"></span>
                    <span class="sbj"><label for="txtpass">비밀번호</label></span><span class="cont"><input type="password" id="custPassEnc" name="custPassEnc"></span>
                </div>
                <div class="input02"><button type="submit" name="btnLogin" id="btnLogin">로그인</button></div>
                <span class="chk"><input type="checkbox" id="chkSave" name="chkSave"><label for="chkSave">아이디저장</label></span>
                <div class="para">
                    <span>회원가입 시 입력하신 회원정보를 통해<br> 아이디와 비밀번호를 찾으실 수 있습니다.</span>
                    <button type="button" name="btnIdPw" id="btnIdPw">아이디/비밀번호찾기</button>
                </div>
                <div class="para">
                    <span>아직 노랑풍선 회원이 아니신가요?<br> 노랑풍선 회원이 되시면 급이 다른 혜택을<br> 누리실 수 있습니다.</span>
                    <button type="button" name="btnJoin" id="btnJoin">회원가입</button>
                </div>
            </form>    
            </div>
            
            <div class="loginBox_01 floatR">
            <form name="frmRes" id="frmRes" method="post" action="/product/reserveStep01.do?menu=pkg&amp;did=702&amp;evCd=PGP5006-170926TW00&amp;webDisplayCls=A">	 
	            <input type="hidden" name="nonCustYn" value="Y"> 
	                   
                <span class="login_header">비회원으로 예약하기</span>
                <div class="input01">
                    <span class="sbj mgb10"><label for="txtname">이름</label></span><span class="cont mgb10"><input type="text" id="nonCuNm" name="nonCuNm"></span>
                    <span class="sbj"><label for="birthYY">생년월일</label></span>
                    <span class="cont">
                        <select name="nonCuYy" id="nonCuYy" class="clear selDt first">   
                                           
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                        <option value="1959">1959</option>
                        <option value="1958">1958</option>
                        <option value="1957">1957</option>
                        <option value="1956">1956</option>
                        <option value="1955">1955</option>
                        <option value="1954">1954</option>
                        <option value="1953">1953</option>
                        <option value="1952">1952</option>
                        <option value="1951">1951</option>
                        <option value="1950">1950</option>
                        <option value="1949">1949</option>
                        <option value="1948">1948</option>
                        <option value="1947">1947</option>
                        <option value="1946">1946</option>
                        <option value="1945">1945</option>
                        <option value="1944">1944</option>
                        <option value="1943">1943</option>
                        <option value="1942">1942</option>
                        <option value="1941">1941</option>
                        <option value="1940">1940</option>
                        <option value="1939">1939</option>
                        <option value="1938">1938</option>
                        <option value="1937">1937</option>
                        <option value="1936">1936</option>
                        <option value="1935">1935</option>
                        <option value="1934">1934</option>
                        <option value="1933">1933</option>
                        <option value="1932">1932</option>
                        <option value="1931">1931</option>
                        <option value="1930">1930</option>
                        <option value="1929">1929</option>
                        <option value="1928">1928</option>
                        <option value="1927">1927</option>
                        <option value="1926">1926</option>
                        <option value="1925">1925</option>
                        <option value="1924">1924</option>
                        <option value="1923">1923</option>
                        <option value="1922">1922</option>
                        <option value="1921">1921</option>
                        <option value="1920">1920</option>
                        <option value="1919">1919</option>
                        <option value="1918">1918</option>
                        <option value="1917">1917</option>
                        </select>
                        
                        <select name="nonCuMm" id="nonCuMm" class="selDt" title="생월">
						
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        </select>
                        <select name="nonCuDd" id="nonCuDd" class="selDt" title="생일">
						
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                        </select>
                    </span>
                    <span class="sbjBlank"></span>
                    <!-- <span class="sbj"><label for="chkMale">성별</label></span><span class="cont"><input type="radio" id="chkMale" name="chkSex" value="M" checked><span class="radio_txt"><label for="chkMale">남자</label></span><input type="radio" id="chkFemale" name="chkSex" value="F"><span class="radio_txt"><label for="chkFemale">여자</label></span></span> -->
                    <span class="sbj"><label for="cellNo1">휴대폰번호</label></span>
                    <span class="cont">
                        <select name="nonCuCall1" id="nonCuCall1" class="selprefix">
                        
                        <option value="">선택</option><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select><span class="txt">-</span><input type="text" name="nonCuCall2" id="nonCuCall2" class="txtcell" maxlength="4" title="휴대번호 중간 4자리"><span class="txt">-</span><input type="text" name="nonCuCall3" id="cellNo3" class="txtcell" maxlength="4" title="휴대번호 마지막 4자리">
                    </span>
                </div>
                <div class="input02"><button type="submit" name="btnRes" id="btnRes">확인</button></div>
                <div class="input03">
                	<!--  정보이용 동의 추가 
                	<span class="agree"><input type="checkbox" name="chkShare" id="chkShare"><label for="chkShare">개인정보 수집 및 이용에 대한 안내에 동의 합니다. (필수)</label><span class="agree_detail"><a href="#" onclick="fnAgreeDtl('chkShare'); return false;">자세히 보기></a></span></span>                	
                	<span class="agree"><input type="checkbox" name="chkUseInfo" id="chkUseInfo"><label for="chkUseInfo">개인정보의 제3자 제공 및 공유에 대해 동의 합니다.(필수)</label><span class="agree_detail"><a href="#" onclick="fnAgreeDtl('chkUseInfo'); return false;">자세히 보기></a></span></span>
                	<span class="agree"><input type="checkbox" name="chkUseInfo" id="chkUseInfo2"><label for="chkUseInfo2">개인정보의 취급위탁 제공 및 공유에 대해 동의합니다.(필수)</label><span class="agree_detail"><a href="#" onclick="fnAgreeDtl('chkUseInfo2'); return false;">자세히 보기></a></span></span>              		
               		<!-- <span class="agree"><input type="checkbox" name="chkSharePlus" id="chkSharePlus"><label for="chkSharePlus">서비스 홍보 및 마케팅 활용에 동의합니다.(선택)</label><span class="agree_detail"><a href="#" onclick="fnAgreeDtl('chkSharePlus'); return false;">자세히 보기></a></span></span>  -->  
               		<!--  //정보이용 동의 추가 -->               		
                </div>
                <div class="para_2">
                    <p><span>비회원으로 예약하실 경우</span> 담당자 확인 후 <span>실제 출발이 확정된 경우</span>에만 <br>
						예약번호로 웹페이지에서 <span>예약확인이 가능하며, 노랑풍선으로 다녀오신 여행을</span><br>
						누적하여 관리/확인하실 수 없습니다. <br><br>
                        14세 미만 아동은 상품 예약이 불가능합니다. </p>
                </div>
            </form>    
            </div>
        </div>
        <div class="footWrap">
            <div class="txt01">
                <span class="para01">급이다른</span>
                <span class="para01">노랑풍선 회원혜택</span>
                <span class="hypo"></span>
            </div>
            <div class="txt02">
                <span class="para01">01. 최신 여행 정보를 쉽고 빠르게!</span>
                <span class="para02">이메일과 SMS를 통해<br>최신 여행정보와 할인소식을 알려드립니다.</span>
            </div>
            <div class="txt03">
                <span class="para01">02. 365일 즐거운 노랑풍선</span>
                <span class="para02">다양하고 풍성한<br>이벤트와 혜택을 놓치지 마세요.</span>
            </div>
            <div class="txt03">
                <span class="para01">03. 무엇이든 물어보세요!</span>
                <span class="para02">회원 전용 맞춤상담으로 여행에 대한<br>궁금증을 해결해 드립니다.</span>
            </div>
        </div>
    </div><!--[[ 레이어 본문 End ]]-->
</div><!--[[ 로그인 레이어 End ]]-->

</div></div></div>