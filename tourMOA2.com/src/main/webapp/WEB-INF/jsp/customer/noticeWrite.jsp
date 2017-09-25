<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 등록하기</title>
</head>
<script language="javascript" type="text/javascript">
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
		
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/noticeSave.do' />",
			dataType: "json",
			processData: false,
			contentType: false,
			
			/* 처리되고나서 실행되는부분 */
			success: function (data){
				if(data.cnt > 0){
					location.href = "<c:url value='/noticeList.do'/>";
					alert("저장되었습니다.");
				}else{
					alert("저장에 실패");
				}
			},
			error: function (error){
				alert("error: " + error);
			}
		});
	}else if(e=="L"){
		f.action="dataBoardList.do";
	}
	f.submit();
}
</script>
<body>
<div class="middle">
<form name="frm" id="frm" enctype="multipart/form-data">
<section id="content">
<table width="60%" border="1">
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
			상시표시<input type="radio" name="all_view" id="all_view" value="Y"/>
			상시표시안함<input type="radio" name="all_view" id="all_view" value="N"/>
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
</section> 
</body>
</html>