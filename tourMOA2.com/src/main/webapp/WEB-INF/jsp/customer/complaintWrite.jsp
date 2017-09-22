<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />
<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	 $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");    $('.sub03_04').addClass('sub03_04 on'); $('#one').show();
	
	//소비자중심경영
	
    
    //서비스안내
    
}

$( document ).ready(function() {
	fnMenuSelect();
	$('#lnb').mouseleave(function(){
        setTimeout(function() {
        	$("#one > li").removeClass('on'); // 1depth 초기화
        	$("ul.sub").css("display","none"); // 2depth 사라짐
        	$("ul.sub > li").removeClass('on'); // 2depth 초기화
            fnMenuSelect();
        }, 3000);
    });
});

function loginConfirm(){
	
			document.location.href='/customer/complaintWrite.do';
		 
}
</script>
<style>
	#frm label.error{
		margin:10px 0px 10px 20px;
		width:auto;
		display:inline-block;
		vertical-align: middle;
		color:red
	}
	</style>
	<script type="text/javascript">
		function regTelNo(tel1,tel2,tel3){
			var tel = tel1+"-"+tel2+"-"+tel3;
			var regTel = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/;
			
			if(!regTel.test(tel)){
				return false;
			}
			
			return true;
		}
	
		//메일
		function fn_mail(){
			var mail= $("#selectemail option:selected").val();
			var beforeMail = "naver.com";
			if(mail ==""){
				document.frm.email2.value = beforeMail;				
			}else{
				document.frm.email2.value =mail; 
			}
		}
		
		//function fn_selectCpCrm(){
		//	var cpCrmCd= $("#cpCrmCd option:selected").val();
		//	if(cpCrmCd == 'T'){
		//		$("#evCds").show();
		//	}else{
		//			$("#evCds").hide();
				//document.frm.rervSeq.value = "";
		//	}
		//}
		
		$(document).ready(function(){
			$("#frm").attr("action", getSslHost() + "/mypage/insertComplaintWrite.do");
			
			
			
			
			$("#evCd").change(function(){	
				if ( $(this).val() !=''){
					$("span[name='resultDirect']").text("");
				}else{
					$("#evCd").val("");
					$("span[name='resultDirect']").text("");
				}
				
			});
		});
		
		$(function() {
			//$("#evCds").hide();
			//VALIDATION
			//$("#rervSeq").hide();
			$("#frm").validate({
				submitHandler: function(){
					
					if($("#email1").val() == ""){
						alert("이메일주소를 입력해 주세요");
						$("#email1").focus();
						return false;
					}
					if($("#email2").val() == ""){
						alert("이메일주소를 입력해 주세요");
						$("#email2").focus();
						return false;
					}
					var email = $("#email1").val() + "@" + $("#email2").val() ;
					
					//var pattern =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
					var pattern = /^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
					
					if(!(pattern.test(email))){
						alert("이메일 형식이 잘못되었습니다.");
						$("#email1").focus();
						return false;
					}			
					
					if($("select[name='cellNo1']").val() == "" || $("select[name='cellNo1']").val() == undefined){				
						alert("휴대폰번호를 선택해주세요");
						$("select[name='cellNo1']").focus();
						return false;				
					}
					if( $("input:text[name='cellNo2']").val() == "" || $("input:text[name='cellNo2']").val() == undefined){				
						alert("휴대폰번호를 입력해 주세요");
						$("input:text[name='cellNo2']").focus();
						return false;
					}
					if( $("input:text[name='cellNo3']").val() == "" || $("input:text[name='cellNo3']").val() == undefined){				
						alert("휴대폰번호를 입력해 주세요");
						$("input:text[name='cellNo3']").focus();
						return false;
					}
					
					if($("select[name='cellNo1']").val() != "" && $("input:text[name='cellNo2']").val() != "" && $("input:text[name='cellNo3']").val() != ""){

						if(!regTelNo($("select[name='cellNo1']").val(),$("input:text[name='cellNo2']").val(),$("input:text[name='cellNo3']").val())){
							alert("휴대폰번호가 유효하지 않습니다.");
							$("input:text[name='cellNo2']").focus();
							return false;
						}				
					}
					
					var evCd = $("#evCd").val();
					var praiseDirect =$("#result").val();
					
					if (evCd == "" || praiseDirect == "") {
						alert("여행 상품을 선택해 주세요.");
						$("#evCd").focus();
						return false;
					}
					
					var result = confirm("입력하신 글을 등록하시겠습니까?");
					if(result){
						alert("고객불편신고가 정상적으로 등록되었습니다.");
						return true;
					}else{
						return false;
					}
				},
				rules: {
					title: "required",
					cpCrmCd:"required",
					contents:"required",
					issueCd:"required",
					evCds:"required"
				},
				messages:{
					title: "제목을 입력하세요",
					cpCrmCd:"유형을 선택해 주세요",
					contents:"내용을 입력해 주세요",
					issueCd:"불편사항을 선택해 주세요",
					evCds:"여행 상품을 선택하세요."
				}
			});
			

			var mobile= telRegularEx("01012345678");
			var mobileSplit = mobile.split("-");
			$("select[name='cellNo1'] option[value="+mobileSplit[0]+"]").prop("selected",true);
			$("input:text[name='cellNo2']").val(mobileSplit[1]);
			$("input:text[name='cellNo3']").val(mobileSplit[2]);
			
			//issueCd
			$.ajax({
				
				url : "/common/selectCodeList.do"			
				, dataType: 'JSON'	
				, data:{
					  "commCdIdHi"	:	"ISSUE_CD",
					  "commGripId"	:	"WEB_BOARD_ISSUE",
					  "commCdAttr1"	:	"E"		 
				}		
				, success : function(data) {
		  			if(data.length>0){
		  				$("#issueCd").selectOptionAllDelete();
		  				$("#issueCd").selectOptionAppendCode(data,"","선택");
		  			}else{
		  				$("#issueCd").selectOptionAllDelete();
						$("#issueCd").append(new Option("선택", "", false, true));
		  			}	                
				}
				, error: function() {
					
					alert('에러');
					
				}
				
			});
		});
		
		function getSslHost(){
			var hostName = $(location).attr('hostname');
			if(hostName.indexOf("localhost") > -1){
				hostName = "http://"+hostName+":8080";
			}else{
				hostName = "https://"+hostName;
			}
			return hostName;
		}
		
	</script>
