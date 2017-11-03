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
	<h1>건의사항 답변</h1>
		<table class="table table-condenced">
			<thead>
				<tr>
					<th>글번호</th>
					<th>건의제목</th>
					<th>부서명</th>
					<th>작성일</th>
					<th>답변 여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td><a href="" id="jaguar" data-toggle="modal" data-target="#adj-form-modal">탕탕탕</a></td>
					<td>인사부</td>
					<td>2017-11-03</td>
					<td><span class="label label-danger">미답변</span></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="modal fade" id="adj-form-modal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">건의사항 답변</h4>
				</div>
				<form>
					<input type="hidden" name="no">
					<div class="modal-body">
						<div class="form-group">
							<label>건의제목</label>
							<input type="text" class="form-control" disabled="disabled" name="title">
						</div>
						<div class="form-group">
							<label>건의 부서</label>
							<input type="text" class="form-control" disabled="disabled" name="dept">
						</div>
						<div class="form-group">
							<label>건의 내용</label>
							<textarea rows="3" class="form-control" disabled="disabled" name="contents"></textarea>
						</div>
						<div class="form-group">
							<label>답변</label>
							<textarea rows="3" class="form-control" name="reple"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default btn-sm"
							data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary btn-sm" id="btn-reply">답변</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	$(function(){
		$("#jaguar").click(function(){
			$(":input[name=title]").val("탕탕탕");
			$(":input[name=dept]").val("인사부");
			$(":input[name=contents]").val("경영을 좀 대국적으로 하십쇼");
		})
	})
</script>
</html>