<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품 등록</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsList.do'">목록</button>
		</div>
	</div>
	<script type="text/javascript">
	$(function(){
		
		$("#saveBtn").click(function(){
			
			if($("#frm #title").val() == "") {
				alert("제목을 입력해주세요.");
				$("#frm #title").focus();
				return false;
			}
			
			var form = new FormData(document.getElementById("frm"));	
			
			/* var gender = $(":input:radio[id=gender]:checked").val(); */
			
			var param = "title="+$("#title").val()
				/* param +="&name="+$("#name").val()
				param +="&pwd="+$("#pwd").val()
				param +="&gender="+gender
				param +="&birthday="+$("#birthday").val()
				param +="&phone="+$("#phone").val()
				param +="&postnum="+$("#postnum").val()
				param +="&addr1="+$("#addr1").val()
				param +="&addr2="+$("#addr2").val() */;
			
			alert(param);
			
			var form = new FormData(document.getElementById("frm"));
			$.ajax({
				type: 'POST',
				data: $("#frm").serialize(),
				url: "<c:url value='/adminGoodsWriteSave.do' />",
				dataType: "json",
				processData: false,
				contentType: false,
				success: function (data) {
					if(data.result == "ok") {
						alert("저장됐습니다.");
						location.href = "<c:url value='/adminGoodsList.do' />";
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
	<form name="frm" id="frm">
		<input type="hidden" name="unq" value="" />
		<div class="form-group row">
			<label for="inputGoodsType" class="col-sm-2 col-form-label">상품구분</label>
			<div class="col-sm-2">
				<select class="form-control" name="gubun" id="gubun">
					<option value="자유여행">자유여행</option>
					<option value="해외패키지">해외패키지</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">상품번호</label>
			<div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" placeholder="상품번호">
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">상품명</label>
			<div class="col-sm-10">
				<input type="text" name="title" id="title" class="form-control form-control-lg" placeholder="상품명">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">지역</label>
			<div class="col-sm-2">
				<select class="form-control" name="loction" id="location">
					<option value="서유럽">서유럽</option>
					<option value="동유럽">동유럽</option>
					<option value="동남아">동남아</option>
					<option value="동아시아">동아시아</option>
					<option value="미주">미주</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">국가</label>
			<div class="col-sm-2">
				<select class="form-control" name="nation" id="nation">
					<option value="영국">영국</option>
					<option value="프랑스">프랑스</option>
					<option value="이탈리아">이탈리아</option>
					<option value="독일">독일</option>
					<option value="스페인">스페인</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">도시</label>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" placeholder="도시 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>	
		</div>
		
		<div class="form-group row">
			<label for="inputCitys" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="text" name="city" id="city" class="form-control" placeholder="오사카,도쿄,오키나와,...">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">간략정보</label>
			<div class="col-sm-10">
				<input type="text" name="schd" id="schd" class="form-control" placeholder="ex)인천-보라카이-인천">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="usingAirline" class="col-sm-2 col-form-label">이용항공</label>
			<div class="col-sm-10">
				<input type="text" name="airline" id="airline" class="form-control" placeholder="이용항공">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="priceAdult" class="col-sm-2 col-form-label">비용</label>
			
			<div class="col-sm-3 input-group">
				<input type="text" name="priceAd" id="priceAd" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="성인가">
				<span class="input-group-addon">￦</span>
			</div>
			
			<div class="col-sm-3 input-group">
				<input type="text" name="priceCh" id="priceCh" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="아동가">
				<span class="input-group-addon">￦</span>
			</div>
			
			<div class="col-sm-3 input-group">
				<input type="text" name="priceIn" id="priceIn" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="유아가">
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
					<input type='text' name="sdate" id="sdate" class="form-control" />
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
				    </span>
				</div>
			</div>
			<!-- <script type="text/javascript">
				$(function () {
					$('#datetimepicker2').datetimepicker({
						locale: 'ko'
					});
				});
			</script> -->
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">종료일</label>
			<div class='col-sm-2'>
				<div class='input-group date' id='datetimepicker2'>
					<input type='text' name="edate" id="edate" class="form-control" />
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
				    </span>
				</div>
			</div>
			<!-- <script type="text/javascript">
				$(function () {
					$('#datetimepicker2').datetimepicker({
						locale: 'ko'
					});
				});
			</script> -->
		</div>
		
		<div class="form-group row">
			<label for="priceAdult" class="col-sm-2 col-form-label">여행기간</label>
			
			<div class="col-sm-3 input-group">
				<input type="text" name="period1" id="period1" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="성인가">
				<span class="input-group-addon">박</span>
			</div>
			
			<div class="col-sm-3 input-group">
				<input type="text" name="period2" id="period2" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="아동가">
				<span class="input-group-addon">일</span>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectDirect" class="col-sm-2 col-form-label">직항여부</label>
			<div class="col-sm-2">
				<select class="form-control" name="via" id="via">
					<option selected>직항</option>
					<option value="1">경유</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectWaypoint" class="col-sm-2 col-form-label">경유지</label>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" placeholder="경유지 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>	
		</div>
				
		<div class="form-group row">
			<label for="selectWaypoints" class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="vias" id="vias" placeholder="상해,뭄바이">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">사용여부</label>
			<div class="col-sm-2">
				<select class="form-control" name="use" id="use">
					<option selected>사용</option>
					<option value="1">중지</option>
				</select>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-primary" id="saveBtn">Submit</button>
			</div>
		</div>
		
	</form>
	
    </main>