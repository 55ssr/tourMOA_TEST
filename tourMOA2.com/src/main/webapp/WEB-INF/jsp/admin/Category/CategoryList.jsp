<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 		uri="http://java.sun.com/jsp/jstl/functions" %>


<script>
function fn_popup(){
	var f = document.listFrm;
	var url = "/CategoryRegPopup.do";
	
	window.open(url,"ctgReg","width=500,height=300,resizable=yes,left=500,top=200");

	f.target = "ctgReg";
	f.action = url;    
	f.method = "post";
	f.submit();
}

function fn_list(cd) {
	var f = document.listFrm;
	var url = "/CategoryList.do";

	f.srchContn.value = "hctgcd";
	f.srchKeywd.value = cd;

	f.target = "";
	f.action = url;    
	f.method = "post";
	f.submit();
}

function fn_detail(cd) {
	var f = document.listFrm;
	var url = "/CategoryModPopup.do";

	window.open(url,"ctgReg","width=500,height=300,resizable=yes,left=500,top=200");

	f.ctgcd.value = cd;
	f.action = url; 
	f.target = "ctgReg";
	f.method = "post";
	f.submit();
}

</script>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>카테고리 관리</h1>
	
	<div class="table-responsive">
		<form name="listFrm" id="listFrm">
		<input type="hidden" name="ctgcd" id="ctgcd"/>
		<table style="width:100%;">
			<tr>
				<td align="left">
				검색 :	<select name="srchContn" style="height:25px;">
						<option value="hctgcd" <c:if test="${srchContn == 'hctgcd'}">selected</c:if>>분류코드</option>
						<option value="ctgnm" <c:if test="${srchContn == 'ctgnm'}">selected</c:if>>분류이름</option>
						<option value="use" <c:if test="${srchContn == 'use'}">selected</c:if>>사용여부</option>
					</select> 
					<input type="text" name="srchKeywd" value="${srchKeywd}"  style="height:20px;"/>
					<input type="submit" value="검색" style="height:26px;"/>
				</td>
				<td align="right">
					<input type="button" value="목록" onclick="location.href='/ctgList.do'"/>
					<input type="button" value="카테고리등록" onclick="fn_popup()">
				</td>
			</tr>
		</table>
		</form>
		<table class="table table-hover">
			<colgroup>
				<col style="width:5%;"></col>
				<col style="width:15%;"></col>
				<col style="width:10%;"></col>
				<col style="*"></col>
				<col style="width:10%;"></col>
				<col style="width:10%;"></col>
			</colgroup>
			<thead>				
				<tr>
					<th>#</th>
					<th>분류</th>
					<th>코드</th>
					<th>카테고리명</th>
					<th>사용여부</th>
					<th>상세보기</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rs" items="${rslist}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>
						<c:if test="${fn:length(rs.ctgcd)==3}">대분류</c:if>
						<c:if test="${fn:length(rs.ctgcd)==5}">중분류</c:if>
						<c:if test="${fn:length(rs.ctgcd)==7}">소분류</c:if>
					</td>
					<td>${rs.ctgcd}</td>
					<td>
						<c:if test="${fn:length(rs.ctgcd) == 7}">${rs.path}</c:if>
						<c:if test="${fn:length(rs.ctgcd) != 7}">
							<a href="#" onclick="fn_list('${rs.ctgcd}')">${rs.path}</a>
						</c:if>
					</td>
					<td>
						<c:if test="${rs.use == 'Y'}">사용</c:if>
						<c:if test="${rs.use == 'N'}">미사용</c:if>
					</td>
					<td><input type="button" value="수정" onclick="fn_detail('${rs.ctgcd}')"></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
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