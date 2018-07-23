<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first.jsp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/first.css">
<link rel="stylesheet" type="text/css" href="../css/template.css">
</head>
<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>

	<div class="container text-center">
		<div class="jumbotron">
			<h1 class="h3 mb-3 font-weight-normal">당신의 일상을 공유해보세요</h1>
			<p>이미 ${count_of_user}명이 BlogDay를 사용하고 있습니다!
			<p>
				<button class="btn btn-primary">시작하기</button>
		</div>

		<div class="container-fluid bg-3 text-center" id="main">
			<h3>Some of my Work</h3>
			<br>
			<div class="row">
				<div class="col-sm-4">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-4">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				<div class="col-sm-4">
					<p>Some text..</p>
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
				</div>
				
			</div>
		</div>
		<br>
	</div>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

</body>
</html>
