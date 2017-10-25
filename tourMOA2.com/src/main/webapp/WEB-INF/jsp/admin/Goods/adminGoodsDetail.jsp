<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:parseDate var="parsedSdate" value="${vo.sdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
<fmt:parseDate var="parsedEdate" value="${vo.edate}" pattern="yyyy-MM-dd HH:mm:ss"/>
<fmt:parseDate var="parsedSAdate" value="${vo.sadate}" pattern="yyyy-MM-dd HH:mm:ss"/>
<fmt:parseDate var="parsedEAdate" value="${vo.eadate}" pattern="yyyy-MM-dd HH:mm:ss"/>

	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품 수정</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsList.do'">목록</button>
		</div>
	</div>
	
	<script> //도시 추가 인풋창 누적 하기	
	$(document).ready(function(){
	    $("input#addCity").keydown(function (key) {
	        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
	        	fn_add();
	        }
	    });
	    $("input#viaSelect").keydown(function (key) {
	        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
	        	fn_add2();
	        }
	    });
	});
	function fn_add() {
		var addCity = document.frm.addCity.value;
		document.frm.addCity.value = "";
		if (document.frm.city.value != "") document.frm.city.value += ",";  
		document.frm.city.value += addCity;
	}
	function fn_add2() {
		var viaSelect = document.frm.viaSelect.value;
		document.frm.viaSelect.value = "";
		if (document.frm.vias.value != "") document.frm.vias.value += ",";  
		document.frm.vias.value += viaSelect;
	}
	</script>
	
	<script type="text/javascript">
	$(function(){
		$("#delBtn").click(function(){
			var unq = $("#unq").val();
			$.ajax({
				type: "POST",
				data: "unq="+unq,
				url: "<c:url value='/adminGoodsDelete.do' />",
				dataType: "json",
				processData: false,
				success: function (data) {
					if(data.cnt > 0) {
						alert("삭제됐습니다.");
						location.href = "<c:url value='/adminGoodsList.do' />";
					} else {
						alert("삭제 실패");
					}
				},
				error: function (error) {
					alert("error : " + error);
				}
			});
		});
	});
	
	$(function(){
		
		$("#saveBtn").click(function(){
			
			/* 1박 + 2일 = 1박 2일 */
			var period = $("#period1").val();
			period += "박 ";
			period += $("#period2").val();
			period += "일";
			$("#period").val(period);
			
			/* 에디터의 내용을 hidden textarea 에 담는다 
			dinfo, incinfo, nincinfo, ref, daily
			*/
			$("#dinfo").text($("label[for=dinfo]+div .note-codable + div").html());
			$("#incinfo").text($("label[for=incinfo]+div .note-codable + div").html());
			$("#nincinfo").text($("label[for=nincinfo]+div .note-codable + div").html());
			$("#ref").text($("label[for=ref]+div .note-codable + div").html());
			$("#daily").text($("label[for=daily]+div .note-codable + div").html());
			
			/* 경유여부 Y(직항) 일때 경유지 내용을 적었더라도 값 변경 */
			if ( $("#via option[value=Y]").prop("selected") ) {
				$("#vias").val(null);
				}
			
			if($("#frm #title").val() == "") {
				alert("제목을 입력해주세요.");
				$("#frm #title").focus();
				return false;
			}
			
			/* price 타입이 number 이므로 "" 이 들어가면 안됨 0이라도 넣어야 함 */
			if($("#frm #price").val() == "") {
				alert("비용을 입력해주세요.");
				$("#frm #price").focus();
				return false;
			}
			if($("#frm #pricech").val() == "") {
				alert("아동가를 입력해주세요.");
				$("#frm #pricech").focus();
				return false;
			}
			if($("#frm #pricein").val() == "") {
				alert("유아가를 입력해주세요.");
				$("#frm #pricein").focus();
				return false;
			}
			if($("#frm #fuel").val() == "") {
				alert("유류할증료를 입력해주세요.");
				$("#frm #fuel").focus();
				return false;
			}
			
			
			/* var gender = $(":input:radio[id=gender]:checked").val(); */
			
			/*
			price 컬럼에 0 값을 넣기 위해서..
			if ($("#price").val() == "") {
				$("#price").val("0");
			}
			if ($("#pricech").val() == "") {
				$("#pricech").val("0");
			}
			if ($("#pricein").val() == "") {
				$("#pricein").val("0");
			} */
			
		var param ="unq="+$("#unq").val()
			param+="&price="+$("#price").val()
			param+="&pricech="+$("#pricech").val()
			param+="&pricein="+$("#pricein").val()
			param+="&fuel="+$("#fuel").val()
			param+="&person="+gfnRemoveComma($("#person").val())
			param+="&rem="+$("#rem").val()
			param+="&minp="+$("#minp").val()
			param+="&shop="+$("#shop").val()
			param+="&title="+$("#title").val()
			param+="&gubun="+$("#gubun").val()
			param+="&nation="+$("#nation").val()
			param+="&city="+$("#city").val()
			param+="&sdate="+$("input:hidden[name='sdate']").val()
			param+="&edate="+$("input:hidden[name='edate']").val()
			param+="&period="+$("#period").val()
			param+="&schd="+$("#schd").val()
			param+="&detail1="+$("#detail1").val()
			param+="&detail2="
			param+="&airline="+$("#airline").val()
			param+="&code="+$("#code").val()
			param+="&period1="+$("#period1").val()
			param+="&period2="+$("#period2").val()
			param+="&via="+$("#via").val()
			param+="&vias="+$("#vias").val()
			param+="&use="+$("#use").val()
			param+="&location="+$("#location").val()
			param+="&rdate="+$("#rdate").val()
			param+="&fno="+$("#fno").val()
			param+="&sadate="+$("input:hidden[name='sadate']").val()
			param+="&eadate="+$("input:hidden[name='eadate']").val()
			param+="&finfo="
			param+="&dinfo="+$("#dinfo").val()
			param+="&incinfo="+$("#incinfo").val()
			param+="&nincinfo="+$("#nincinfo").val()
			param+="&ref="+$("#ref").val()
			param+="&opt="+$("#opt").val()
			param+="&daily="+$("#daily").val();
			
			alert(param);
			
			var form = new FormData(document.getElementById("frm"));
			
			
			$.ajax({
				type: "POST",
				data: param,
				url: "<c:url value='/adminGoodsUpdate.do' />",
				dataType: "json",
				processData: false,
				success: function (data) {
					if(data.cnt > 0) {
						alert("수정됐습니다.");
						location.href = "<c:url value='/adminGoodsList.do' />";
					} else {
						alert("수정 실패");
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
	<%-- <form name="frm" id="frm" method="post" enctype="multipart/form-data"> --%>
		<input type="hidden" name="unq" id="unq" value="${vo.unq}" />
		<input type="hidden" name="unq" value="" />
		<div class="form-group row">
			<label for="inputGoodsType" class="col-sm-2 col-form-label">상품구분</label>
			<div class="col-sm-2">
				<select class="form-control" name="gubun" id="gubun">
					<option value="">-선택-</option>
					<option value="pkg">해외패키지</option>
					<option value="fit">자유여행</option>
				</select>
				<script>
				var $gubun = "${vo.gubun}";
				$("#gubun option[value="+$gubun+"]").attr("selected", true);
				</script>
			</div>
			
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" placeholder="구분 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">상품번호</label>
			<div class="col-sm-2">
				<input type="text" name="code" id="code" class="form-control" value="${vo.code}">
			</div>
		</div>
	
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">상품명</label>
			<div class="col-sm-10">
				<input type="text" name="title" id="title" class="form-control form-control-lg" value="${vo.title}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">지역</label>
			<div class="col-sm-2">
				<select class="form-control" name="location" id="location">
					<option value="">-선택-</option>
					<option value="weurope">서유럽</option>
					<option value="eeurope">동유럽</option>
					<option value="enasia">동남아</option>
					<option value="easia">동아시아</option>
					<option value="namerica">북미</option>
				</select>
				<script>
				var $location = "${vo.location}";
				$("#location option[value="+$location+"]").attr("selected", true);
				</script>
			</div>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" placeholder="지역 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputLocation" class="col-sm-2 col-form-label">국가</label>
			<div class="col-sm-2">
				<select class="form-control" name="nation" id="nation">
					<option value="">-선택-</option>
					<option value="uk">영국</option>
					<option value="france">프랑스</option>
					<option value="italy">이탈리아</option>
					<option value="germany">독일</option>
					<option value="spain">스페인</option>
					<option value="japan">일본</option>
					<option value="china">중국</option>
					<option value="usa">미국</option>
				</select>
				<script>
				var $nation = "${vo.nation}";
				$("#nation option[value="+$nation+"]").attr("selected", true);
				</script>
			</div>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" placeholder="국가 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary">+</button>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputCity" class="col-sm-2 col-form-label">도시</label>
			<div class="btn-group col-sm-2" role="group" aria-label="First group">
				<input type="text" class="form-control rounded-0 rounded-left" id="addCity" placeholder="도시 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2">
				<button type="button" class="btn btn-primary" onclick="fn_add()">+</button>
			</div>
			<div class="col-sm-8">
				<input type="text" name="city" id="city" class="form-control"  value="${vo.city}">
			</div>	
		</div>
		
		<div class="form-group row">
			<label for="inputSimpleExp" class="col-sm-2 col-form-label">방문도시</label>
			<div class="col-sm-10">
				<input type="text" name="schd" id="schd" class="form-control"  value="${vo.schd}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="usingAirline" class="col-sm-2 col-form-label">이용항공</label>
			<div class="col-sm-2">
				<input type="text" name="airline" id="airline" class="form-control"  value="${vo.airline}">
			</div>
			<div class="col-sm-2">
				<input type="text" name="fno" id="fno" class="form-control"  value="${vo.fno}">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="priceAdult" class="col-sm-2 col-form-label">인원</label>
			<div class="col-sm-2">
				<div class="input-group">
					<input type="text" name="person" id="person" class="form-control pressEvent" aria-label="Amount (to the nearest dollar)"
					 placeholder="총 인원"  value="${vo.person}" />
					<span class="input-group-addon">명</span>
				</div>
			</div>
			
			<div class="col-sm-2">
				<div class="input-group">
					<input type="text" name="rem" id="rem" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="남은 인원"  value="${vo.rem}" />
					<span class="input-group-addon">명</span>
				</div>
			</div>
			
			<div class="col-sm-2">
				<div class="input-group">
					<input type="text" name="minp" id="minp" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="출발가능 인원"  value="${vo.minp}" />
					<span class="input-group-addon">명</span>
				</div>
			</div>
			
		</div>
		
		
		<div class="form-group row">
			<label for="priceAdult" class="col-sm-2 col-form-label">비용</label>
			<div class="col-sm-2">
				<div class="input-group"> <!-- 일반가 -->
					<input type="text" name="price" id="price" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="성인가"  value="${vo.price}" />
					<span class="input-group-addon">￦</span>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="input-group"> <!-- 아동가 -->
					<input type="text" name="pricech" id="pricech" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="아동가"  value="${vo.pricech}" />
					<span class="input-group-addon">￦</span>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="input-group"> <!-- 유아가 -->
					<input type="text" name="pricein" id="pricein" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="유아가"  value="${vo.pricein}" />
					<span class="input-group-addon">￦</span>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="input-group"> <!-- 유류할증료 -->
					<input type="text" name="fuel" id="fuel" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="유류할증료"  value="${vo.fuel}" />
					<span class="input-group-addon">￦</span>
				</div>
			</div>
			
		</div>
		
		<div class="form-group row">
			<label for="priceAdult" class="col-sm-2 col-form-label">여행기간</label>
			
			<div class="col-sm-2">
				<div class="input-group">
					<input type="text" name="period1" id="period1" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="1"  value="${vo.period1}">
					<span class="input-group-addon">박</span>
				</div>
			</div>
			
			<div class="col-sm-2">
				<div class="input-group">
					<input type="text" name="period2" id="period2" class="form-control" aria-label="Amount (to the nearest dollar)" 
					placeholder="2"  value="${vo.period2}">
					<span class="input-group-addon">일</span>
				</div>
			</div>
			
			<div class="col-sm-2">
				<input type="hidden" name="period" id="period" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="(히든)">
			</div>
			
		</div>
				
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">출발일</label>
			
			<div class='col-sm-3'>
				<div class="input-group date form_datetime" data-date-format="yyyy년 MM d일 - HH:ii p" 
				data-link-field="dtp_input1">
					
                    <input class="form-control" size="16" type="text" placeholder="한국 출발" readonly 
                    value='<fmt:formatDate value="${parsedSdate}" type="both" pattern="yyyy년 MM월 d일 - HH:mm a"/>'>

                    <span class="input-group-addon"><span class="fa fa-times" aria-hidden="true"></span></span>
					<span class="input-group-addon"><span class="fa fa-calendar" aria-hidden="true"></span></span>
                </div>
				<input type="hidden" id="dtp_input1" name="sdate" value="${vo.sdate}" />
			</div>
			<div class='col-sm-3'>
				<div class="input-group date form_datetime" data-date-format="yyyy년 MM d일 - HH:ii p" 
				data-link-field="dtp_input2">
				
                    <input class="form-control" size="16" type="text" placeholder="현지 도착" readonly 
                    value='<fmt:formatDate value="${parsedSAdate}" type="both" pattern="yyyy년 MM월 d일 - HH:mm a"/>'>
                    
                    <span class="input-group-addon"><span class="fa fa-times" aria-hidden="true"></span></span>
					<span class="input-group-addon"><span class="fa fa-calendar" aria-hidden="true"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" name="sadate" value="${vo.sadate}" />
			</div>
				
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">도착일</label>
			<div class='col-sm-3'>
				<div class="input-group date form_datetime" data-date-format="yyyy년 MM d일 - HH:ii p" 
				data-link-field="dtp_input3">
				
                    <input class="form-control" size="16" type="text" placeholder="현지 출발" readonly 
                    value='<fmt:formatDate value="${parsedEdate}" type="both" pattern="yyyy년 MM월 d일 - HH:mm a"/>'>
                    
                    <span class="input-group-addon"><span class="fa fa-times" aria-hidden="true"></span></span>
					<span class="input-group-addon"><span class="fa fa-calendar" aria-hidden="true"></span></span>
                </div>
				<input type="hidden" id="dtp_input3" name="edate" value="${vo.edate}" />
			</div>
			<div class='col-sm-3'>
				<div class="input-group date form_datetime" data-date-format="yyyy년 MM d일 - HH:ii p" 
				data-link-field="dtp_input4">
				
                    <input class="form-control" size="16" type="text" placeholder="한국 도착" readonly 
                    value='<fmt:formatDate value="${parsedEAdate}" type="both" pattern="yyyy년 MM월 d일 - HH:mm a"/>'>
                    
                    <span class="input-group-addon"><span class="fa fa-times" aria-hidden="true"></span></span>
					<span class="input-group-addon"><span class="fa fa-calendar" aria-hidden="true"></span></span>
                </div>
				<input type="hidden" id="dtp_input4" name="eadate" value="${vo.eadate}" />
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputTitle" class="col-sm-2 col-form-label">간단정보</label>
			<div class='col-sm-10'>
				<textarea class="form-control" id="detail1" name="detail1" rows="3">${vo.detail1}</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="dinfo" class="col-sm-2 col-form-label">1. 상품안내</label>
			<div class="col-sm-10">
				<div class="form-control" id="summernote1"></div>
				<script>
					$('#summernote1').summernote({
						height: 200,
						minHeight: null,
						maxHeight: null,
						placeholder: '1. 상품안내',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea class="form-control" id="dinfo" name="dinfo" hidden>${vo.dinfo}</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="incinfo" class="col-sm-2 col-form-label">2. 포함사항</label>
			<div class="col-sm-10">
				<div class="form-control" id="summernote2"></div>
				<script>
					$('#summernote2').summernote({
						height: 200,
						minHeight: null,
						maxHeight: null,
						placeholder: '2. 포함사항',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea class="form-control" id="incinfo" name="incinfo" hidden>${vo.incinfo}</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="nincinfo" class="col-sm-2 col-form-label">3. 불포함사항</label>
			<div class="col-sm-10">
				<div class="form-control" id="summernote3"></div>
				<script>
					$('#summernote3').summernote({
						height: 200,
						minHeight: null,
						maxHeight: null,
						placeholder: '3. 불포함사항',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea class="form-control" id="nincinfo" name="nincinfo" hidden>${vo.nincinfo}</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="ref" class="col-sm-2 col-form-label">4. 참고/전달사항</label>
			<div class="col-sm-10">
				<div class="form-control" id="summernote4"></div>
				<script>
					$('#summernote4').summernote({
						height: 200,
						minHeight: null,
						maxHeight: null,
						placeholder: '4. 참고/전달사항',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea class="form-control" id="ref" name="ref" hidden>${vo.ref}</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="daily" class="col-sm-2 col-form-label">5. 일정표</label>
			<div class="col-sm-10">
				<div class="form-control" id="summernote5"></div>
				<script>
					$('#summernote5').summernote({
						height: 200,
						minHeight: null,
						maxHeight: null,
						placeholder: '5. 일정표',
						tabsize: 2,
						lang: 'ko-KR'
					});
				</script>
				<textarea class="form-control" id="daily" name="daily" hidden>${vo.daily}</textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectDirect" class="col-sm-2 col-form-label">직항여부</label>
			<div class="col-sm-2">
				<select class="form-control" name="via" id="via">
					<option value="Y">직항</option>
					<option value="N">경유</option>
				</select>
			</div>
			<script>
			$("#via").on("change", function(){
				if ($(this).val() == "Y") {
				 	$("#vias").attr("disabled",true);
				 	$("#viaSelect").attr("disabled",true);
				 	$("#viaSelect + button").attr("disabled",true);
				}
				if ($(this).val() == "N") {
				 	$("#vias").removeAttr("disabled");
				 	$("#viaSelect").removeAttr("disabled");
				 	$("#viaSelect + button").removeAttr("disabled");
				}
			});
			</script>
		</div>
				
		<div class="form-group row">
			<label for="selectWaypoint" class="col-sm-2 col-form-label">경유지</label>
				<div class="btn-group col-sm-2" role="group" aria-label="First group">
					<input type="text" class="form-control rounded-0 rounded-left" placeholder="경유지 추가" aria-label="Input group example" aria-describedby="btnGroupAddon2" id="viaSelect" disabled>
					<button type="button" class="btn btn-primary" onclick="fn_add2()" disabled>+</button>
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="vias" id="vias" placeholder="상해,뭄바이" disabled  value="${vo.vias}" />
				</div>
		</div>
		
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">쇼핑센터 방문</label>
			<div class="col-sm-2">
				<div class="input-group">
					<input type="text" name="shop" id="shop" class="form-control" aria-label="Amount (to the nearest dollar)"  value="${vo.shop}" />
					<span class="input-group-addon">회</span>
				</div>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">옵션 사용여부</label>
			<div class="col-sm-2">
				<select class="form-control" name="opt" id="opt">
					<option value="Y" selected>사용</option>
					<option value="N">중지</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="selectUse" class="col-sm-2 col-form-label">사용여부</label>
			<div class="col-sm-2">
				<select class="form-control" name="use" id="use">
					<option value="Y" selected>사용</option>
					<option value="N">중지</option>
				</select>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="p-2">
				<button type="button" class="btn btn-primary" id="saveBtn">수정</button>
				<button type="button" class="btn btn-danger" id="delBtn">삭제</button>
			</div>
		</div>
		
	</form>
	
<script type="text/javascript">
	$('.form_datetime').datetimepicker({
		language:  'ko',
		weekStart: 1,
		todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
		showMeridian: 1
	});
	
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	
	/* 셀렉트 박스 옵션 선택하기 s*/
	
	var $via = "${vo.via}";		// 경유지유무
	$("#via option[value="+$via+"]").attr("selected", "true");
	if ( $("#via option[value=N]").prop("selected") ) {		// 경유지 Y 이면 vias disabled 삭제
		$("#vias").removeAttr("disabled");
	 	$("#viaSelect").removeAttr("disabled");
	 	$("#viaSelect + button").removeAttr("disabled");
		}
	
	var $opt = "${vo.opt}";		// 옵션유무
	$("#opt option[value="+$opt+"]").prop("selected", true);
	
	var $use = "${vo.use}";		// 사용여부
	$("#use option[value="+$use+"]").attr("selected", "true");
	
	
	/* 셀렉트 박스 옵션 선택하기 e*/
	
	
	
	$( document ).ready(function() {
		
		/* 페이지가 열릴 때 textarea에 담긴 값을 에디터로 옮김 s*/
		for (var i=1; i<=5; i++) {
			/* 에디터 html모드 활성화 */
			$('#summernote'+i).summernote('codeview.toggle');
		}
			var contentField1 = $("#dinfo").text();
			$('#summernote1').summernote('code', contentField1);
			var contentField2 = $("#incinfo").text();
			$('#summernote2').summernote('code', contentField2);
			var contentField3 = $("#nincinfo").text();
			$('#summernote3').summernote('code', contentField3);
			var contentField4 = $("#ref").text();
			$('#summernote4').summernote('code', contentField4);
			var contentField5 = $("#daily").text();
			$('#summernote5').summernote('code', contentField5);
		
		for (var i=1; i<=5; i++) {
			/* 에디터 html모드 비활성화 */
			$('#summernote'+i).summernote('codeview.toggle');
		}
		/* 페이지가 열릴 때 textarea에 담긴 값을 에디터로 옮김 e*/
		
		
		
		$(window).scrollTop(0); // 맨 위로 이동하기
	});
	
	
</script>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script>
	
	//1. 키이벤트 정의
     $('#person').keyup(function (e){
      gfnFormObjNumberEvent(this,e.keyCode,"yes");
     });
     
     
/**
 * 숫자 체크 [숫자 .(190) ,(188), 탭(9), ctrl+v : 86, 백스페이스 : 8, ctrl+c : 67, ctrl+v : 17, shift+tab : 16, ctrl+tab : 18]
 * @param obj
 * @returns {Boolean}
 */
function gfnFormObjNumberEvent(obj, keyValue, addComma) {
 var objValue = obj.value;
 var sMaxValue = obj.maxValue;
 if((keyValue >= 48 && keyValue <= 57) || keyValue == 45 || keyValue == 46
   || keyValue == 190 || keyValue == 188 || keyValue == 9 || keyValue == 86 
   || keyValue == 8 || keyValue == 67 || keyValue == 17 || keyValue == 16 || keyValue == 18) {
  //return true;
 } else {
  alert("숫자만 입력이 가능합니다.");
  if(objValue != null && objValue.length > 0) {
   objValue = objValue.substring(0, objValue.length -1);
   obj.value = objValue;
  }
  obj.focus();
  event.returnValue = false;
 }
 if(sMaxValue != null && Number(objValue) > Number(sMaxValue)) {
  alert(sMaxValue + " 이하로 입력하세요!!");
  obj.value = "";
  obj.focus();
  event.returnValue = false;
 }
 
 var lastValue = String.fromCharCode(keyValue);
 var vallen = objValue.length;
 var setValue = gfnRemoveComma(objValue);
 if(addComma == 'yes') {
  returnvalue = gfnxxxAddComma(setValue);
  obj.value = returnvalue;
  obj.focus();
  return true;
 }
 return true;
}

//숫자형 문자열에 자리수 ','를 추가
function gfnxxxAddComma(numStr) {
 var body = String(Number(numStr));
 
 if(body == "0")
  body = "";
 
 body  = (body.indexOf('-') > -1 || body.indexOf('+') > -1) ? body.substring(1) : body;
 body  = (body.indexOf('.') > -1) ? body.substring(0, body.indexOf('.')) : body;
 
 var head = (numStr == body) ? "" : numStr.substring(0, numStr.indexOf(body));
 var tail = (numStr == body) ? "" : numStr.substring(numStr.indexOf(body) + body.length);
 
 while (body.length > 3) {
  tail = ',' + body.substring(body.length - 3) + tail;
  body = body.substring(0, body.length - 3);
 }
 return head + body + tail;
}

/**
 * 콤마(,) 삭제
 */
function gfnRemoveComma(value){
 return value.replace(/^\$|,/g, "") + "";
}
	
</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</main>