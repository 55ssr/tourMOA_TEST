<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsList.do'">목록</button>
		</div>
	</div>
	
	<form>
	
		<div class="form-group row">
			<label for="inputGoodsType" class="col-sm-2 col-form-label">상품구분</label>
			<div class="col-sm-2">
				<select class="form-control">
					<option>자유여행</option>
					<option>해외패키지</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">상품번호</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputSimpleExp" placeholder="상품번호">
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">상품명</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-lg" id="inputTitle" placeholder="상품명">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">지역</label>
			<div class="col-sm-2">
				<select class="form-control">
					<option>서유럽</option>
					<option>동유럽</option>
					<option>동남아</option>
					<option>동아시아</option>
					<option>미주</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">도시</label>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" id="inputCity" placeholder="도시 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>	
		</div>
		
		<div class="form-group row">
			<label for="inputCitys" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputCitys" placeholder="오사카,도쿄,오키나와,...">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">간략정보</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputSimpleExp" placeholder="간략정보">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="usingAirline" class="col-sm-2 col-form-label">이용항공</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="usingAirline" placeholder="이용항공">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="priceAdult" class="col-sm-2 col-form-label">비용</label>
			
			<div class="col-sm-3 input-group">
				<input type="text" class="form-control" id="priceAdult" aria-label="Amount (to the nearest dollar)" placeholder="성인가">
				<span class="input-group-addon">￦</span>
			</div>
			
			<div class="col-sm-3 input-group">
				<input type="text" class="form-control" id="priceChild" aria-label="Amount (to the nearest dollar)" placeholder="아동가">
				<span class="input-group-addon">￦</span>
			</div>
			
			<div class="col-sm-3 input-group">
				<input type="text" class="form-control" id="priceInfant" aria-label="Amount (to the nearest dollar)" placeholder="유아가">
				<span class="input-group-addon">￦</span>
			</div>
			
		</div>
		
		<div class="form-group row">
			<label for="inputDetail" class="col-sm-2 col-form-label">상세정보</label>
			<div class="col-sm-10">
				<!-- <textarea class="form-control" id="inputDetail" rows="6"></textarea> -->
				<div class="form-control" id="summernote"></div>
				<script>
					$('#summernote').summernote({
						height: 400,
						minHeight: null,
						maxHeight: null,
						placeholder: '상세정보',
						tabsize: 2,
						height: 100,
						lang: 'ko-KR'
					});
				</script>
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
			<label for="selectDirect" class="col-sm-2 col-form-label">직항여부</label>
			<div class="col-sm-2">
				<select class="form-control" id="selectDirect">
					<option selected>직항</option>
					<option value="1">경유</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectWaypoint" class="col-sm-2 col-form-label">경유지</label>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" id="selectWaypoint" placeholder="경유지 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>	
		</div>
				
		<div class="form-group row">
			<label for="selectWaypoints" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="selectWaypoints" placeholder="상해,뭄바이">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">사용여부</label>
			<div class="col-sm-2">
				<select class="form-control" id="selectUse">
					<option selected>사용</option>
					<option value="1">중지</option>
				</select>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="submit" class="btn btn-primary">Submit</button>
				<button type="submit" class="btn btn-danger">Delete</button>
			</div>
		</div>
		
	</form>
	
    </main>