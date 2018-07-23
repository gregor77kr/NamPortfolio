<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/template.css">

</head>

<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>

	<div class="text-center"  id="main">
	
		<form action="" class="form-signin">
			<img alt="" src="" class="mb-4" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please Sign in</h1>
			<label for="inputUserId" class="sr-only">Id</label>
			<input type="text" id="user_id" class="form-control" placeholder="아이디를 입력해주세요">
			<input type="password" id="passwd" class="form-control" placeholder="비밀번호를 입력해주세요">
			<button type="button" class="btn btn-primary">로그인</button>
			<button type="button" class="btn btn-warning">홈으로</button>			
		</form>
	
	</div>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>


</body>
</html>