<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/login.css"></c:url>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/template.css"></c:url>'>

</head>

<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>

	<div class="text-center" id="main">

		<form class="form-signin" method="post">
			<img alt="" src="" class="mb-4" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please Sign in</h1>

			<c:if test="${message == 'error'}">
				<div style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</div>
			</c:if>

			<label for="inputUserId" class="sr-only">Id</label> <input
				type="text" id="user_id" name="user_id" class="form-control"
				placeholder="아이디를 입력해주세요"> <input type="password"
				id="passwd" name="passwd" class="form-control"
				placeholder="비밀번호를 입력해주세요">
			<button type="button" class="btn btn-primary" id="btnLogin">로그인</button>
			<button type="button" class="btn btn-warning" id="btnHome">홈으로</button>
		</form>

	</div>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript">
		$(function() {
			$("#btnLogin").click(function() {
				submitForm();
			});

			$("#btnHome").click(function() {
				location.href = "${path}";
			});// home ends
			
			$("#passwd").keypress(function(e) {
				if(e.which == 13){
					submitForm();	
				}
			});
			
		})// document ready ends
		
		function submitForm() {
			if($("#user_id").val() == ""){
				alert("아이디를 입력하세요");
				$("#userid").focus();
				return; // return해야 함수가 종료됨
			}
			
			if($("#passwd").val() == ""){
				alert("비밀번호를 입력하세요");
				$("#passwd").focus();
				return;
			}
			$(".form-signin").attr("action", "${path}/login/loginProcess.do");
			$(".form-signin").submit();
		}// submitForm ends

	</script>
</body>
</html>