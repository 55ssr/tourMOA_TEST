<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>

<link rel="stylesheet" href="/css/customer.css" />
<script>
function fn_action(e) {
	var f = document.frm;
	if(e=="M"){
		if(f.title.value == ""){
			alert("제목을 입력해주세요.");
			return;
		}else if(f.content.value == ""){
			alert("내용을 입력해주세요.");
			return;
		}
		
		var form = new FormData(document.getElementById('frm'));
		
		var param = "title="+$("#title").val()
			param +="&gubun="+$("#gubun").val()
			param +="&allview="+$("#allview").val()
			param +="&content="+$("#content").val();
		
		alert(param);
		
		$.ajax({
			type: 'POST',
			data: param,
			url: "<c:url value='/noticeSave.do' />",
			dataType: "json",
			processData: false,
			/* 처리되고나서 실행되는부분 */
			success: function (data){
				if(data.result = "ok"){
					location.href = "<c:url value='/customer/noticeList.do'/>";
					alert("저장되었습니다.");
				}else{
					alert("저장에 실패");
				}
			},
			error: function (error){
				alert("error: " + error);
			}
		});
	}
	else if(e=="L"){
		f.action="dataBoardList.do";
	}
}
</script>

<div class="middle">
<form name="frm" id="frm">

<table id="noticeWrite">
	<colgroup>
		<col width="20%"/>
		<col width="*"/>
	</colgroup>
	<tr>
		<th style="width:20%;">구분</th>
		<td>
			<input type="text" name="gubun" id="gubun" style="width:98%;"/>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>
			<input type="text" name="title" id="title" style="width:98%;"/>
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<input type="text" name="content" id="content" style="width:98%;"/>
		</td>
	</tr>
	<tr>
		<th>상시표시</th>
		<td>
			상시표시<input type="radio" name="allview" id="allview" value="Y"/>
			상시표시안함<input type="radio" name="allview" id="allview" value="N"/>
		</td>
	</tr>	
	<tr>
		<td colspan="2" align="center">
			<input type="button" class="button" id="saveBtn" value="저장" onclick="fn_action('M')"/>&nbsp;
			<input type="button" class="button" id="saveBtn" value="목록" onclick="fn_action('L')"/>
		</td>
	</tr>
</table>
</form>
</div> 
