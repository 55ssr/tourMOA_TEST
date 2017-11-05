<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
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
	$("#searchBtnMain").click(function(){
		
		document.searchFrmMain.submit();
		
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
					<li><a href="#" onclick="fn_detail('${sessionScope.loginCertification.id}')">&nbsp;정보수정</a></li>
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
				<form name="searchFrmMain" method="post" action="/search/searchKeyword.do">
					<div id="searchBox">
						<select class="searchCondition" name="searchCondition" id="searchCondition">
							<option value="">전체 상품</option>
                            <option value="해외패키지">해외패키지</option>
                            <option value="자유여행">자유여행</option>
                            <option value="국내여행">국내여행</option>
                            <option value="허니문">허니문</option>
                            <option value="골프">골프</option>
                            <option value="크루즈">크루즈</option>
                            <option value="성지순례">성지순례</option>
                            <option value="대구출발">부산/대구출발</option>
						</select>
						<span class="dvide"></span>
						<input type="text" id="searchKeyword" name="searchKeyword" class="search" value="">
						<span class="dvide"></span>
						<a href="#" id="searchBtnMain"><img alt="검색" src="/images/customer/top_search.png"></a>
					</div>
				</form>
			</div>
		</div>
<form name="hiddenFrm2" method="post" action="<c:url value='mypage/accountPwReaffirm.do'/>">
	<input type="hidden" name="id" id="id"/>
</form>
