<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" href="/css/mypage.css" />
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

<script type="text/javascript">

$(document).ready(function() {

	var flagInit = "init";

	/****************************************
	* 여행이야기 유형선택 - 다녀온 여행 후기  
	*/
	/* $("#chkReview").change(function() {
		$("select[name=evCd]").removeClass("none");
		$("select[name=dspIdCategory]").addClass("none");
		$("select[name=dspIdArea]").addClass("none");
		$("select[name=dspId]").addClass("none");
		$("#dspIdDiv").css("display", "none");
		$("#evCdDiv").css("display", "block");
		
		
		$.ajax({
			url : "/customer/selectLoginCustRerv.do"
			, dataType : 'JSON'
			, data : {
				"webCustNo"			: "12016515981"
			}
			, success : function(data)	{
				$("select").selectOptionAllDelete();
				$("select[name=evCd]").selectOptionAllDelete();
				if (data.length > 0 && "" != "BEFORE") {
					$("select[name=evCd]").append(new Option("상품을 선택하고 후기를 입력해 주세요", "", false, true));
					$.each(data, function(idx, optionData) {
						var option = new Option(optionData.evNm, optionData.evCd);
						$(option).html(optionData.evNm);
						$("select[name=evCd]").append(option);
						$("input:radio[name=chkType]:radio[value='AFTER']").prop("checked",true);
					
						if("" == optionData.evCd){
							$(option).prop("selected",true);
						} 
					});
					flagInit = "";
				} else if("" == "BEFORE") {
					if (flagInit == "init") {
				 		$("input:radio[name=chkType]:radio[value='BEFORE']").trigger("change").prop("checked",true);
						flagInit = "";
						
						selectCode();
					}
				}
				else {
					$("select[name=evCd]").append(new Option("예약하신 내역이 없습니다. 여행수다에서 카테고리를 선택해 주세요.", "", false, true))
					if (flagInit == "init") {
				 		$("input:radio[name=chkType]:radio[value='BEFORE']").trigger("change").prop("checked",true);						
						flagInit = "";
					}
				}
			}
			, error : function() {
				alert("selectRervListError");
			}
		});
	}); */
	
	/****************************************
	 * 유형선택 - 여행수다
	 */
	$("#chkGuide").change(function() {
		chkGuideChange();
	});
	
	/****************************************
	 * 유형선택 - 여행수다 - 카테고리 선택시 지역 변경
	 */
	$("#dspIdCategory").change(function(){
		dspIdCategoryChange();
	});
	
	/****************************************
	 * 유형선택 - 여행수다 - 지역 선택시 세부지역 변경
	 */
	 $("#dspIdArea").change(function(){
		 dspIdAreaChange();
		});
	

	 /****************************************
	  * FILE : 확장자 필터링
	  */
	 $("input[type=file]").bind("change", function () {

	 	if( $("input[type=file]").val() != "" ){
	 		var ext = $("input[name=file]").val().split(".").pop().toLowerCase();
	 		if ($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) {
	 			alert("gif,png,jpg,jpeg 확장자만 등록할 수 있습니다.");
	 			
	 			// browser check
				var ua = window.navigator.userAgent;
				if(ua.indexOf('MSIE') > 0 || ua.indexOf('Trident') > 0)
					$("input[name=file]").replaceWith( $("input[name=file]").clone(true) );
				else {
					$("input[name=file]").val("");
				}
	 		}
	 	}
	 });
	



	

	/****************************************
	 * 버튼 - 확인
	 */ 
	$("#btnOk").on('click',function() {

		var dspId		= "";
		var evCd 		= $("select[name=evCd] option:selected").val();
		var title 		= $("input[name=title]").val();
		var contents 	= CKEDITOR.instances['txtContent'].getData();
// 		var file 		= $("input[name=file]").val();

		if ($("select[name=dspId]:visible").length == 1) {
			dspId = $("select[name=dspId] option:selected").val();
		} else if ($("select[name=dspIdArea]:visible").length == 1) {
			dspId = $("select[name=dspIdArea] option:selected").val();
		} else if ($("select[name=dspIdCategory]:visible").length == 1) {
			dspId = $("select[name=dspIdCategory] option:selected").val();
		} else {
		}
		$("select[name=dspId] option:selected").val(dspId);
		
		var msg = "";
		if ((dspId == ""  || dspId == null) && (evCd == "" || evCd == null)) {
			msg = msg + "여행상품 ";
		}
		if (title == "" || title == null) {
			msg = msg +  "제목 ";
		} 
		if (contents == "" || contents == null) {
			msg = msg +  "내용 ";
		} 
// 		if (file == "" || file == null) {
// 			msg = msg +  "파일 ";
// 		}
		if (msg == "") {
			var result = "";
			if('' != ''){
				 result = confirm("입력하신 글을 수정하시겠습니까?");
			} else {
				 result = confirm("입력하신 글을 등록하시겠습니까?");
			}
			if(result){
// 				if (categoryId == "262") {
// 					$("input[name=dspBiz]").val("262");
// 				}
// 				alert("input[name=dspBiz]="+$("input[name=dspBiz]").val());
				if('' != ''){
					$("#frm").attr('action', '/customer/updateEpisodeModify.do?travrvNo=');
				}else{
					$("#frm").attr("action", "/customer/insertEpisodeWrite.do");
				}
				$("#frm").submit();
				return true;
			}else{
				return false;
			}
		} else {
			alert(msg +"\n모든 항목을 입력해 주세요.");
			
			if ((dspId == "" || dspId == null) && (evCd == "" || evCd == null)) {
				if (dspId == "") {
					$( "select[name=dspId]" ).focus();
				} else {
					$( "select[name=evCd]" ).focus();
				}
			} else if (title == "" || title == null) {
				$( "input[name=title]" ).focus();
			} else if (contents == "" || contents == null) {
				$( "input[name=txtContent]" ).focus();
			} else {
				return false;
			}

// 			} else if (file == "" || file == null) {
//				$( "input[name=file]" ).focus();

			return false;
		}
		
	});

});

