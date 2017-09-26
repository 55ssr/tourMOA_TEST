<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" 	   uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="/js/jquery-2.2.2.js"></script>
	<script src="/js/jquery-ui.js"></script>
</head>

<script>
function fn_sav(g) {
		
		if($("[id='ctgcd']").val() == "") {
			alert("카테고리 코드를 입력해주세요.");
			return false;
		}
		if($("[id='ctgnm']").val() == "") {
			alert("카테고리 명을 입력해주세요.");
			return false;
		}
		
		if(g == "S") url = "<c:url value='/ctgUpd.do' />";
		else if(g == "D") url = "<c:url value='/ctgDel.do' />";
		
		var form = new FormData(document.getElementById('frm'));
		$.ajax({
			type: 'POST',
			data: form ,
			url: url ,
			dataType: "json",
			
			processData: false,
			contentType: false, 
			
			success: function (data) {
				if(g == "S") {
					if(data.result == "ok") {
						alert("수정 처리 됬습니다.");
						window.location.reload();
						opener.window.location.reload();
					} else {
						alert("수정 처리 실패");
					}
				} else if(g == "D") {
					if(data.result == "ok") {
						alert("삭제 처리 됬습니다.");
						opener.window.location.reload();
						self.close();
					} else if(data.result == "low") {
						alert("하위 레벨이 존재합니다.\n삭제 후 처리하세요.");
					} else {
						alert("삭제 처리 실패");
					}
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
<input type="button" value="저장" onclick="fn_sav('S')"/>
<input type="button" value="삭제" onclick="fn_sav('D')"/>
<input type="button" value="닫기" onclick="self.close()"/>
		</td>
	</tr>
</table>
<form name="frm" id="frm" target="">
<input type="hidden" name="ctgcd" id="hctgcd" value="${ctgVo.ctgcd}"/>

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
		<td>
			${ctgVo.ctgcd}
		</td>
	</tr>
	<tr>
		<th>카테고리 명</th>
		<td>
			<input type="text" name="ctgnm" id="ctgnm" value="${ctgVo.ctgnm}" style="width:98%;"/>
		</td>
	</tr>
	<tr>
		<th>설명</th>
		<td>
			<textarea name="comm" id="comm" style="width:99%;height:50px;">${ctgVo.comm}</textarea>
		</td>
	</tr>
	<tr>
		<th>사용유무</th>
		<td>
			<select name="use" id="use">
				<option value="Y" <c:if test="${ctgVo.use == 'Y'}">selected</c:if>>사용</option>
				<option value="N" <c:if test="${ctgVo.use == 'N'}">selected</c:if>>미사용</option>
			</select>
		</td>
	</tr>
</table>
</form>
</body>
</html>