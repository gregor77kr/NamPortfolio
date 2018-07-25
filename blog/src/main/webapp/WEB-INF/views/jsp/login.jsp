<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'>
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

<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
</body>
</html>