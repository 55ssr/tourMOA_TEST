<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
$(document).ready(function(){
	$("#modBtn").click(function(){
		if ( $("#frm #gtitle").val() == "" ) {
			alert("상품 제목을 입력해주세요");
			$("#gtitle").focus();
			return false;
		}
		
	});
		
});
</script>
<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품평 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsCommList.do'">목록</button>
		</div>
	</div>
	
	<form name="frm" id="frm">
		<input type="hidden" name="unq" id="unq" />
		<div class="form-group row">
			<label for="inputGoodsTitle" class="col-sm-2 col-form-label">상품명</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-lg" id="gtitle" name="gtitle" 
				placeholder="상품명" value="${vo.gtitle}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="ctitle" name="ctitle" 
				placeholder="제목" value="${vo.ctitle}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">작성자</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="author" name="author" 
				placeholder="작성자" value="${vo.author}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputDetail" class="col-sm-2 col-form-label">상세내용</label>
			<div class="col-sm-10">
				<!-- <textarea class="form-control" id="inputDetail" rows="6"></textarea> -->
				<div class="form-control" id="summernote"></div>
				<script>
					$('#summernote').summernote({
						height: 300,
						minHeight: null,
						maxHeight: null,
						placeholder: '상세내용',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea name="content" id="content" hidden>${vo.content}</textarea>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-primary" id="modBtn">Modify</button>
				<button type="button" class="btn btn-danger" id="delBtn">Delete</button>
			</div>
		</div>
		
	</form>

</main>
<script>
$(document).ready(function(){
	var contentField = $("#content").text();
	$('#summernote').summernote('code', contentField);
});
</script>