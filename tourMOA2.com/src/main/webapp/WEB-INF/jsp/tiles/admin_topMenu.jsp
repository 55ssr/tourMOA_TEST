<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<a class="navbar-brand" href="/admin.do">관리자 페이지</a>
	<button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown active">
				<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					기본관리
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/adminComDetail.do">회사정보 관리</a>
					<a class="dropdown-item" href="/adminResearchList.do">설문조사</a>
					<a class="dropdown-item" href="/adminSearch.do">검색어 관리</a>
					<a class="dropdown-item" href="/adminAutoComplete.do">자동완성</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					등록관리
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/adminGoodsList.do">상품 관리</a>
					<a class="dropdown-item" href="/adminSliderList.do">슬라이더 관리</a>
					<a class="dropdown-item" href="/adminOptionList.do">옵션 관리</a>
					<a class="dropdown-item" href="/adminGoodsCommList.do">상품평 관리</a>
					<a class="dropdown-item" href="/adminCategoryList.do">카테고리 관리</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				  회원관리
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/adminMemberList.do">전체회원</a>
					<a class="dropdown-item" href="/adminGroupList.do">그룹관리</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				  결제관리
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/adminPayList.do?result=1">입금전</a>
					<a class="dropdown-item" href="/adminPayList.do?result=2">입금완료</a>
					<a class="dropdown-item" href="/adminPayList.do?result=3">여행중</a>
					<a class="dropdown-item" href="/adminPayList.do?result=4">거래완료</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				  게시판 관리
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/adminAllBoardList.do">전체 게시판</a>
					<a class="dropdown-item" href="/adminEstimateList.do">견적서 관리</a>
				</div>
			</li>
		</ul>
	</div>
	<div class="alert alert-success mb-0 mr-1" style="width: 400px; padding: 0.9em; font-size: 0.7em; text-align: right;">이 사이트는 Chrome에 최적화 되어 제작되었습니다.</div>
	<a class="btn btn-primary mb-md-0" href="/main.do">
		<i class="fa fa-home" aria-hidden="true"></i>
		투어모아
	</a>
</nav>



<!-- div2개는 footer에서 끝남!! -->
<div class="container-fluid">
	<div class="row">