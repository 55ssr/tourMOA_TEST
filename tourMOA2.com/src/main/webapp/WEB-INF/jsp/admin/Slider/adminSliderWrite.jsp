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

		if($("#frm #code").val() == "") {
			alert("영문 입력해주세요.");
			return false;
		}
		
		var form = new FormData(document.getElementById("frm"));
		
		$.ajax({
			type: 'POST',
			data: form,
			url: "<c:url value='/adminSliderWriteSave.do' />",
			dataType: "json",
			processData: false,
			contentType: false,
			success: function (data) {
				if(data.result = "ok") {
					alert("저장됐습니다.");
					location.href = "<c:url value='/adminSliderList.do' />";
				} else {
					alert("저장 실패");
				}
			},
			error: function (error) {
				alert("error : " + error);
			}
		});
	});
	
	$("#confirm").click(function(){

		if($("#frm #code").val() == "") {
			alert("영문 입력해주세요.");
			return false;
		}
		
		$.ajax({
			type: 'POST',
			data: "code="+$("#code").val(),
			url: "<c:url value='/adminSliderConfirm.do' />",
			dataType: "json",
			success: function (data) {
				if(data.cnt > 0) {
					alert("중복된 코드가 있습니다.");
				} else {
					alert("사용 가능한 코드 입니다.");
					$("#saveBtn").removeAttr("disabled");
					$("#saveBtn").removeClass("btn-secondary");
					$("#saveBtn").addClass("btn-primary");
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
	<h1>슬라이더 등록</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminSliderList.do'">목록</button>
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
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">국가 추가</label>
			<div class="col-sm-2">
				<input type="text" name="name" id="name" class="form-control" placeholder="한글" value="테스트">
			</div>
			<div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" placeholder="영문" value="test">
			</div>
			<div class="col-sm-2">
				<button type="button" class="btn btn-primary" id="confirm">중복확인</button>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">슬라이드 이미지</label>
			<div class="col-sm-2">
				<input type="file" name="file1" class="form-control-file mb-2" />
				<input type="file" name="file2" class="form-control-file mb-2" />
				<input type="file" name="file3" class="form-control-file mb-2" />
				<input type="file" name="file4" class="form-control-file mb-2" />
				<input type="file" name="file5" class="form-control-file mb-2" />		
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-secondary" id="saveBtn" disabled>Submit</button>
			</div>
		</div>
		
	</form>
</main>