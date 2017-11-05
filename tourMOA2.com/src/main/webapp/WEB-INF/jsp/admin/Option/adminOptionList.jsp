<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>옵션 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-6">
			<div class="row">
				<div class="col-lg-6">
					<script>
					function fn_select(e) {
						if (e == "T") {
							$("#frm #selectTitle").attr("selected", true);
							$("#frm #selectCode").removeAttr("selected");
							$("#selectedCond").text("제목");
						}
						if (e == "C") {
							$("#frm #selectCode").attr("selected", true);
							$("#frm #selectTitle").removeAttr("selected");
							$("#selectedCond").text("국가");
						}
					}
					</script>
					<form name="frm" id="frm" action="/adminOptionList.do">
						<select name="searchCondition" style="display:none">
							<option id="selectTitle" value="title"></option>
							<option id="selectCode" value="code"></option>
						</select>
						<div class="input-group">
							<div class="input-group-btn">
								<button type="button" id="selectedCond" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								선택
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#" onclick="fn_select('T')">제목</a>
									<a class="dropdown-item" href="#" onclick="fn_select('C')">국가</a>
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
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminOptionWrite.do'">등록</button>
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>국가</th>
					<th>제목</th>
					<th>소요시간</th>
					<th>비용</th>
					<th>파일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="rs" items="${resultList}">
				<tr>
					<td>${number}</td>
					<td>${rs.code}</td>
					<td>
						<a href="#" onclick="fn_loc('${rs.unq}')">${rs.title}</a>
					</td>
					<td>${rs.rtime}</td>
					<td>${rs.pay}</td>
					<td>${rs.filename}</td>
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
				<a class="page-link" href="/adminOptionList.do?pageIndex=${firstPage-1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" tabindex="-1" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
			</li>
		</c:if>
		
		<c:forEach var="i" begin="${firstPage}" end="${lastPage}">
			<c:if test="${i <= totalPage}">
				<c:if test="${i == searchVO.pageIndex}">
					<li class="page-item disabled"><a class="page-link" href="/adminOptionList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
				</c:if>
				<c:if test="${i != searchVO.pageIndex}">
					<li class="page-item"><a class="page-link" href="/adminOptionList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
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
				<a class="page-link" href="/adminOptionList.do?pageIndex=${lastPage+1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</c:if>
			<li class="page-item">
				<a class="page-link" href="/adminOptionList.do?pageIndex=${totalPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Next">
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
	<form action="/selectOptionDetail.do" name="hiddenFrm" method="post">
		<input type="hidden" name="unq" id="unq" />
	</form>
	  
    </main>