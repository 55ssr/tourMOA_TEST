<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>설문조사 등록</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminResearchList.do'">목록</button>
		</div>
	</div>
	
	<form>
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-lg" id="inputTitle" placeholder="제목">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputDetailList1" class="col-sm-2 col-form-label">항목</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputDetailList1" placeholder="항목">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputDetailList2" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputDetailList2" placeholder="항목">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputDetailList3" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputDetailList3" placeholder="항목">
			</div>
		</div>
		
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">시작일</label>
			<div class='col-sm-2'>
				<div class='input-group date' id='datetimepicker2'>
					<input type='text' class="form-control" />
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
				    </span>
				</div>
			</div>
			<script type="text/javascript">
				$(function () {
					$('#datetimepicker2').datetimepicker({
						locale: 'ko'
					});
				});
			</script>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">종료일</label>
			<div class='col-sm-2'>
				<div class='input-group date' id='datetimepicker2'>
					<input type='text' class="form-control" />
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
				    </span>
				</div>
			</div>
			<script type="text/javascript">
				$(function () {
					$('#datetimepicker2').datetimepicker({
						locale: 'ko'
					});
				});
			</script>
		</div>
		
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">사용여부</label>
			<div class="col-sm-10">
				<select class="custom-select" id="selectUse">
					<option selected>사용</option>
					<option value="1">중지</option>
				</select>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="submit" class="btn btn-danger">삭제</button>
			</div>
		</div>
		
		
	</form>
	
    </main>