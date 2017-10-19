<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
$(function(){

	$("#saveBtn").click(function(){

		if($("#frm #title").val() == "") {
			alert("제목을 입력해주세요.");
			return false;
		}
		
		var form = new FormData(document.getElementById("frm"));

		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/adminOptionWriteSave.do' />", 
			dataType: "json",
			processData: false,
			contentType: false,
			success: function (data) {
				if(data.result = "ok") {
					alert("저장됐습니다.");
					location.href = "<c:url value='/adminOptionList.do' />";
				} else {
					alert("저장 실패");
				}
			},
			error: function (error) {
				alert("error : " + error);
			}
		});
		
		
		
	});
});
</script>

<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품 옵션 등록</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminOptionList.do'">목록</button>
		</div>
	</div>

	<form name="frm" id="frm" method="post" enctype="multipart/form-data">		
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
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">옵션 제목</label>
			<div class="col-sm-2">
				<input type="text" name="title" id="title" class="form-control" placeholder="제목" value="렌트카">
			</div>
			<!-- <div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" placeholder="영문" value="test">
			</div> -->
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">국가</label>
			<div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" placeholder="italy" value="italy">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">소요시간</label>
			<div class="col-sm-2">
				<input type="text" name="rtime" id="rtime" class="form-control" placeholder="소요시간" value="24시간">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">비용</label>
			<div class="col-sm-2">
				<input type="text" name="price" id="price" class="form-control" placeholder="비용" value="€50">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">비고</label>
			<div class='col-sm-10'>
				<textarea class="form-control" id="expl" name="expl" rows="3">비고내용 explain
detail</textarea>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">슬라이드 이미지</label>
			<div class="col-sm-2">
				<!-- <input type="file" class="form-control-file" id="exampleFormControlFile1" multiple> -->
				<input type="file" name="file1" size="70" />
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-primary" id="saveBtn">Submit</button>
			</div>
		</div>
		
	</form>
</main>