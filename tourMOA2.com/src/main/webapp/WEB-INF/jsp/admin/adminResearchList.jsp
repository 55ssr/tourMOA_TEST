<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>설문조사 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-3">
			<div class="input-group">
				<div class="input-group-btn">
					<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Action
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Action</a>
						<a class="dropdown-item" href="#">Another action</a>
						<a class="dropdown-item" href="#">Something else here</a>
	        		</div>
	      		</div>
				<input type="text" class="form-control" aria-label="Text input with dropdown button">
				<span class="input-group-btn">
					<button class="btn btn-secondary" type="button">Go!</button>
				</span>
	      	</div>
		</div>
		<div class="col-lg-1">
			<button type="button" class="w-100 btn btn-primary" onclick="location.href='/adminResearchWrite.do'">등록</button>
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</th>
					<th>시작일</th>
					<th>종료일</th>
					<th>사용여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>6</td>
					<td>
						<a href="/adminResearchDetail.do">
						팝업 6
						</a>
					</td>
					<td>2017.11.12</td>
					<td>2017.11.13</td>
					<td>사용</td>
				</tr>
				<tr>
					<td>5</td>
					<td>
						<a href="/adminResearchDetail.do">
						팝업 5
						</a>
					</td>
					<td>2017.10.10</td>
					<td>2017.10.15</td>
					<td>사용</td>
				</tr>
				<tr>
					<td>4</td>
					<td>
						<a href="/adminResearchDetail.do">
						팝업 4
						</a>
					</td>
					<td>2017.09.12</td>
					<td>2017.09.15</td>
					<td>사용</td>
				</tr>
				<tr>
					<td>3</td>
					<td>
						<a href="/adminResearchDetail.do">
						팝업 3
						</a>
					</td>
					<td>2017.06.22</td>
					<td>2017.06.23</td>
					<td>사용</td>
				</tr>
				<tr>
					<td>2</td>
					<td>
						<a href="/adminResearchDetail.do">
						팝업 2
						</a>
					</td>
					<td>2017.04.01</td>
					<td>2017.04.13</td>
					<td>사용</td>
				</tr>
				<tr>
					<td>1</td>
					<td>
						<a href="/adminResearchDetail.do">
						팝업 1
						</a>
					</td>
					<td>2017.01.02</td>
					<td>2017.01.10</td>
					<td>사용</td>
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