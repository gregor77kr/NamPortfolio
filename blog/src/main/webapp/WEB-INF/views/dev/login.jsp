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


	<div class="col-sm-6 col-sm-offset-3">
		<!-- form -->
		<form action="" role="form" class="form-horizontal">
			
			<div class="form-group" >
				<div class="col-sm-10" id="background">
					<img alt="" src="../images/welcome.jpg">
				</div>
			</div>
			
			
			<div class="form-group">		
				<div class="col-sm-10 ">
					<input class="form-control input-sm" type="text" id="id" placeholder="BlogDay 아이디를 입력해주세요"> 
						<span class="help-block">아이디를 분실하신경우 <a href="#"><span class="glyphicon glyphicon-question-sign"></span></a></span>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-10">
					<input class="form-control input-sm" type="password" id="password" placeholder="BlogDay 비밀번호를 입력해주세요"> 
					<span class="help-block">비밀번호를를 분실하신경우 <a href="#"><span class="glyphicon glyphicon-question-sign"></span></a></span>
				</div>
			</div>


			<div class="form-group">
				<button type="button" class="btn btn-success col-sm-push-3 col-sm-2">
					로그인 <i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="button" class="btn btn-info col-sm-push-4 col-sm-2">
					돌아가기 <i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>


	<%@ include file="../include/footer.jsp"%>


</body>
</html>