<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품평 등록</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsCommList.do'">목록</button>
		</div>
	</div>
	
	<form>
		
		<div class="form-group row">
			<label for="inputGoodsTitle" class="col-sm-2 col-form-label">상품명</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-lg" id="inputGoodsTitle" placeholder="상품명">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputGoodsNo" class="col-sm-2 col-form-label">상품번호</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputGoodsNo" placeholder="상품번호">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputTitle" placeholder="제목">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputDetail" class="col-sm-2 col-form-label">상세내용</label>
			<div class="col-sm-10">
				<!-- <textarea class="form-control" id="inputDetail" rows="6"></textarea> -->
				<div class="form-control" id="summernote"></div>
				<script>
					$('#summernote').summernote({
						height: 400,
						minHeight: null,
						maxHeight: null,
						placeholder: '상세내용',
						tabsize: 2,
						height: 100,
						lang: 'ko-KR'
					});
				</script>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
		
	</form>
	
    </main>