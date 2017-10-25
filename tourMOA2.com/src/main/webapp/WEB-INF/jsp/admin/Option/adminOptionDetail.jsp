<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
function fn_delFile(a,b) {
	document.frm.filename.value=b;
	var form = new FormData(document.getElementById("frm"));
	
	$.ajax({
		type: 'POST',
		data: form,
		url: "<c:url value='/updateFileDelete.do' />",
		dataType: "json",
		processData: false,
		contentType: false,
		success: function (data) {
			if(data.cnt > 0) {
				alert("삭제 처리 되었습니다.");
				$("div#inputBox").hide();
				$("input[type=file]").show();
			} else {
				alert(msg + " 처리 실패");
			}
		},
		error: function (error) {
			alert("error : " + error);
		}
	});
}

$(function(){
	$("#modBtn").click(function(){
		/* 에디터의 내용을 hidden textarea 에 담는다 */
		var expl = $(".note-codable + div").html();
		$("#expl").text(expl);
		
		var loc = "<c:url value='/updateOption.do' />";
		var msg = "수정";
		fn_ajax(loc,msg);
	});
	$("#delBtn").click(function(){
		if(confirm("삭제하시겠습니까?")) {
			var loc = "<c:url value='/deleteOption.do' />";
			var msg = "삭제";
			fn_ajax(loc,msg);
		}
	});
});

function fn_ajax(loc,msg) {
	var form = new FormData(document.getElementById("frm"));
	$.ajax({
		type: 'POST',
		data: form,
		url: loc,
		dataType: "json",
		processData: false,
		contentType: false,
		success: function (data) {
			if(data.cntUpdate > 0) {
				alert(msg + " 처리 되었습니다.");
				location.href = "<c:url value='/adminOptionList.do'/>";
			} else if(data.cnt > 0) {
				alert(msg + " 처리 되었습니다.");
				location.href = "<c:url value='/adminOptionList.do'/>";
			} else {
				alert(msg + " 처리 실패");
			}
		},
		error: function (error) {
			alert("error : " + error);
		}
	});
}

</script>

<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품 옵션 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminOptionList.do'">목록</button>
		</div>
	</div>

	<form name="frm" id="frm" method="post" enctype="multipart/form-data">		
		<input type="hidden" name="filename" id="filename"/>
		<input type="hidden" name="unq" id="unq" value="${vo.unq}" />
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">옵션 제목</label>
			<div class="col-sm-2">
				<input type="text" name="title" id="title" class="form-control" placeholder="제목" value="${vo.title}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">국가</label>
			<div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" placeholder="italy" value="${vo.code}" readOnly>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">소요시간</label>
			<div class="col-sm-2">
				<input type="text" name="rtime" id="rtime" class="form-control" placeholder="소요시간" value="${vo.rtime}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">비용</label>
			<div class="col-sm-2">
				<input type="text" name="pay" id="pay" class="form-control" placeholder="비용" value="${vo.pay}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">비고</label>
			<div class='col-sm-10'>
			
				<div class="form-control" id="summernote"></div>
				<script>
					$('#summernote').summernote({
						height: 400,
						minHeight: null,
						maxHeight: null,
						placeholder: '비고',
						tabsize: 2,
						lang: 'ko-KR'
					});
					
					/* 페이지가 열릴 때 textarea에 담긴 detail1 값을 에디터로 옮김 */
					$( document ).ready(function() {
						/* 에디터 html모드 활성화 */
						$('#summernote').summernote('codeview.toggle');
						var contentField = $("#expl").text();
						$('#summernote').summernote('code', contentField);
						/* 에디터 html모드 비활성화 */
						$('#summernote').summernote('codeview.toggle');
					});
				</script>
				
				<textarea class="form-control" id="expl" name="expl" rows="3" hidden>${vo.expl}</textarea>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputImage" class="col-sm-2 col-form-label">이미지 파일</label>
			<div class="col-sm-2" id="inputBox">
				
				<c:if test="${vo.filename != null}">
				<div class="btn-group" role="group" aria-label="Basic example">
					<button type="button" class="btn btn-secondary" onclick="window.open(encodeURI('<c:url value='/downloadFile.do?'/>requestedFile=${vo.filename}&code=${vo.code}/opt'))">${vo.filename}</button>
					<button type="button" class="btn btn-danger" onClick="fn_delFile('${vo.unq}','${vo.filename}');">삭제</button>
				</div>
				</c:if>
				<c:if test="${vo.filename == null}">
					파일없음
				</c:if>
				
			</div>
			<div class="col-sm-2">
				<input type="file" name="file1" class="form-control-file mb-2" style="display:none" />
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-primary" id="modBtn">수정</button>
				<button type="button" class="btn btn-danger" id="delBtn">삭제</button>
			</div>
		</div>
		
	</form>
</main>