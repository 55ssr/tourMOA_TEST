<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>상품평 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-6">
			<div class="row">
				<div class="col-lg-3">
					<select class="form-control">
						<option>자유여행</option>
						<option>해외패키지</option>
					</select>
				</div>
				<div class="col-lg-3">
					<select class="form-control">
						<option>유럽</option>
						<option>미주</option>
						<option>동남아</option>
						<option>일본</option>
					</select>
				</div>
				<div class="col-lg-6">
					<div class="input-group">
						<div class="input-group-btn">
							<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							선택
							</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">상품명</a>
								<a class="dropdown-item" href="#">지역</a>
								<a class="dropdown-item" href="#">날짜</a>
			        		</div>
			      		</div>
						<input type="text" class="form-control" aria-label="Text input with dropdown button">
						<span class="input-group-btn">
							<button class="btn btn-secondary" type="button">Go!</button>
						</span>
			      	</div>
				</div>
			</div>
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminGoodsCommWrite.do'">등록</button>
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>구분</th>
					<th>상품명</th>
					<th>제목</th>
					<th>아이디</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>6</td>
					<td>자유여행</td>
					<td>
						<a href="/adminGoodsDetail.do">서유럽 9박 10일</a>
					</td>
					<td>
						<a href="/adminGoodsCommDetail.do">오사카 짱짱이다</a>
					</td>
					<td>강진규</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>5</td>
					<td>자유여행</td>
					<td>
						<a href="/adminGoodsDetail.do">남아공 9박 10일</a>
					</td>
					<td>
						<a href="/adminGoodsCommDetail.do">후쿠오카 짱짱이다</a>
					</td>
					<td>강진규</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>4</td>
					<td>자유여행</td>
					<td>
						<a href="/adminGoodsDetail.do">러시아 99박 910일</a>
					</td>
					<td>
						<a href="/adminGoodsCommDetail.do">모스크바 짱짱이다</a>
					</td>
					<td>강진규</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>3</td>
					<td>자유여행</td>
					<td>
						<a href="/adminGoodsDetail.do">서유럽 9박 10일</a>
					</td>
					<td>
						<a href="/adminGoodsCommDetail.do">오사카 짱짱이다</a>
					</td>
					<td>강진규</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>2</td>
					<td>자유여행</td>
					<td>
						<a href="/adminGoodsDetail.do">서유럽 9박 10일</a>
					</td>
					<td>
						<a href="/adminGoodsCommDetail.do">오사카 짱짱이다</a>
					</td>
					<td>강진규</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>1</td>
					<td>자유여행</td>
					<td>
						<a href="/adminGoodsDetail.do">서유럽 9박 10일</a>
					</td>
					<td>
						<a href="/adminGoodsCommDetail.do">오사카 짱짱이다</a>
					</td>
					<td>강진규</td>
					<td>2017.12.13</td>
				</tr>
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