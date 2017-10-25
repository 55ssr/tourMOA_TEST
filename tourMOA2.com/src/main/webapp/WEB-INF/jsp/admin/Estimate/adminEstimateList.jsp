<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 	 uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script>
	function fn_Detail(e){		
		var f2 = document.frm2;
		f2.unq.value = e;
		alert(e);
		f2.method="POST";
		f2.submit();
	}
</script>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>견적서 관리</h1>	
	<div class="table-responsive">
		<form name="frm" id="frm">		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>지역</th>
					<th>제목</th>
					<th>출발일</th>
					<th>도착일</th>
					<th>아이디</th>
					<th>등록일</th>
					<th>처리여부</th>
				</tr>
			</thead>
			<tbody>				
				<c:forEach var="rs" items="${rslist}" varStatus="status">\
							
				<tr>
					<td>${number}</td>
					<td>${rs.floc}</td>
					<td>
						<a href="#" onClick="fn_Detail(${rs.unq})" >${rs.title}</a>
					</td>
					<td>${rs.sdate}</td>
					<td>${rs.edate}</td>
					<td>
						<c:if test="${rs.userid eq 'undefined'}">비회원</c:if>
						<c:if test="${rs.userid ne 'undefined'}">${rs.userid}</c:if>
					</td>
					<td>${rs.rdate}</td>
					<td>
						<c:if test="${rs.result eq null}"><span class="badge badge-danger">미처리</span></c:if>
						<c:if test="${rs.result ne null}"><span class="badge badge-primary">처리완료</span></c:if>
					</td>
				</tr>
				<c:set var="number" value="${number-1}" />				
				</c:forEach>				
			</tbody>
		</table>
		</form>
		<form name="frm2" id="frm2" method="POST" action="/adminEstimateDetail.do">
			<input type="hidden" name="unq" id="unq" value="" />
		</form>		
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
				<a class="page-link" href="/adminEstimateList.do?pageIndex=${firstPage-1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" tabindex="-1" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
			</li>
		</c:if>
		
		<c:forEach var="i" begin="${firstPage}" end="${lastPage}">
			<c:if test="${i <= totalPage}">
				<c:if test="${i == searchVO.pageIndex}">
					<li class="page-item disabled"><a class="page-link" href="/adminEstimateList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
				</c:if>
				<c:if test="${i != searchVO.pageIndex}">
					<li class="page-item"><a class="page-link" href="/adminEstimateList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
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
				<a class="page-link" href="/adminEstimateList.do?pageIndex=${lastPage+1}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</c:if>
			<li class="page-item">
				<a class="page-link" href="/adminEstimateList.do?pageIndex=${totalPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Next">
					<span aria-hidden="true">&raquo;&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</ul>
	</nav>
    </main>