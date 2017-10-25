<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
	<h1>그룹 관리</h1>
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>그룹</th>
					<th>혜택1</th>
					<th>혜택2</th>
					<th>혜택3</th>
					<th>할인율</th>
					<th>순서</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>4</td>
					<td>관리자</td>
					<td>
						<input type="checkbox" />
					</td>
					<td>
						<input type="checkbox" />
					</td>
					<td>
						<input type="checkbox" />
					</td>
					<td>
						<div class="input-group mb-2 mb-sm-0">
							<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="할인율">
							<div class="input-group-addon">%</div></div>
						▲ ▼
					</td>
					<td>순서변경▲ ▼</td>
					<td>
						<button type="button" class="btn btn-info btn-sm" onclick="">수정</button>
					</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="">삭제</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>	
	<div class="card">
		<div class="card-header">
			그룹 추가
		</div>
		<div class="card-block">
			
			<table class="table table-hover">
			<tr>
				<td>추가</td>
				<td>
					<input type="text" value="그룹명"/>
				</td>
				<td>
					혜택1<input type="checkbox" />
				</td>
				<td>
					혜택2<input type="checkbox" />
				</td>
				<td>
					혜택3<input type="checkbox" />
				</td>
				<td>
					<div class="input-group mb-2 mb-sm-0">
						<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="할인율">
						<div class="input-group-addon">%</div></div>
					▲ ▼
				</td>
				<td>
					<button type="button" class="btn btn-primary" onclick="location.href='/adminMemberWrite.do'">추가</button>
				</td>
			</tr>
		</table>
			
		</div>
	</div>
	
	
	</main>