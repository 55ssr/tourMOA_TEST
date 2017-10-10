<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#logoutBtn").click(function(){
		$.ajax({
			  type:'POST'
			, url:"<c:url value='/logOut.do'/>" 
			,success:function(data) {
				if(data.result == "ok"){
					alert("로그아웃 됬습니다.");
					location.href="<c:url value='/main.do'/>";
				}else{
					alert("실패했습니다.");
				}
			}
			, error: function(error) {
				alert('Loading Error! '+error);
			}
		 });
	});
});
function fn_detail(a) {
	var f = document.hiddenFrm2;
	f.id.value = a;
	f.submit();
}
</script>
<div id="wrap">
    <div id="header">
        <div id="topmenu">
          <div id="tt">
          <c:choose>
          	<c:when test="${not empty sessionScope.loginCertification}">
	          	<ul>
					<li><a href="/admin.do">어드민</a></li>
					<li>
					 <a href="#" onclick="fn_detail('${sessionScope.loginCertification.id}')">&nbsp;정보수정</a></li>
					<li><a href="#" id="logoutBtn">${sessionScope.loginCertification.id}님 환영합니다.[로그아웃]</a></li>
					<li><a href="/mypage/join.do">회원가입</a></li>
	           </ul>
         	</c:when>
	        <c:otherwise>
	        	<ul>
					<li><a href="/admin.do">어드민</a></li>
					<li><a href="/mypage/login.do">로그인</a></li>
					<li><a href="/mypage/join.do">회원가입</a></li>
	           </ul>
	        </c:otherwise>
          </c:choose>
          </div>  
        </div>  
        
        
		<div id="header_logo">
			<div id="tt">
				<a href="/main.do">
					<img src="/images/common/TourMOA_Logo220.png" alt="로고">
				</a>
				<div id="searchBox">
					<select class="searchCondition">
						<option>전체 상품</option>
					</select>
					<input type="text" class="search" placeholder="search">
					<a href="#"><img alt="검색" src="/images/customer/top_search.png"></a>
				</div>
			</div>
		</div>
<form name="hiddenFrm2" method="post" action="<c:url value='mypage/accountDetail.do'/>">
	<input type="hidden" name="id" id="id"/>
</form>
