<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
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
					<div class="input-group">
						<div class="input-group-btn">
							<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							선택
							</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">아이디</a>
								<a class="dropdown-item" href="#">이름</a>
								<a class="dropdown-item" href="#">등록일</a>
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
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminMemberWrite.do'">등록</button>
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>그룹</th>
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>포인트</th>
					<th>생일</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>6</td>
					<td>관리자</td>
					<td>
						<a href="/adminMemberDetail.do">jnk0105</a>
					</td>
					<td>강진규</td>
					<td>남</td>
					<td>1,000</td>
					<td>2017.11.12</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>5</td>
					<td>일반인</td>
					<td>
						<a href="/adminMemberDetail.do">kkj</a>
					</td>
					<td>김국진</td>
					<td>남</td>
					<td>100</td>
					<td>2016.11.12</td>
					<td>2016.12.13</td>
				</tr>
				<tr>
					<td>4</td>
					<td>일반인</td>
					<td>
						<a href="/adminMemberDetail.do">jnk0105</a>
					</td>
					<td>강진규</td>
					<td>남</td>
					<td>1,000</td>
					<td>2017.11.12</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>3</td>
					<td>일반인</td>
					<td>
						<a href="/adminMemberDetail.do">jnk0105</a>
					</td>
					<td>강진규</td>
					<td>남</td>
					<td>1,000</td>
					<td>2017.11.12</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>2</td>
					<td>일반인</td>
					<td>
						<a href="/adminMemberDetail.do">jnk0105</a>
					</td>
					<td>강진규</td>
					<td>남</td>
					<td>1,000</td>
					<td>2017.11.12</td>
					<td>2017.12.13</td>
				</tr>
				<tr>
					<td>1</td>
					<td>일반인</td>
					<td>
						<a href="/adminMemberDetail.do">jnk0105</a>
					</td>
					<td>강진규</td>
					<td>남</td>
					<td>1,000</td>
					<td>2017.11.12</td>
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