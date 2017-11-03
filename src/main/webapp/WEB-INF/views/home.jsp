<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("select").change(function() {
			var dept = $("select[name=dept-box]").val();
			location.href = "home.do?dept=" +dept;
		})
		
	})
</script>
</head>
<body>
	<c:if test="${param.dept eq 'hr' }">
	<nav class="navbar navbar-static-top navbar-default">
		<div class="container">
			<div class="navbar-header ">
				<a class="navbar-brand" href="#"><strong>인사</strong></a>
			</div>
			<ul class="nav navbar-nav">
				<li class=""><a href="#"><strong>홈</strong></a></li>
				<li><a href="#"><strong>직원 명부</strong></a></li>
				<li><a href="#"><strong>휴가자 현황</strong></a></li>
				<li><a href="#"><strong>휴가 신청 현황</strong></a></li>
				<li><a href="#"><strong>직원 등록</strong></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
     			<li><a href="">프로필 수정</a></li>
    			<li><a href=""><span class="glyphicon glyphicon-log-out">로그아웃</span></a></li>
  	  		</ul>
		</div>
	</nav>
	</c:if>
	<c:if test="${param.dept eq 'fin' }">
		<nav class="navbar navbar-static-top navbar-default">
		<div class="container">
			<div class="navbar-header ">
				<a class="navbar-brand" href="#"><strong>재무</strong></a>
			</div>
			<ul class="nav navbar-nav">
				<li class=""><a href="#"><strong>홈</strong></a></li>
				<li><a href="#"><strong>상세 매출 현황</strong></a></li>
				<li><a href="#"><strong>물류 관련 비용</strong></a></li>
				<li><a href="#"><strong>인사 관련 비용</strong></a></li>
				<li><a href="#"><strong>서비스 관련 비용</strong></a></li>
				<li><a href="#"><strong>수익/지출 입력</strong></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
     			<li><a href="">프로필 수정</a></li>
    			<li><a href=""><span class="glyphicon glyphicon-log-out">로그아웃</span></a></li>
  	  		</ul>
		</div>
	</nav>
	</c:if>
	<c:if test="${param.dept eq 'logis' }">
		<nav class="navbar navbar-static-top navbar-default">
			<div class="container">
				<div class="navbar-header ">
					<a class="navbar-brand" href="#"><strong>물류</strong></a>
				</div>
				<ul class="nav navbar-nav">
					<li class=""><a href="#"><strong>홈</strong></a></li>
					<li class="dropdown active"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><strong>물품 재고 현황</strong><span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">최근 변동 현황</a></li>
							<li><a href="#">증가품목</a></li>
							<li><a href="#">감소품목</a></li>
						</ul></li>
					<li><a href="#"><strong>물품 구입</strong></a></li>
					<li><a href="#"><strong>전자 결재</strong></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="">프로필 수정</a></li>
					<li><a href=""><span class="glyphicon glyphicon-log-out">로그아웃</span></a></li>
				</ul>
			</div>
		</nav>
	</c:if>
	<c:if test="${param.dept eq 'admin' }">
	<nav class="navbar navbar-static-top navbar-default">
		<div class="container">
			<div class="navbar-header ">
				<a class="navbar-brand" href="#"><strong>운영팀</strong></a>
			</div>
			<ul class="nav navbar-nav">
				<li class=""><a href="#"><strong>홈</strong></a></li>
				<li class="dropdown active"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><strong>공지사항 관리</strong><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">사내용</a></li>
						<li><a href="#">고객용</a></li>
					</ul></li>
				<li><a href="#"><strong>건의사항 답변</strong></a></li>
				<li><a href="#"><strong>다운로드 게시판 관리</strong></a></li>
				<li class="dropdown active"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><strong>부서 모니터링</strong><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">통합</a></li>
						<li><a href="#">인사</a></li>
						<li><a href="#">재무</a></li>
						<li><a href="#">물류</a></li>
					</ul>
				</li>
				<li class="dropdown active"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><strong>전자 결재</strong><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">통합</a></li>
						<li><a href="#">인사</a></li>
						<li><a href="#">재무</a></li>
						<li><a href="#">물류</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
     			<li><a href="">프로필 수정</a></li>
    			<li><a href=""><span class="glyphicon glyphicon-log-out">로그아웃</span></a></li>
  	  		</ul>
		</div>
	</nav>
	</c:if>
	<div class="container">
		<div class="form-group">
			<form>
				<label>하나를 고르세용</label>
				<select class="form-control" name="dept-box">
					<option value="" selected="selected">---고르세용---</option>
					<option value="hr">인사</option>
					<option value="fin">재무</option>
					<option value="logis">물류</option>
					<option value="admin">운영</option>
				</select>
			</form>
		</div>
	</div>
</body>
</html>