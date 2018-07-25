<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'>
<link href="<c:url value="/webjars/summernote/0.8.10/dist/summernote.css" />">
<link rel="stylesheet" type="text/css" href="../css/template.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>

<body>

	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
	<br>
	<br>
	<div id="main">

		<!-- first row -->
		<div class="row">

			<!-- user -->
			<div class="col-sm-4 underline">
				<span class="glyphicon glyphicon-user">${name}</span>
			</div>

			<!--  write -->
			<div class="col-sm-6">
				<form action="" class="form-group">
					<textarea rows="" cols="" class="form-control" id="summernote"
						name="contents">
					
					</textarea>
				</form>
			</div>
		</div>

		<!-- second row -->
		<div class="row">
			<!-- 알림 -->
			<div class="col-sm-4">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>알림</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>알림내용</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- 게시물(readAll) -->
			<div class="col-sm-6" id="readAll">
				<section>
					<!-- 게시자 정보 -->
					<header>
						<div class="">
							<img alt="프로필사진" src="" class="img-circle">
							<a>게시자이름</a>
							&middot;
							<a href="#">친구추가</a>							
						</div>
					</header>

					<!-- 이미지 -->
					<div id="img-div" class="text-center">
						<img alt="이미지 입니다" src="">
					</div>

					<!-- 댓글 및 좋아요 -->
					<div>
						<section>
							<button class="btn-link">
								<span class="glyphicon glyphicon-heart-empty"></span>
							</button>
							<span class="badge">좋아요개수</span>
						</section>
						
						<div>
							<ul class="list-group">
								<li class="list-group-item">
									<a href="">작성자 계정</a>
									<span>댓글내용</span>
								</li>
							</ul>
						</div>
					</div>
						
					<!-- 댓글 -->
						<section>
							<form action="#" class="form-group">
								<textarea rows="" cols="" class="form-control" placeholder="댓글 달기" id="ta">
									
								</textarea>
							</form>
						</section>
				</section>
			</div>
			
			
		</div>
	</div>


	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

<!-- script area -->
<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/webjars/summernote/0.8.10/dist/summernote.js"/>"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote(function() {
			height: 400

		});
	}) 
</script>
</body>
</html>