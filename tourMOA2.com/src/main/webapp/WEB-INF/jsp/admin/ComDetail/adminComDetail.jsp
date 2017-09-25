<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>회사정보 수정</h1>
	
	<form>
	
		<div class="form-group row">
			<label for="inputComName" class="col-sm-2 col-form-label">상호명</label>
			<div class="col-sm-2">
				<input type="text" class="form-control form-control-lg" id="inputComName" placeholder="상호명">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputPresident" class="col-sm-2 col-form-label">대표자</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputPresident" placeholder="대표자">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputBnum" class="col-sm-2 col-form-label">사업자 등록번호</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputBnum" placeholder="사업자 등록번호">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputBnum" class="col-sm-2 col-form-label">대표번호</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputBnum" placeholder="대표번호">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
			<div class="col-sm-6">
				<div class="form-row align-items-center">
					<div class="col-auto">
						<label class="sr-only" for="inlineFormInput">Name</label>
						<input type="text" class="form-control mb-2 mb-sm-0" id="inlineFormInput" placeholder="email"></div>
					<div class="col-auto">
						<label class="sr-only" for="inlineFormInputGroup">Username</label>
						<div class="input-group mb-2 mb-sm-0">
							<div class="input-group-addon">@</div>
							<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="*.com">
					  </div>
					</div>
					<div class="col-auto">
						<div class="form-check mb-2 mb-sm-0">
						<select class="form-control" id="selectDirect">
							<option value="1">이메일 선택</option>
							<option value="1">naver.com</option>
							<option value="1">google.com</option>
							<option value="1">daum.net</option>
						</select>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputPostnum" class="col-sm-2 col-form-label">주소</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" id="inputPostnum" placeholder="우편번호">
			</div>
			<div class="col-sm-2">
				<button type="submit" class="btn btn-primary">우편번호찾기</button>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputAddr" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="inputAddr" placeholder="주소">
			</div>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="inputAddrDetail" placeholder="상세주소">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">SNS 링크</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="inputName" placeholder="Facebook">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="inputName" placeholder="twitter">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="inputName" placeholder="Kakao">
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