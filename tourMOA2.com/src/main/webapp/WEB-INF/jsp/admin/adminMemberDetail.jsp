<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>회원 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminMemberList.do'">목록</button>
		</div>
	</div>
	
	<form>
	
		<div class="form-group row">
			<label for="inputUserId" class="col-sm-2 col-form-label">아이디</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputUserId" placeholder="아이디">
				<small id="passwordHelpInline" class="text-muted">
					6자이상 14자 이하
				</small>
			</div>
			<div class="col-sm-2">
				<button type="submit" class="btn btn-primary">아이디 중복확인</button>
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
				<small id="passwordHelpInline" class="text-muted">
					8자이상 20자 이하
				</small>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">이름</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputName" placeholder="이름">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label">성별</label>
			<div class="col-sm-2">

				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="M"> 남
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="F"> 여
					</label>
				</div>

			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">직업</label>
			<div class="col-sm-2">
				<select class="form-control">
					<option>프리랜서</option>
					<option>교사</option>
					<option>은행원</option>
				</select>
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
			<label for="inputName" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-2">

				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="M"> 수신동의
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="F"> 수신거절
					</label>
				</div>

			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputPhone" class="col-sm-2 col-form-label">휴대폰</label>
			<div class="col-sm-6">
				<div class="form-row align-items-center">
					<div class="col-auto">
						<select class="form-control">
							<option>010</option>
							<option>011</option>
							<option>012</option>
						</select>
					</div>
					<div class="col-auto">-</div>
					
					<div class="col-auto">
						<input type="text" class="form-control" id="inputName">
					</div>
					
					<div class="col-auto">-</div>
					
					<div class="col-auto">
						<input type="text" class="form-control" id="inputName">
					</div>
					
					<div class="col-sm-2">
						<button type="submit" class="btn btn-primary">휴대폰 인증</button>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputName" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-2">

				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="M"> 수신동의
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="F"> 수신거절
					</label>
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
			<label for="inputBirth" class="col-sm-2 col-form-label">생일</label>
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
			<label for="inputMarried" class="col-sm-2 col-form-label">결혼여부</label>
			<div class="col-sm-3">

				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="N"> 미혼
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Y"> 기혼
					</label>
				</div>

			</div>
			<div class='col-sm-1'>결혼기념일</div>
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
		<hr class="w-100" />
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="submit" class="btn btn-primary">Modify</button>
				<button type="submit" class="btn btn-danger">Delete</button>
			</div>
		</div>
		
	</form>
	
    </main>