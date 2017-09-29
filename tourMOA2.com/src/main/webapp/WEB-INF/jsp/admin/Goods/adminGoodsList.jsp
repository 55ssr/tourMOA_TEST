<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-6">
			<div class="row">
				<div class="col-lg-3">
					<form name="frmGubun" id="frmGubun" action="/adminGoodsList.do">
						<input type="hidden" name="searchKeyword" />
						<select name="searchCondition" id="gubunSelect" class="form-control">
							<option value=""> - 상품 구분 - </option>
							<option id="자유여행" value="gubun"<c:if test="${param.searchKeyword =='자유여행'}">selected</c:if>>자유여행</option>
							<option id="해외패키지" value="gubun"<c:if test="${param.searchKeyword =='해외패키지'}">selected</c:if>>해외패키지</option>
						</select>
					</form>
					<script>
					$("#gubunSelect").on("change", function(){
						var id = $("#gubunSelect option:selected").attr("id");
						$("#frmGubun input[name='searchKeyword']").val(id);
						$("#frmGubun").submit();
					});
					</script>
				</div>
				
				<div class="col-lg-3">
					<form name="frmLocation" id="frmLocation" action="/adminGoodsList.do">
						<input type="hidden" name="searchKeyword" />
						<select name="searchCondition" class="form-control" id="locationSelect">
							<option value=""> - 지역 구분 - </option>
							<option id="서유럽" value="location"<c:if test="${param.searchKeyword =='서유럽'}">selected</c:if>>서유럽</option>
							<option id="동남아" value="loaction"<c:if test="${param.searchKeyword =='동남아'}">selected</c:if>>동남아</option>
						</select>
					</form>
					<script>
					$("#locationSelect").on("change", function(){
						var id = $("#locationSelect option:selected").attr("id");
						$("#frmLocation input[name='searchKeyword']").val(id);
						$("#frmLocation").submit();
					});
					</script>
				</div>
				<div class="col-lg-6">
					<script>
					function fn_select(e) {
						if (e == "T") {
							$("#frm #selectTitle").attr("selected", true);
							$("#frm #selectCity").removeAttr("selected");
							$("#selectedCond").text("상품명");
						}
						if (e == "C") {
							$("#frm #selectCity").attr("selected", true);
							$("#frm #selectTitle").removeAttr("selected");
							$("#selectedCond").text("도시");
						}
					}
					</script>
					<form name="frm" id="frm" action="/adminGoodsList.do">
						<select name="searchCondition" style="display:none">
							<option id="selectTitle" value="title"></option>
							<option id="selectCity" value="city"></option>
						</select>
						<div class="input-group">
							<div class="input-group-btn">
								<button type="button" id="selectedCond" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								선택
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#" onclick="fn_select('T')">상품명</a>
									<a class="dropdown-item" href="#" onclick="fn_select('C')">도시</a>
				        		</div>
				      		</div>
							<input type="text" name="searchKeyword" class="form-control" aria-label="Text input with dropdown button">
							<span class="input-group-btn">
								<button class="btn btn-secondary" type="submit">검색</button>
							</span>
			      		</div>
			      	</form>
				</div>
			</div>
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsWrite.do'">등록</button>
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>구분</th>
					<th>상품명</th>
					<th>지역</th>
					<th>국가</th>
					<th>도시</th>
					<th>비용</th>
					<th>출발일</th>
					<th>도착일</th>
					<th>사용여부</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach var="rs" items="${resultList}">
				<tr>
					<td>${number}</td>
					<td>${rs.gubun}</td>
					<td>
						<a href="#" onclick="fn_loc(${rs.unq})">${rs.title}</a>
					</td>
					<td>${rs.location}</td>
					<td>${rs.nation}</td>
					<td>${rs.city}</td>
					<td>${rs.price}</td>
					<td>${rs.sdate}</td>
					<td>${rs.edate}</td>
					<td>${rs.use}</td>
					<td>${fn:substring(rs.rdate,0,10)}</td>
				</tr>
				<c:set var="number" value="${number-1}" />
			</c:forEach>
			
			</tbody>
		</table>
	</div>
		
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
		<c:if test="${before == 0}">
			<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
			</li>
		</c:if>
		<c:if test="${before > 0}"> 
			<li class="page-item">
				<a class="page-link" href="/adminGoodsList.do?pageIndex=${firstPage-1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" tabindex="-1" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
			</li>
		</c:if>
		
		<c:forEach var="i" begin="${firstPage}" end="${lastPage}">
			<c:if test="${i <= totalPage}">
				<c:if test="${i == searchVO.pageIndex}">
					<li class="page-item disabled"><a class="page-link" href="/adminGoodsList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
				</c:if>
				<c:if test="${i != searchVO.pageIndex}">
					<li class="page-item"><a class="page-link" href="/adminGoodsList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
				</c:if>
			</c:if>
		</c:forEach>
		
		<c:if test="${next == 0}">
			<li class="page-item disabled">
				<a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</c:if>
		<c:if test="${next > 0}">
			<li class="page-item">
				<a class="page-link" href="/adminGoodsList.do?pageIndex=${lastPage+1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</c:if>
			<li class="page-item">
				<a class="page-link" href="/adminGoodsList.do?pageIndex=${totalPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Next">
					<span aria-hidden="true">&raquo;&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</ul>
	</nav>
	
	<script type="text/javascript">
	function fn_loc(a) {
		document.hiddenFrm.unq.value = a;
		document.hiddenFrm.submit();
	}
	</script>
	<form action="/adminGoodsDetail.do" name="hiddenFrm" method="post">
		<input type="hidden" name="unq" id="unq" />
	</form>
	
    </main>