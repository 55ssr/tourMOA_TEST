<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>결제 관리</h1>
	<div class="row justify-content-between mb-3">
		<div class="col-lg-6">
			<div class="row">
				<div class="col-lg-3">
					<select class="form-control">
						<option>입금전</option>
						<option>입금완료</option>
						<option>여행중</option>
						<option>거래완료</option>
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
		
		<div class="col-lg-4 text-right">
			<button type="button" class="btn btn-primary" onclick="">오늘</button>
			<button type="button" class="btn btn-primary" onclick="">이번주</button>
			<button type="button" class="btn btn-primary" onclick="">이번 달</button>
		</div>	
			
		<div class="col-lg-2">
			<div class="input-group date" id="datetimepicker2">
				<input type="text" class="form-control">
				<span class="input-group-addon">
					<span class="glyphicon glyphicon-calendar"></span>
			    </span>
			</div>
		</div>
		<script type="text/javascript">
			$(function () {
				$('#datetimepicker2').datetimepicker({
					locale: 'ko'
				});
			});
		</script>
		
	</div>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>구분</th>
					<th>국가</th>
					<th>도시</th>
					<th>상품명</th>
					<th>아이디</th>
					<th>인원</th>
					<th>금액</th>
					<th>출발일</th>
					<th>도착일</th>
					<th>신청일</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>6</td>
					<td>자유여행</td>
					<td>이탈리아</td>
					<td>밀라노</td>
					<td>
						<a href="/adminGoodsDetail.do">이탈리아 9박 10일</a>
					</td>
					<td>MyId</td>
					<td>성인1,아동1</td>
					<td>100,0000</td>
					<td>2017.12.03</td>
					<td>2017.12.14</td>
					<td>2017.10.13</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
				</tr>
				<tr>
					<td>5</td>
					<td>자유여행</td>
					<td>이탈리아</td>
					<td>밀라노</td>
					<td>
						<a href="/adminGoodsDetail.do">이탈리아 9박 10일</a>
					</td>
					<td>MyId</td>
					<td>성인1,아동1</td>
					<td>100,0000</td>
					<td>2017.12.03</td>
					<td>2017.12.14</td>
					<td>2017.10.13</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
				</tr>
				<tr>
					<td>4</td>
					<td>자유여행</td>
					<td>이탈리아</td>
					<td>밀라노</td>
					<td>
						<a href="/adminGoodsDetail.do">이탈리아 9박 10일</a>
					</td>
					<td>MyId</td>
					<td>성인1,아동1</td>
					<td>100,0000</td>
					<td>2017.12.03</td>
					<td>2017.12.14</td>
					<td>2017.10.13</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
				</tr>
				<tr>
					<td>3</td>
					<td>자유여행</td>
					<td>이탈리아</td>
					<td>밀라노</td>
					<td>
						<a href="/adminGoodsDetail.do">이탈리아 9박 10일</a>
					</td>
					<td>MyId</td>
					<td>성인1,아동1</td>
					<td>100,0000</td>
					<td>2017.12.03</td>
					<td>2017.12.14</td>
					<td>2017.10.13</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>자유여행</td>
					<td>이탈리아</td>
					<td>밀라노</td>
					<td>
						<a href="/adminGoodsDetail.do">이탈리아 9박 10일</a>
					</td>
					<td>MyId</td>
					<td>성인1,아동1</td>
					<td>100,0000</td>
					<td>2017.12.03</td>
					<td>2017.12.14</td>
					<td>2017.10.13</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
				</tr>
				<tr>
					<td>1</td>
					<td>자유여행</td>
					<td>이탈리아</td>
					<td>밀라노</td>
					<td>
						<a href="/adminGoodsDetail.do">이탈리아 9박 10일</a>
					</td>
					<td>MyId</td>
					<td>성인1,아동1</td>
					<td>100,0000</td>
					<td>2017.12.03</td>
					<td>2017.12.14</td>
					<td>2017.10.13</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
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