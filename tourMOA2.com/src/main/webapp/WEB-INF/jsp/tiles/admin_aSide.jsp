<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	var availableTags = [
	                     	'가가가',
	                     	'가나다',
	                     	'강진규',
	                     	'김국진',
	                     	'한수경',
	                     	'류석현',
	                     	'김훈영',
	                     	'김제헌',
	                     	'서정훈',
	                     	'조황섭',
	                     ];
</script>
<script>
	$(document).ready(function() {
		$("#searchbox").autocomplete(availableTags,{
			matchContains: true,
			selectFirst: false
		});
	});
</script>

<nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
	<form class="form-inline mt-2 mt-md-0">
		<input class="form-control mr-sm-2" id="searchbox" type="text" placeholder="메뉴검색" aria-label="Search">
	</form>
	<hr />
	<div class="card">
		<div class="card-header">
			자주찾는 메뉴
		</div>
		<div class="card-block">
			
			<ul class="nav nav-pills flex-column">
				<li class="nav-item">
					<a class="nav-link active" href="#">Overview <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Reports</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Analytics</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Export</a>
				</li>
			</ul>
			
		</div>
	</div>
	<hr />
	<div class="card">
		<div class="card-header">
			최근 메뉴
		</div>
		<div class="card-block">
			
			<ul class="nav nav-pills flex-column">
				<li class="nav-item">
					<a class="nav-link active" href="#">Overview <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Reports</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Analytics</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Export</a>
				</li>
			</ul>
			
		</div>
	</div>
	<hr />
	<div class="card">
		<div class="card-header">
			로그인 정보
		</div>
		<div class="card-block">
			<dl class="row">
				<dt class="col-sm-8">누적 로그인</dt>
				<dd class="col-sm-4">총: x회</dd>
				<dt class="col-sm-8">총 회원 수</dt>
				<dd class="col-sm-4">총: x명</dd>
			</dl>
		</div>
	</div>
</nav>


