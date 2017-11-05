<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
				location.href = "<c:url value='/adminSliderList.do'/>";
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
		
		var loc = "<c:url value='/updateSlider.do' />";
		var msg = "수정";
		fn_ajax(loc,msg);
	});
	$("#delBtn").click(function(){
		if(confirm("삭제하시겠습니까?")) {
			var loc = "<c:url value='/deleteSlider.do' />";
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
				location.href = "<c:url value='/adminSliderList.do'/>";
			} else if(data.cnt > 0) {
				alert(msg + " 처리 되었습니다.");
				location.href = "<c:url value='/adminSliderList.do'/>";
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
	<h1>슬라이더 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminSliderList.do'">목록</button>
		</div>
	</div>
	
	<form name="frm" id="frm" method="post" enctype="multipart/form-data">		
		<input type="hidden" name="filename" id="filename"/>
		<!-- <div class="form-group row">
			<label for="inputGoodsType" class="col-sm-2 col-form-label">상품구분</label>
			<div class="col-sm-2">
				<select class="form-control" name="gubun" id="gubun">
					<option value="">-선택-</option>
					<option value="자유여행">자유여행</option>
					<option value="해외패키지">해외패키지</option>
				</select>
			</div>
		</div> -->
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">국가 추가</label>
			<div class="col-sm-2">
				<input type="text" name="name" id="name" class="form-control" placeholder="한글" value="${vo.name}" readOnly>
			</div>
			<div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" placeholder="영문" value="${vo.code}" readOnly>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">슬라이드 이미지</label>
			
			<c:if test="${vo.filename != null}">
				<c:set var="filename" value="${fn:split(vo.filename,'／')}" />				
				<c:forEach var="down" items="${filename}" varStatus="a">
					<div class="col-auto">
						<c:if test="${down != ''}">
							
							<div class="btn-group" role="group" aria-label="Basic example">
								<button type="button" class="btn btn-secondary" onclick="window.open(encodeURI('<c:url value='/downloadFile.do?'/>requestedFile=${down}&code=${vo.code}'))">${down}</button>
								<button type="button" class="btn btn-danger" onClick="fn_delFile('${vo.code}','${down}');">삭제</button>
							</div>
							
						</c:if>
					</div>
				</c:forEach>
			</c:if>
			
			<c:if test="${vo.filename == null}">
				파일없음
			</c:if>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-2"></div>
			<div class="col-sm-10">	
				<input type="file" name="file1" class="form-control-file mb-2" />
				<input type="file" name="file2" class="form-control-file mb-2" />
				<input type="file" name="file3" class="form-control-file mb-2" />
				<input type="file" name="file4" class="form-control-file mb-2" />
				<input type="file" name="file5" class="form-control-file mb-2" />		
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