function selectCode(){
	chkGuideChange();	
}


function chkGuideChange(){
	/* $("select[name=dspIdCategory]").removeClass("none").css("display", "block");
	$("select[name=dspIdArea]").removeClass("none").css("display", "block");
	$("select[name=dspId]").removeClass("none").css("display", "block");
	$("select[name=evCd]").addClass("none").css("display", "none"); */
	$("select[name=dspIdCategory]").removeClass("none");
	$("select[name=dspIdArea]").removeClass("none");
	$("select[name=dspId]").removeClass("none");
	$("select[name=evCd]").addClass("none");
	$("#dspIdDiv").css("display", "block");
	$("#evCdDiv").css("display", "none");
	
	$.ajax({
		url : "/customer/selectDspMainMenu.do"
		, dataType : 'JSON'
		, data : {
		}
		, success : function(data)	{
			if (data.length>0) {
				$("select").selectOptionAllDelete();
				$("select[name=dspIdCategory]").append(new Option("카테고리선택", "", false, true));
				$("select[name=dspIdArea]").append(new Option("지역선택", "", false, true));
				$("select[name=dspId]").append(new Option("세부지역선택", "", false, true));
				$.each(data, function(idx, optionData) {
					var option = new Option(optionData.dspNm, optionData.dspId == null ? '' : optionData.dspId     );
					$(option).html(optionData.dspNm);
					$("select[name=dspIdCategory]").append(option);
				});
			}else {
				$("select[name=dspIdCategory]").selectOptionAllDelete();
				$("select[name=dspIdCategory]").append(new Option("해당 카테고리가 없습니다.", "", false, true));
			}
			if("" != ""){
				$("select[name=dspIdCategory]").val("").prop("selected",true);
				dspIdCategoryChange();
			}
		}
		, error : function() {
			alert("dspIdCategory error");
		}
	});
}

function dspIdCategoryChange(){
	var dspId = $("#dspIdCategory option:selected").val();
	if ($("#dspIdCategory option:selected").val() != "" && dspId != "null") {
		$.ajax({
			url : "/customer/selectDspMenu.do"
				, dataType : 'JSON'
				, data : {
					"startRow"			: 2,
					"dspId"				: dspId
				}
				, success : function(data)	{
					if (data.length>0) {
						$("select[name=dspIdArea]").selectOptionAllDelete();
						$("select[name=dspIdArea]").append(new Option("지역선택", "", false, true));
						$("select[name=dspId]").selectOptionAllDelete();
						$("select[name=dspId]").append(new Option("세부지역선택", "", false, true));
						$.each(data, function(idx, optionData) {
							var option = new Option(optionData.dspNm, optionData.dspId);
							$(option).html(optionData.dspNm);
							$("select[name=dspIdArea]").append(option);
						});
						/* $("select[name=dspIdArea]").css("display", "block");
						$("select[name=dspId]").css("display", "block"); */
					} else {
						$("select[name=dspIdArea]").selectOptionAllDelete();
						/* $("select[name=dspIdArea]").css("display", "none"); */
						$("select[name=dspId]").selectOptionAllDelete();
						/* $("select[name=dspId]").css("display", "none"); */
					}
					if("" != ""){
						$("select[name=dspIdArea]").val("").prop("selected",true);
						dspIdAreaChange();
					}
				}
				, error : function() {
					alert("dspIdCategory error");
				}
		});
	} else {
		/* $("select[name=dspIdArea]").css("display", "none");
		$("select[name=dspId]").css("display", "none"); */
		$("select[name=dspIdArea]").val("").attr("selected", "selected");
		$("select[name=dspId]").val("").attr("selected", "selected");
	}
}

