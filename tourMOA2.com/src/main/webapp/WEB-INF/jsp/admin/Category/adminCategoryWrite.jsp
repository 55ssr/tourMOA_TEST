<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" 	   uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>

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
		var form = new FormData(document.getElementById('frm'));
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/ctgSav.do' />",
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
		});
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

<body>
<table border="0" style="width:98%">
	<tr>
		<td align="right">
			<input type="button" value="저장" onclick="fn_save()"/>
			<input type="button" value="닫기" onclick="self.close()"/>
		</td>
	</tr>
</table>
<form name="frm" id="frm" target="">
<input type="hidden" name="hctgcd" id="hctgcd" value="${hctgcd}"/>
<input type="hidden" name="hctgcd" id="ctgcd" value="${ctgcd}"/>
<table border="1" style="width:98%">
	<caption>카테고리 등록</caption>
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
</form>
</body>
</html>