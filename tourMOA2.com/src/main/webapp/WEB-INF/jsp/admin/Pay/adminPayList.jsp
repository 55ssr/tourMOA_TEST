<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<script>
	function fn_detail(a) {
	var f = document.hiddenFrm2;
	f.rsvno.value = a;
	f.submit();
	}
	
	$(document).ready(function(){
		$("#result").change(function(){
			var f= document.testFrm;
			alert($("#result option:selected").val());
			f.submit();
			
		});
			
		
	});
</script>
	<h1>결제 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-6">
			<div class="row">
				<div class="col-lg-3">
				<form name="testFrm" id="testFrm" method="post" action="/adminPayList.do">
					<select class="form-control" name="result" id="result">
						<option value="">선택</option>
						<option value="1">입금전</option>
						<option value="2">입금완료</option>
						<option value="3">여행중</option>
						<option value="4">거래완료</option>
					</select>
				</form>
				</div>
				<div class="col-lg-3">
					<select class="form-control">
						<option>유럽</option>
						<option>미주</option>
						<option>동남아</option>
						<option>일본</option>
					</select>
				</div>
				<div class="col-lg-6">
					<form name="frm" method="post" action="/adminPayList.do">
					<div class="input-group">
						<div class="input-group-btn">
						
							<select name="searchCondition" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<option value="title" class="dropdown-item">상품명</option>
								<option value="airline" class="dropdown-item">항공</option>
								<option value="nation" class="dropdown-item">지역</option>
								<option value="result" class="dropdown-item">처리여부</option>
							</select>
			      		</div>
						<input type="text" class="form-control" aria-label="Text input with dropdown button" name="searchKeyword"/>
							<input type="submit" class="btn btn-secondary" value="검색"/>
			      	</div>
				</form>
				</div>
			</div>
		</div>
		
		<div class="col-lg-4 text-right">
			<button type="button" class="btn btn-primary" onclick="">오늘</button>
			<button type="button" class="btn btn-primary" onclick="">이번주</button>
			<button type="button" class="btn btn-primary" onclick="">이번 달</button>
		</div>	
			
		<div class="col-lg-2">
			<div class="input-group date" id="datetimepicker2">
				<input type="text" class="form-control">
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
	
	<div class="table-responsive">
		<table class="table table-hover">
				<tr>
					<th width="5%">#</th>
					<th width="5%">예약번호</th>
					<th width="5%">국가</th>
					<th width="18%">상품명</th>
					<th width="5%">성명</th>
					<th width="9%">번호</th>
					<th width="10%">예약일시</th>
					<th width="10%">예약인원</th>
					<th width="10%">출발일</th>
					<th width="10%">도착일</th>
					<th width="8%">금액</th>
					<th width="5%">처리여부</th>
				</tr>
				<c:forEach var="r" items="${resultList}" varStatus="status">
           		<tr>
		           		<td>${number}</td>
		            	<td>
		       <a href="#" onclick="fn_detail('${r.rsvno}')">${r.rsvno}</a>
		          		</td>
		            	<td>
		            	${r.nation}
		            	</td>
		            	<td>
		            	${r.title}
		            	</td>
		            	<td>${r.name}</td>
		            	<td>${r.phone}</td>
		            	<td>
		            	${r.rsvdate}
		            	</td>
		            	<td>
		            	성인:${r.rsvanum}
		            	청소년:${r.rsvcnum}
		            	유아:${r.rsvbnum}
		            	</td>
		            	<td>
		            	${r.sdate}
		            	</td>
		            	<td>
		            	${r.edate}
		            	</td>
		            	<td>
		            	${r.price}
		            	</td>
		            	<td>
		            	${r.result}
		            	</td>
					<!-- 	<td>		            
						 <button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
		            	</td> -->
		            </tr>
		            <c:set var="number" value="${number-1}"/> 
				</c:forEach>
				
		</table>
	
	
	 <nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled">
			<li class="page-item"> 
				<a class="page-link" href="adminPayList.do?pageIndex=${firstPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
				</li>
			
			<c:forEach  var="i"  begin="${firstPage}"  end="${lastPage}">
		    <c:if test="${i <= totalPage}">
			<li class="page-item"><a class="page-link" href="adminPayList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
		    	<c:if test="${i == searchVO.pageIndex}"></c:if>
		    	<c:if test="${i != searchVO.pageIndex}">
				</c:if>
			</c:if>
		</c:forEach>
			<li class="page-item"> 
				<a class="page-link" href="adminPayList.do?pageIndex=${lastPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" >
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</ul>
	</nav> 
<form name="hiddenFrm2" method="post" action="/adminPayList.do">
	<input type="hidden" name="rsvno" id="rsvno"/>
</form>
</div>
  </main>