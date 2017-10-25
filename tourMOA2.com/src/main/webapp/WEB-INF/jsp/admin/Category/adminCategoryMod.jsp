<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" 	   uri="http://java.sun.com/jsp/jstl/functions" %>


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
		
		if(g == "S") url = "<c:url value='/admincategoryUpd.do' />";
		else if(g == "D") url = "<c:url value='/admincategoryDel.do' />";
		
		/* var form = new FormData(document.getElementById('frm')); */
		
		var parm = "ctgcd=" + $("#ctgcd").val();		
			parm += "&ctgnm=" + $("#ctgnm").val();
			parm += "&comm=" + $("#comm").val();
			parm += "&use=" + $("#use").val();
		
		$.ajax({
			type: 'POST',
			data: parm,
			url: url ,
			dataType: "json",
			
			/* processData: false,
			contentType: false, */
			
			success: function (data) {
				if(g == "S") {
					if(data.result == "ok") {
						alert("수정 처리 됬습니다.");
						location.reload();
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

<c:if test="${fn:length(ctgVo.ctgcd) == 3}">
	<c:set var="level" value="대분류" />
</c:if>
<c:if test="${fn:length(ctgVo.ctgcd) == 5}">
	<c:set var="level" value="중분류" />
</c:if>
<c:if test="${fn:length(ctgVo.ctgcd) == 7}">
	<c:set var="level" value="소분류" />
</c:if>
<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>카테고리 수정/삭제</h1>
	<div class="table-responsive">		
		<form name="frm" id="frm">
		<input type="hidden" name="hctgcd" id="hctgcd" value="${hctgcd}"/>
		<input type="hidden" name="ctgcd" id="ctgcd" value="${ctgVo.ctgcd}"/>
		
		<table class="table table-hover">
			<colgroup>
				<col width="30%"></col>
				<col width="70%"></col>
			</colgroup>
			<tr>
				<th>카테고리 분류</th>
				<td>${ctgVo.ctgnm} ${level} 수정</td>
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
		<table class="table table-hover">
			<thead>
				<tr>
					<td align="center">
						<input type="button" value="수정" onclick="fn_sav('S')"/>
						<input type="button" value="삭제" onclick="fn_sav('D')"/>
						<input type="button" value="목록" onclick="location.href='/adminCategoryList.do'"/>
					</td>
				</tr>
			</thead>
		</table>
	</div>
</main>