<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 	 uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- LIST 자바스크립트 s-->
<script>
function fn_popup(){
	alert("test");
	var f = document.listFrm;
	var url = "/adminCategoryWrite.do";
	
	window.open(url,"ctgReg","width=500,height=300,resizable=yes,left=500,top=200");

	f.target = "ctgReg";
	f.action = url;    
	f.method = "post";
}

function fn_list(cd) {
	var f = document.listFrm;
	var url = "/adminCategoryList.do";

	f.srchContn.value = "hctgcd";
	f.srchKeywd.value = cd;

	f.target = "";
	f.action = url;    
	f.method = "post";
	f.submit();
}

function fn_detail(cd) {
	var f = document.listFrm;
	var url = "/adminCategoryMod.do";

	window.open(url,"ctgReg","width=500,height=300,resizable=yes,left=500,top=200");

	f.ctgcd.value = cd;
	f.action = url; 
	f.target = "ctgReg";
	f.method = "post";
	f.submit();
}

</script>
<!-- LIST 자바스크립트 e-->

	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>그룹 관리</h1>
	<!-- 카테고리 리스트 s-->
	<div class="table-responsive">
		<form name="listFrm" id="listFrm" action="">
		<input type="hidden" name="ctgcd" id="ctgcd"/>
		<table style="width:100%;">
			<tr>
				<td align="left">
			검색 :  <select name="srchContn" style="height:25px;">
						<option value="hctgcd" <c:if test="${srchContn == 'hctgcd'}">selected</c:if>>분류코드</option>
						<option value="ctgnm" <c:if test="${srchContn == 'ctgnm'}">selected</c:if>>분류이름</option>
						<option value="use" <c:if test="${srchContn == 'use'}">selected</c:if>>사용여부</option>
					</select> 
					<input type="text" name="srchKeywd" value="${srchKeywd}"  style="height:20px;"/>
					<input type="submit" value="검색" style="height:26px;"/>
				</td>
				<td>
					<input type="button" value="목록" onclick="location.href='/adminCategoryList.do'"/>
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
	<!-- 카테고리 리스트 e-->
	
	<!-- 카테고리 등록 s-->
	<%-- <c:if test="${fn:length(hctgcd) == 1}">
		<c:set var="level" value="대분류" />
	</c:if>
	<c:if test="${fn:length(hctgcd) == 3}">
		<c:set var="level" value="중분류" />
	</c:if>
	<c:if test="${fn:length(hctgcd) == 5}">
		<c:set var="level" value="소분류" />
	</c:if>	
	<div class="card">
		<div class="card-header">
			그룹 추가
		</div>
		<div class="card-block">
			<form name="frm" id="frm" target="">
			<input type="hidden" name="hctgcd" id="hctgcd" value="${hctgcd}"/>
			<input type="hidden" name="ctgcd" id="ctgcd" value="${ctgcd}"/>			
			<table class="table table-hover">
				<tr>
					<td>카테고리 분류</td>
					<td>카테고리 코드</td>
					<td>카테고리 명</td>
					<td>설명</td>
					<td>사용유무</td>
				</tr>
				<tr>
					<td>${level}</td>					
					<td>${ctgcd}</td>
					<td>
						<div class="input-group mb-2 mb-sm-0">
							<input type="text" class="form-control" name="ctgnm" id="ctgnm" placeholder="카테고리 명">
						</div>
					</td>
					<td>
						<button type="button" class="btn btn-primary" onclick="fn_save()">저장</button>
					</td>
					<td>
						<select name="use" id="use">
							<option value="Y">사용</option>
							<option value="N">미사용</option>
						</select>
					</td>
				</tr>
			</table>			
			</form>			
		</div>
	</div> --%>
	<!-- 카테고리 등록 e-->
	</main>