<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>견적서 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminMemberList.do'">목록</button>
		</div>
	</div>
	
	<form>
	
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-6">
				유럽 여행 견적 내주세요
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">아이디</label>
			<div class="col-sm-2">
				<a href="">MyID</a>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputLoc" class="col-sm-2 col-form-label">지역</label>
			<div class="col-sm-2">
				이탈리아, 프랑스
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">도시</label>
			<div class="col-sm-2">
				밀라노, 파리
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">기간</label>
			<div class="col-sm-2">
				4박 5일
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">원하는 날짜</label>
			<div class="col-sm-2">
				2017.10.1 ~ 2017.11.5
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">선호 항공사</label>
			<div class="col-sm-2">
				대한항공
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">경유가능여부</label>
			<div class="col-sm-2">
				가능
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">선호 숙박지</label>
			<div class="col-sm-2">
				호텔, 리조트
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">추가 사항</label>
			<div class="col-sm-6">
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			</div>
		</div>
		
		<hr class="w-100" />
		
		<div class="form-group row">
			<label for="inputDetail" class="col-sm-2 col-form-label">답변하기</label>
			<div class="col-sm-10">
				<!-- <textarea class="form-control" id="inputDetail" rows="6"></textarea> -->
				<div class="form-control" id="summernote"></div>
				<script>
					$('#summernote').summernote({
						height: 400,
						minHeight: null,
						maxHeight: null,
						placeholder: '답변내용',
						tabsize: 2,
						height: 100,
						lang: 'ko-KR'
					});
				</script>
			</div>
		</div>
		
		<hr class="w-100" />
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
		
	</form>
	
    </main>