<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/signin.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/template.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/webjars/jquery-ui/1.11.4/jquery-ui.min.css" />">

</head>
<body>
	
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
	
	<br>
	<br>
	<div class="row" id="main">
		<!-- 중앙 div -->
		<div class="col-sm-6 col-sm-offset-3" >
			<!-- form -->
			<form id="form1" name="form1" role="form" class="form-horizontal" method="post">

				<div class="form-group">
					<label for="inputId" class="col-sm-2" >Id :</label>
					<div class="col-sm-5 ">
						<input class="form-control input-sm" type="text" id="user_id" name="user_id"
							placeholder="아이디를 입력해주세요"> <span class="help-block">아이디는
							8자 이상 15자 이하로 설정해주세요</span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputNickname" class="col-sm-2 ">Nickname :</label>
					<div class="col-sm-5 ">
						<input class="form-control input-sm" type="text" id="nickname" name="nickname"
							placeholder="닉네임을 입력해주세요"> <span class="help-block">닉네임은
							블로그에서 활동할 때 보이게 될 이름 입니다</span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword" class="col-sm-2">Password :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="password" id="passwd" name="passwd"
							placeholder="비밀번호를 입력해주세요"> <span class="help-block">비밀번호는
							10자 이상 20자 이하로 설정해주세요</span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputName" class="col-sm-2">Name :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="text" id="user_name" name="user_name"
							placeholder="이름을 입력해주세요"> <span class="help-block"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputBirthDate" class="col-sm-2">Birth Date :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="text" id="birth_date" name="birth_date" placeholder="생일을 입력해주세요"> 
						<span class="help-block"></span>
					</div>
				</div>

 
				<div class="form-group ">
					<label for="inputmobile" class="col-sm-2">Mobile :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="text" id="mobile_num" name="mobile_num"
							placeholder="전화번호를 입력해주세요"> <span class="help-block">-없이
							입력해주세요</span>
					</div>
				</div>


				<div class="form-group">
					<label for="inputAddress" class="col-sm-2">Address :</label>
					<div class="col-sm-10">
						<input class="form-control input-sm" type="text" id="address" name="address"
							placeholder="주소를 입력해주세요"> <span class="help-block"></span>
					</div>
				</div>
				<p></p>

				<div class="form-group">
					<label for="inputEmail" class="col-sm-2">Email :</label>
					<div class="col-sm-3">
						<input type="text" id="text" name="email" class="form-control input-sm">
					</div>
<!-- 					<div class="col-sm-1">
						<label for="aeroba">@</label>
					</div> -->
					<div class="col-sm-5">
						<select class="form-control input-sm" name="domain">
							<option>naver.com</option>
							<option>google.com</option>
							<option>yahoo.com</option>
							<option>nate.com</option>
						</select>
					</div> 
					<span class="help-block"></span>
				</div>


				<div class="form-group">
					<input type="checkbox" id="agree" autocomplete="off"
						class="col-sm-1"> <a href="#">이용약관</a>에 동의합니다	
				</div>

				<div class="form-group">
					<input type="button" class="btn btn-primary col-sm-push-4 col-sm-2" id="signUp" value="회원가입">
					
					<input type="button"
						class="btn btn-warning col-sm-push-5 col-sm-2" id="home" value="돌아가기">
				</div>
			</form>
		</div>
	</div>


	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/webjars/jquery-ui/1.11.4/jquery-ui.min.js"/>"></script>


<script type="text/javascript">

	$(function() {
		$("#signUp").click(function() {
			$("#form1").attr("action", "${path}/member/insert.do");
			$("#form1").submit();

		});// button signUp event ends
		
		$("#home").click(function() {
			location.href="${path}";
		});
		
		$("#birth_date").datepicker({
			
		});//datepicker
		
	});
	
</script>

</body>
</html>