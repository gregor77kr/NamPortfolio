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

<link rel="stylesheet" type="text/css" href="../css/signin.css">

</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<!-- 중앙 div -->
	<div class="col-sm-6 col-sm-offset-3">
		<!-- form -->
		<form action="" role="form" class="form-horizontal">

			<div class="form-group">
				<label for="inputId" class="col-sm-2 ">Id :</label>
				<div class="col-sm-5 ">
					<input class="form-control input-sm" type="text" id="user_id"
						placeholder="아이디를 입력해주세요"> <span class="help-block">아이디는
						8자 이상 15자 이하로 설정해주세요</span>
				</div>
			</div>

			<div class="form-group">
				<label for="inputNickname" class="col-sm-2 ">Nickname :</label>
				<div class="col-sm-5 ">
					<input class="form-control input-sm" type="text" id="nickname"
						placeholder="닉네임을 입력해주세요"> <span class="help-block">닉네임은
						블로그에서 활동할 때 보이게 될 이름 입니다</span>
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword" class="col-sm-2">Password :</label>
				<div class="col-sm-5">
					<input class="form-control input-sm" type="password" id="password"
						placeholder="비밀번호를 입력해주세요"> <span class="help-block">비밀번호는
						10자 이상 20자 이하로 설정해주세요</span>
				</div>
			</div>

			<div class="form-group">
				<label for="inputName" class="col-sm-2">Name :</label>
				<div class="col-sm-5">
					<input class="form-control input-sm" type="text" id="name"
						placeholder="이름을 입력해주세요"> <span class="help-block"></span>
				</div>
			</div>

			<div class="form-group">
				<label for="inputBirthDate" class="col-sm-2">Birth Date :</label>
				<div class="col-sm-5">
					<input class="form-control input-sm" type="date" id="birth_date"
						placeholder="생일을 입력해주세요"> <span class="help-block"></span>
				</div>
			</div>


			<div class="form-group ">
				<label for="inputmobile" class="col-sm-2">Mobile :</label>
				<div class="col-sm-5">
					<input class="form-control input-sm" type="tel" id="mobile"
						placeholder="전화번호를 입력해주세요"> <span class="help-block">-없이
						입력해주세요</span>
				</div>
			</div>


			<div class="form-group">
				<label for="inputAddress" class="col-sm-2">Address :</label>
				<div class="col-sm-10">
					<input class="form-control input-sm" type="text" id="address"
						placeholder="주소를 입력해주세요"> <span class="help-block"></span>
				</div>
			</div>
			<p></p>

			<div class="form-group">
				<label for="inputEmail" class="col-sm-2">Email :</label>
				<div class="col-sm-3">
					<input type="email" id="email" class="form-control input-sm">
				</div>
				<div class="col-sm-1">
					<label for="aeroba">@</label>
				</div>
				<div class="col-sm-5">
					<select class="form-control input-sm">
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
				<button type="button" class="btn btn-primary col-sm-push-4 col-sm-2">
					회원가입 <i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="button" class="btn btn-warning col-sm-push-5 col-sm-2">
					가입취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>


		</form>
	</div>


	<%@ include file="../include/footer.jsp"%>


</body>
</html>