<section id="content"><!--[[ content Start ]]-->

        <div class="tit csreport_tit" title="고객불편신고하기"><span class="tit_txt csreport_sub">고객님의 소중한 의견을 신속하고, 정확하게 해결하기 위하여 최선을 다하겠습니다.</span>
        </div>
        
		<!-- (ssl) -->
        <form name="frm" id="frm" method="post" action="/mypage/insertComplaintWrite.do">
		<input type="hidden" name="cpCrmCd"  id=cpCrmCd"    value="T" />
        <div class="board_write"><!--[[ board write Start ]]-->
			    <table>
			    <caption>글쓰기</caption>
		        <tbody>
				    <tr>
					    <th scope="row">작성자</th>
					    <td class="hf">작성자ID</td>
                        <th scope="row"><label for="cellNo1">연락처</label></th>
					    <td class="hf">					    
					    	<select id="cellNo1" name="cellNo1" class="selprefix">
					    		<option value="">선택하세요</option>
								<option value="010">010</option>
					    		<option value="011">011</option>
					    		<option value="016">016</option>
					    		<option value="017">017</option>
					    		<option value="018">018</option>
					    		<option value="019">019</option>
					    		</select>
                            </select><span class="txt">-</span>
                            <input type="text" name="cellNo2" id="cellNo2" class="txtcell" maxlength="4" value="" title="연락처 중간 4자리">
                            <span class="txt">-</span>
                            <input type="text" name="cellNo3" id="cellNo3" class="txtcell" maxlength="4" value="" title="연락처 마지막 4자리">
                        </td>
		            </tr>
			        <tr>
                        <th scope="row"><label for="email1">이메일</label></th>
                        <td colspan="3">
                            <input type="text" name="email1" id="email1" class="txtemail" value="">
                            <span class="txt">@</span>
                            <input type="text" name="email2" id="email2" class="txtemail"value="naver.com" title="이메일서버">
                            <span class="sel_w selemail"><i>                            
  	                        <select path="mailCd" name="selectemail" id="selectemail" class="selemail" onchange="fn_mail()"  title="이메일서버선택">
	                        	<option value="">선택하세요</option>
	                            <option value="naver.com"  >네이버</option>
								<option value="hanmail.net"  >한메일</option>
								<option value="nate.com"  >네이트</option>
								<option value="daum.net"  >다음</option>
								<option value="gmail.com"  >구글</option>
								<option value="hotmail.com"  >핫메일</option>
								<option value="yahoo.com"  >야후</option>
								</select>
                            </i></span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="chk"><label for="title">제목</label></th>
                        <td colspan="3"><input type="text" name="title" id="title" class="txtsubject" maxlength="60">
                    </tr>
                    <tr>
                        <th scope="row" class="chk"><label for="cpCrmCd">여행 상품</label></th>
                        <td colspan="3">
                        	<span class="sel_w selcategory"><i>
	                            <select name="evCd" id="evCd" class="selreserved">
									<option value="X">해당 없음</option>
										</select>
	                            <button type="button" name="btnDirect" id="btnDirect" class="btn_self"  role-w="550" role-h="368"  role-url="/customer/selectPraiseDirectLayer.do" onclick="showLayer(this)">직접등록</button>
	                            <span class="select_txt"  id="resultDirect" name="resultDirect">
		                            </span>
                            </i></span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="chk"><label for="issueCd">불편사항</label></th>
                        <td colspan="3">
                            <select name="issueCd" id="issueCd" class="selcategory">
                                <option>선택하세요</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
					    <th scope="row" class="h_top chk"><label for="contents">내용</label></th>
					    <td colspan="3"><textarea name="contents" id="contents" placeholder="내용을 입력해 주세요"></textarea></td>
		            </tr>
                </tbody>
                </table>

        </div><!--[[ board write End ]]-->

        <div class="btnarea">
            <button type="submit" id="btnok" class="btnBlack btn_r" title="확인">확인</button><button type="button" id="btncancel" class="btnGray" title="취소" onclick="window.location.href='/customer/main.do'">취소</button>
        </div> 
			<input type="hidden" name="year"  id="year"  value="" >
	       	<input type="hidden" name="mon"  id="mon"  value="" >
	       	<input type="hidden" name="day"  id="day"  value="" >
			<input type="hidden" name="travrvType"   id="travrvType" value="">
			<input type="hidden" name="travrvArea"  id="travrvArea"  value="" >  
        </form>

    </section>