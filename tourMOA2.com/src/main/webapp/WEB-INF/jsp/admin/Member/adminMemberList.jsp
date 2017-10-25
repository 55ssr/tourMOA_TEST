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
	f.userid.value = a;
	f.submit();
}
</script>
	<h1>회원 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-6">
			<div class="row">
				<div class="col-lg-3">
					<select class="form-control">
						<option>그룹1</option>
						<option>그룹2</option>
					</select>
				</div>
				<div class="col-lg-6">
					<form name="frm" method="post" action="/adminMemberList.do">
					<div class="input-group">
						<div class="input-group-btn">
						
							<select name="searchCondition" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<option value="id" class="dropdown-item">아이디</option>
								<option value="name" class="dropdown-item">이름</option>
								<option value="phone" class="dropdown-item">번호</option>
							</select>
			      		</div>
						<input type="text" class="form-control" aria-label="Text input with dropdown button" name="searchKeyword"/>
							<input type="submit" class="btn btn-secondary" value="검색"/>
			      	</div>
				</form>
				</div>
			</div>
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminMemberWrite.do'">등록</button>
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
				<tr>
					<th>#</th>
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>번호</th>
					<th>생일</th>
					<th>이메일</th>
					<th>가입일</th>
				</tr>
				<c:forEach var="r" items="${resultList}" varStatus="status">
           <tr>
           		
           		<td>${number}</td>
            	<td>
       <a href="#" onclick="fn_detail('${r.id}')">${r.id}</a>
          		</td>
            	<td>${r.name}</td>
            	<td>
            	${r.gender}
            	</td>
            	<td>
            	${r.phone}
            	</td>
            	<td>
            	${r.birthday}
            	</td>
            	<td>
            	${r.email}
            	</td>
            	<td>
            	${r.rdate}
            	</td>
            </tr>
            <c:set var="number" value="${number-1}"/> 
		</c:forEach>
</table>
 
	 <nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled">
			<li class="page-item"> 
				<a class="page-link" href="adminMemberList.do?pageIndex=${firstPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
				</li>
			
			<c:forEach  var="i"  begin="${firstPage}"  end="${lastPage}">
		    <c:if test="${i <= totalPage}">
			<li class="page-item"><a class="page-link" href="adminMemberList.do?pageIndex=${i}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}">${i}</a></li>
		    	<c:if test="${i == searchVO.pageIndex}"></c:if>
		    	<c:if test="${i != searchVO.pageIndex}">
				</c:if>
			</c:if>
		</c:forEach>
			<!-- <li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>-->
			<li class="page-item"> 
				<a class="page-link" href="adminMemberList.do?pageIndex=${lastPage}&searchCondition=${searchVO.searchCondition}&searchKeyword=${searchVO.searchKeyword}" >
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
			
		</ul>
	</nav> 
<form name="hiddenFrm2" method="post" action="/adminMemberDetail.do">
	<input type="hidden" name="id" id="userid"/>
</form>

</div>
    </main>