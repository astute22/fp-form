<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<div class="row">
			<form>
				<div class="form-group col-sm-3">
					<select class="form-control" name="cat0">
						<option value="" selected="selected">선택하세요</option>
						<option value="zz">물품 재고 현황</option>
						<option value="xx">변동 현황</option>
						<option value="cc">증가 품목</option>
						<option value="vv">감소 품목</option>
					</select>
				</div>
				<div class="form-group col-sm-3">
					<select class="form-control" name="cat1">
						<option value="" selected="selected">선택하세요</option>
						<option value="s">스마트폰</option>
						<option value="c">컴퓨터/주변기기</option>
						<option value="s2">세탁기</option>
						<option value="r">냉장고</option>
						<option value="t">TV</option>
					</select>
				</div>
				<div class="form-group col-sm-3">
					<select class="form-control" name="cat2">
						<option value="" selected="selected">선택하세요</option>
						<option value="m">모터</option>
						<option value="a">액정</option>
						<option value="b">빳데리</option>
						<option value="c">케이스</option>
						<option value="e">기타</option>
					</select>
				</div>
			</form>
		</div>
		<table class="table table-condenced">
			<thead>
				<tr>
					<th>물품번호</th>
					<th>물품명</th>
					<th>재고수량</th>
					<th>입고가</th>
					<th>출고가</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td><a href="" id="part1" data-toggle="modal"
						data-target="#part-form-modal">갤놋빳떼리</a></td>
					<td>100</td>
					<td>5000</td>
					<td>150000</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>