function dspIdAreaChange(){
	var dspId = $("#dspIdArea option:selected").val();
	if (dspId != "") {
		$.ajax({
			url : "/customer/selectDspMenu.do"
				, dataType : 'JSON'
				, data : {
					"startRow"			: 3,
					"dspId"				: dspId
				}
				, success : function(data)	{
					if (data.length>0) {
						$("select[name=dspId]").selectOptionAllDelete();
						$("select[name=dspId]").append(new Option("세부지역선택", "", false, true));
						$.each(data, function(idx, optionData) {
							var option = new Option(optionData.dspNm, optionData.dspId);
							$(option).html(optionData.dspNm);
							$("select[name=dspId]").append(option);
						});
						/* $("select[name=dspId]").css("display", "block"); */
					} else {
						$("select[name=dspId]").selectOptionAllDelete();
						/* $("select[name=dspId]").css("display", "none"); */
					}
					if("" != ""){
						$("select[name=dspId]").val("").prop("selected",true);
					}
				}
				, error : function() {
					alert("dspId error");
				}
		});
	} else {
		$("select[name=dspId]").val("").attr("selected", "selected");
	}


}

/*초기에 여행후기 선택됨 */
window.onload = function() { 
	$("#chkReview").trigger("change").attr("checked",true);
};

/****************************************
 * 버튼 - 목록
 */
function fnBtnList(e) {
	var result = confirm("입력하신 글을 취소하고 목록으로 돌아가시겠습니까?");
	if (result) {
		location.href="/customer/episodeList.do";
	} else {
		return false;
	}
}

/****************************************
 * 버튼 - 취소
 */
function fnBtnCancel(e) {
	var result = confirm("입력하신 글을 취소하시겠습니까?");
	if (result) {
		location.href="/customer/episodeList.do";
	} else {
		return false;
	}
}


</script>


    <section id="content"><!--[[ content Start ]]-->
    	<form name="frm" id="frm" method="post" action="" >
		<div class="tit travel_episode_write"><span class="blind_ir">여행 후기</span></div>
		<div class="tbl_wrap">
			<table class="tbl_horizontal_type">
			<caption>여행후기 작성</caption>
			<colgroup>
				<col style="width:112px" /><col style="width:988px" />
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">작성자</th>
					<td>${sessionScope.loginCertification.id}</td>
				</tr>
				<tr>
					<th scope="row">유형선택</th>
					<td>
						<span class="radio_txt"><input type="radio" id="chkReview" name="chkType" value="AFTER" checked="checked" /><label for="chkReview">다녀온 여행후기</label> <!--  label for 값과 input checkbox id 값을 맞춰주세요 --></span>
					</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td>
						<input type="text" name="title" id="txtSubject"   class="input_default" style="width:915px" 
							placeholder="제목을 입력해 주세요"/>
                    </td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td>
						<div class="editor_area">
							<textarea name="contents" id="txtContent" title="내용" cols="129" rows="15" 
							placeholder="내용을 입력해 주세요" class="editor_textarea"></textarea>
					        <input type="hidden" name="readCnt" value= >
				            <input type="hidden" name="recmmdCnt" value= >
				            <input type="hidden" name="bestYn" value="" >
				            <input type="hidden" name="mvnmYn" value="" >
				            <input type="hidden" name="regDiviCd" value="" >
						</div>
						<ul class="list_type04">
							
							<li>등록하신 후기는 투어모아 홍보자료(웹사이트 게재,메일링 발송 등)으로 사용될 수 있습니다.</li>
							<li>게시판의 성격과 맞지 않을 경우 관리자에 의해 게시물이 이동될 수 있습니다. </li>
							<li>여행후기 작성 시, 자세한 후기와 함께 다양한 사진을 함께 올려주시면 베스트 여행후기로 선정되실 수 있습니다.</li>
						</ul>
					</td>
				</tr>
			</tbody>
			</table>
			<div class="bt_area">
				<span class="bt_left"><input type="button" value="목록" class="bt_type bd_type02" id="btnList" onclick="fnBtnList(this)"/></span>
				<span class="bt_right">
					<input type="button" value="확인" class="bt_type bd_type02" id="btnOk"/>
		                	<!-- <button id="btnOk" class="btnBlack btn_r" title="확인">확인</button> -->
		                <input type="button" value="취소" class="bt_type bd_type03" onclick="fnBtnCancel(this)" id="btnCancel"/>
				</span>
			</div>
		</div>
		</form>
    </section><!--[[ content End ]]-->
