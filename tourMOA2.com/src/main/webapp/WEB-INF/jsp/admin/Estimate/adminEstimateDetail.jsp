<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- <script>
$(function(){
	$("#saveBtn").click(function(){
		
		alert("수정합니다.");
		
		$("#reply").text($(".note-codable + div").html());
		$("#result").val();
		
		//var formData = new FormData(document.getElementById("frm"));
		var param ="unq="+$("#unq").val()
			param +="&reply="+$("#reply").val()
			param +="&manager="+$("#manager").val()
			param +="&result="+$("#result").val();
		
		
		alert(param);
		
		$.ajax({
			type: 'POST',
			data: param,
			url: "<c:url value='/adminEstimateDetailUpdate.do' />",
			dataType: "json",
			
			processData: false,
			contentType: false,
			/* 처리되고나서 실행되는부분 */
			success: function (data){
				if(data.result == "ok"){
					alert("분류에 등록 됐습니다.");
					window.location.reload();
					opener.window.location.reload();
				}else{
					alert("저장에 실패");
				}
			},
			error: function (error){
				alert("error: " + error);
			}
		});
		
	});
});

$( document ).ready(function() {
	$('#summernote').summernote('codeview.toggle');
	var contentField1 = $("#reply").text();
	$('#summernote').summernote('code', contentField1);
	$('#summernote').summernote('codeview.toggle');
}
</script> -->

<script type="text/javascript">
function fn_save(){	
	
	$("#reply").text($(".note-codable + div").html());
	$("#result").val();
	
	//var formData = new FormData(document.getElementById("frm"));
	var param ="unq="+$("#unq").val()
		param +="&reply="+$("#reply").text()
		param +="&manager="+$("#manager").val()
		param +="&result="+$("input:radio[name='result']:checked").val();	
	
	$.ajax({
		type: 'POST',
		data: param,
		url: "<c:url value='/adminEstimateDetailUpdate.do' />",
		dataType: "json",
		
		/* processData: false,
		contentType: false, */
		/* 처리되고나서 실행되는부분 */
		success: function (data){
			if(data.cnt > 0){
				alert("답글이 등록 됐습니다.");
				window.location.reload();
				opener.window.location.reload();
			}else{
				alert("저장에 실패");
			}
		},
		error: function (error){
			alert("error: " + error);
		}
	});	
}



</script>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>견적서 수정</h1>
	
	
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminEstimateList.do'">목록</button>
		</div>
	</div>
	
	<form name="frm" id="frm">	
	<input type="hidden" name="unq" id="unq" value="${vo.unq}"/>
	<input type="hidden" name="manager" id="manager" value="관리자"/>
	<input type="hidden" name="reply" id="reply" value=""/>
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-6">
				${vo.title}
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">아이디</label>
			<div class="col-sm-2">
				<c:if test="${vo.userid eq 'undefined'}">비회원</c:if>
				<c:if test="${vo.userid ne 'undefined'}">${vo.userid}</c:if>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputLoc" class="col-sm-2 col-form-label">지역</label>
			<div class="col-sm-2">
				${vo.floc}
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">도시</label>
			<div class="col-sm-2">
				${vo.city}
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">기간</label>
			<div class="col-sm-2">
				${vo.sdate} ~ ${vo.edate}
			</div>
		</div>		
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">선호 항공사</label>
			<div class="col-sm-2">
				${vo.airline}
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">경유가능여부</label>
			<div class="col-sm-2">
				${vo.passage}
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">선호 숙박지</label>
			<div class="col-sm-10">
				${vo.stay} : ${vo.stayname}
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">요청 사항</label>
			<div class="col-sm-10">
				${vo.req}
			</div>
		</div>
		<c:if test="${vo.redate ne null}">
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">처리등록일자</label>
			<div class="col-sm-2">
				${vo.redate}
			</div>
		</div>
		</c:if>
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">처리 결과</label>
			<div class="col-sm-10">
				<input type="radio" name="result" id="result" value="" <c:if test="${vo.result eq null}">checked="checked"</c:if>> 미처리
				<input type="radio" name="result" id="result" value="O" <c:if test="${vo.result eq 'O'}">checked="checked"</c:if>> 처리완료
			</div>
		</div>
		
		<hr class="w-100" />
		
		<div class="form-group row">
			<label for="inputDetail" class="col-sm-2 col-form-label">답변하기</label>
			<div class="col-sm-10">
				<div class="form-control" id="summernote"></div>				
				<script>
					$('#summernote').summernote({
						height: 400,
						minHeight: null,
						maxHeight: null,
						placeholder: '답변내용',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea class="form-control" id="reply" name="reply" hidden>${vo.reply}</textarea>
			</div>
		</div>
		<script>
		$( document ).ready(function() {			
			$('#summernote').summernote('codeview.toggle');
			var contentField1 = $("textarea#reply").val();			
			$('#summernote').summernote('code', contentField1);
			$('#summernote').summernote('codeview.toggle');
		});	
		</script>
		
		<hr class="w-100" />
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<!-- <button type="button" class="btn btn-primary" id="saveBtn">등록하기</button> -->
				<input type="button" class="btn btn-primary" id="saveBtn" onclick="fn_save()" value="등록하기" />
			</div>
		</div>
		
	</form>	
    </main>