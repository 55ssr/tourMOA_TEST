<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>

$("input#searchKeyword").keydown(function (key) {
    if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
    	fn_search();	
    }
});

function fn_search() {
	alert("검색 시작");
	if( $("input#searchKeyword").val() == "" ) {
		alert("검색어를 입력해주세요.");
		return false;
	}
	
	var param = "searchCondition="+$("#searchCondition").val()
		param+= "&searchKeyword="+$("#searchKeyword").val();
	
	alert(param);
	
	$.ajax({
		type: "POST",
		data: param,
		url: "<c:url value='/adminGoodsCommSearch.do' />",
		dataType: "json",
		/* processData: false,
		contentType: false, */
		success: function (data) {
			if(data.result.length > 0) {
				alert("검색완료");
				
			} else {
				alert("저장 실패");
			}
		},
		error: function (error) {
			alert("error : " + error);
		}
	});
}


$(function(){
		
	$("#saveBtn").click(function(){
		$("#content").text($("label[for=content]+div .note-codable + div").html());
		
		if( $("#frm #gtitle").val() == "" || $("#frm #ctitle").val() == "" ) {
			alert("제목을 입력해주세요.");
			$("#frm #gtitle").focus();
			return false;
		}
		
		/* var form = new FormData(document.getElementById("frm")); */
		
		var param = "gubun=pkg"
			param+= "&author="+$("#author").val()
			param+= "&gtitle="+$("#gtitle").val()
			param+= "&ctitle="+$("#ctitle").val()
			param+= "&content="+$("#content").val()
			param+= "&pid=102";
		
		alert(param);
		
		$.ajax({
			type: "POST",
			data: param,
			url: "<c:url value='/adminGoodsCommWriteSave.do' />",
			dataType: "json",
			/* processData: false,
			contentType: false, */
			success: function (data) {
				if(data.result == "ok") {
					alert("저장됐습니다.");
					location.href = "<c:url value='/adminGoodsCommList.do' />";
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
	<h1>상품평 등록</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsCommList.do'">목록</button>
		</div>
	</div>
	
	
	<form id="searchFrm" name="searchFrm">
		<div class="form-group row">
			<label for="inputGoodsTitle" class="col-sm-2 col-form-label">상품명 검색</label>
			<div class="col-sm-8">
				<%-- <c:forEach var="rs" items="${resultList}">-<br></c:forEach> --%>
				<input type="hidden" class="form-control form-control-lg" id="searchCondition" name="searchCondition" value="title" />
				<input type="text" class="form-control form-control-lg" id="searchKeyword" name="searchKeyword" placeholder="상품명 검색" />
			</div>
			<div class="col-sm-2">
				<button type="button" class="btn btn-primary btn-lg w-100" onclick="fn_search()">검색</button>
			</div>
		</div>
	</form>
	
	<form name="frm" id="frm">
		<input type="hidden" id="gubun" name="gubun" />
		<div class="form-group row">
			<label for="inputGoodsTitle" class="col-sm-2 col-form-label">상품명</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-lg" id="gtitle" name="gtitle" placeholder="상품명">
			</div>
		</div>
				
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="ctitle" name="ctitle" placeholder="제목">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">작성자</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="author" name="author" placeholder="작성자">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="content" class="col-sm-2 col-form-label">상세내용</label>
			<div class="col-sm-10">
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
				<textarea id="content" name="content" hidden></textarea>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-primary" id="saveBtn">Submit</button>
			</div>
		</div>
		
	</form>
	
</main>
<script>
$(function(){
	$("#gtitle").val("gtitle");
	$("#ctitle").val("ctitle");
	$("#author").val("author");
});
</script>