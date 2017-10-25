<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   	uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     	uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" 	uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" 		uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
function fn_save() {
		
		if($("[id='ctgcd']").val() == "") {
			alert("카테고리 코드를 입력해주세요.");
			return false;
		}
		if($("[id='ctgnm']").val() == "") {
			alert("카테고리 명을 입력해주세요.");
			return false;
		}
		
		//var formData = new FormData(document.getElementById("catefrm"));

		 var parm = "ctgcd=" + $("#ctgcd").val();
			parm += "&hctgcd=" + $("#hctgcd").val();
			parm += "&ctgnm=" + $("#ctgnm").val();
			parm += "&comm=" + $("#comm").val();
			parm += "&use=" + $("#use").val();
		
		$.ajax({
			type: 'POST',
			data: parm,
			url: "<c:url value='/categorySave.do' />",
			dataType: "json",
			
			/* processData: false,
			contentType: false,  */
			/* 처리되고나서 실행되는부분 */
			success: function (data){
				if(data.result == "ok"){
					alert("분류에 등록 됐습니다.");
					window.location.reload();
					opener.window.location.reload();
				}else{
					alert("저장에 실패");
				}
			},
			error: function (error){
				alert("error: " + error);
			}
		});
		/* var form = new FormData(document.getElementById("frm"));
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/categorySave.do' />",
			dataType: "json",
			
			processData: false,
			contentType: false, 
			
			success: function (data) {
				if(data.result == "ok") {
					alert("분류에 등록 됬습니다.");
					window.location.reload();
					opener.window.location.reload();
				} else {
					alert("분류에 등록 실패");
				}
			},
			error: function (error) {
				alert("error : " + error);
			}
		}); */
}

</script>
<c:if test="${fn:length(hctgcd) == 1}">
	<c:set var="level" value="대분류" />
</c:if>
<c:if test="${fn:length(hctgcd) == 3}">
	<c:set var="level" value="중분류" />
</c:if>
<c:if test="${fn:length(hctgcd) == 5}">
	<c:set var="level" value="소분류" />
</c:if>
<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>카테고리 등록</h1>
	<div class="table-responsive">
		<form name="catefrm" id="catefrm">
		<input type="hidden" name="hctgcd" id="hctgcd" value="${hctgcd}"/>
		<input type="hidden" name="ctgcd" id="ctgcd" value="${ctgcd}"/>
		<table class="table table-hover">
			<colgroup>
				<col width="30%"></col>
				<col width="70%"></col>
			</colgroup>	
			<tr>
				<th>카테고리 분류</th>
				<td>${level} 등록</td>
			</tr>
			<tr>
				<th>카테고리 코드</th>
				<td>${ctgcd}</td>
			</tr>
			<tr>
				<th>카테고리 명</th>
				<td>
					<input type="text" name="ctgnm" id="ctgnm" style="width:98%;"/>
				</td>
			</tr>
			<tr>
				<th>설명</th>
				<td>
					<textarea name="comm" id="comm" style="width:99%;height:50px;"></textarea>
				</td>
			</tr>
			<tr>
				<th>사용유무</th>
				<td>
					<select name="use" id="use">
						<option value="Y">사용</option>
						<option value="N">미사용</option>
					</select>
				</td>
			</tr>
		</table>
		<table class="table table-hover">
			<thead>
				<tr>
					<td align="center">
						<input type="button" value="저장" onclick="fn_save()"/>
						<input type="button" value="목록" onclick="location.href='/adminCategoryList.do'"/>
					</td>
				</tr>
			</thead>
		</table>
		</form>
	</div>
</main>