<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 	 uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script>
	function fn_Detail(){
		var f = document.frm;
		var url = "/adminEstimateDetail.do";
		f.method="POST";
		f.action = url;
		f.submit();
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
				</tr>
			</thead>
			<tbody>				
				<c:forEach var="rs" items="${rslist}" varStatus="status">
				<input type="hidden" name="unq" id="unq" value="${rs.unq}" />		
				<tr>
					<td>${status.count}</td>
					<td>${rs.floc}</td>
					<td>
						<a href="#" onClick="fn_Detail()" >${rs.title}</a>
					</td>
					<td>${rs.sdate}</td>
					<td>${rs.edate}</td>
					<td>${rs.userid}</td>
					<td>${rs.rdate}</td>
				</tr>				
				</c:forEach>				
			</tbody>
		</table>
		</form>
	</div>	
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item">
				<a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</ul>
	</nav>
    </main>