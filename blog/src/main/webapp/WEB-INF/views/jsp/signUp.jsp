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
	href="<c:url value="/resources/css/signin.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/template.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/webjars/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css" />">

</head>
<body>

	<header>
		<%@ include file="../include/header.jsp"%>
	</header>

	<br>
	<br>
	<div class="row" id="main">
		<!-- 중앙 div -->
		<div class="col-sm-6 col-sm-offset-3">
			<!-- form -->
			<form id="form1" name="form1" role="form" class="form-horizontal"
				method="post">

				<div class="form-group">
					<label for="inputId" class="col-sm-2">Id :</label>
					<div class="col-sm-5 ">
						<input class="form-control input-sm" type="text" id="user_id"
							name="user_id" placeholder="아이디를 입력해주세요"> <span
							class="help-block" id="help-user_id">아이디는 영어와 숫자로 5자 이상 15자 이하로 설정해주세요</span>
					</div>
					<div class="col-sm-1"> 
						<button type="button" class="btn btn-default" id="check_dup_id">중복확인</button>
					</div>
				</div>

				<div class="form-group">
					<label for="inputNickname" class="col-sm-2 ">Nickname :</label>
					<div class="col-sm-5 ">
						<input class="form-control input-sm" type="text" id="nickname"
							name="nickname" placeholder="닉네임을 입력해주세요"> <span
							class="help-block" id="help-nickname">닉네임은 블로그에서 활동할 때 보이게 될 이름 입니다</span>
							
					</div>
					<div class="col-sm-1"> 
						<button type="button" class="btn btn-default" id="check_dup_nickname">중복확인</button>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword" class="col-sm-2">Password :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="password" id="passwd"
							name="passwd" placeholder="비밀번호를 입력해주세요"> <span
							class="help-block" id="help-passwd">비밀번호는 10자 이상 20자 이하로 설정해주세요</span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputName" class="col-sm-2">Name :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="text" id="user_name"
							name="user_name" placeholder="이름을 입력해주세요"> <span
							class="help-block" id="help-user_name"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputBirthDate" class="col-sm-2">Birth Date :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="text" id="birth_date"
							name="birth_date" placeholder="생일을 입력해주세요"> <span
							class="help-block" id="help-birth_date">생일을 선택해주세요</span>
					</div>
				</div>


				<div class="form-group ">
					<label for="inputmobile" class="col-sm-2">Mobile :</label>
					<div class="col-sm-5">
						<input class="form-control input-sm" type="text" id="mobile_num"
							name="mobile_num" placeholder="전화번호를 입력해주세요"> <span
							class="help-block" id="help-mobile_num">-없이 입력해주세요</span>
					</div>
				</div>


				<div class="form-group">
					<label for="inputAddress" class="col-sm-2">Address :</label>
					<div class="col-sm-10">
						<input class="form-control input-sm" type="text" id="address"
							name="address" placeholder="주소를 입력해주세요"> <span
							class="help-block" id="help-address"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail" class="col-sm-2">Email :</label>
					<div class="col-sm-3">
						<input type="text" id="email" name="email"
							class="form-control input-sm">
							<span class="help-block" id="help-email">이메일을 입력해주세요</span>
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
				</div>


				<div class="form-group">
					<input type="checkbox" id="agree" autocomplete="off"
						class="col-sm-1"> <a href="#">이용약관</a>에 동의합니다
				</div>

				<div class="form-group">
					<input type="button" class="btn btn-primary col-sm-push-4 col-sm-2"
						id="signUp" value="회원가입"> <input type="button"
						class="btn btn-warning col-sm-push-5 col-sm-2" id="home"
						value="돌아가기">
				</div>
			</form>
		</div>
	</div>


	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/jquery-ui/1.11.4/jquery-ui.min.js"/>"></script>


<script type="text/javascript">
//값 검증
var valid = new Array(7);
var validResult = false;

var check_dup_id = false;
var check_dup_nickname = false;
var agree = false;

// input 변수들
var user_id = $("#user_id");
var passwd = $("#passwd");
var nickname = $("#nickname");
var user_name = $("#user_name");
var birth_date = $("#birth_date");
var mobile_num = $("#mobile_num");
var address = $("#address");
var email = $("#email");

	$(function() {
		//datepicker
		birth_date.datepicker({
			format : "yy/mm/dd",
			autoclose: true,
			endDate : "today",
			todayHighlight : true,
			
		});
		
		//체크박스 체크 이벤트
		$("#agree").change(function() {
			if($("#agree").is(":checked")){
				agree = true;
			} else {
				agree = false;
			}
		});
		
		
		// 중복확인 클릭시 ajax event
		// 1. 아이디 체크
		$("#check_dup_id").click(function() {
			
			//null check
			if(user_id.val() == ''){
				user_id.focus();
				$("#help-user_id").css("color", "red");
				$("#help-user_id").html("사용하실  아이디를 입력하신 후에 검사해주세요.");
				return;
			} 
			
			// 유효성 check
			// 유효한 아이디면 ajax 실행
			if(valid[0] == 1){
				$.ajax({
					type : 'POST',
					url : "${path}/member/check_id.do",
					data : {"user_id" : user_id.val()},
					success : function(data) {
						if(data == 'valid'){
							check_dup_id = true;
							$("#help-user_id").css("color", "green");
							$("#help-user_id").html("사용할 수 있는 아이디입니다.");
						} else{
							user_id.focus();
							$("#help-user_id").css("color", "red");
							$("#help-user_id").html("중복된 아이디입니다. 다른 아이디를 사용해주세요.");
						}
					}
				});//ajax ends
			} else{
				user_id.focus();
				$("#help-user_id").css("color", "red");
				$("#help-user_id").html("유효하지 않은 아이디입니다.");
				return;
			}
		});// click dup_id ends
		
		//2. 닉네임 중복 체크
		$("#check_dup_nickname").click(function() {
			$.ajax({
				type: 'POST',
				url : '${path}/member/check_nickname.do',
				data : {'nickname': nickname.val()},
				success : function(data) {
					if(data == 'valid'){
						check_dup_nickname = true;
						$("#help-nickname").css("color", "green");
						$("#help-nickname").html("사용할 수 있는 닉네임입니다.");
					} else{
						user_id.focus();
						$("#help-nickname").css("color", "red");
						$("#help-nickname").html("중복된 닉네임입니다. 다른 닉네임을 사용해주세요.");
					}
				}
			});
		});//click dup_name ends 
		
		user_id.keyup(function() {
			var reg = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi;
			
			if(reg.test(user_id.val())){
				$("#help-user_id").css("color", "red");
				$("#help-user_id").html("아이디에는 한글을 사용할 수 없습니다.");
				valid[0] = 0;
			} else {
				var len_user_id = user_id.val().length;
				
				if(len_user_id < 5 || len_user_id > 15){
					$("#help-user_id").css("color", "red");
					$("#help-user_id").html("아이디는 5자 이상 15자 이하로 설정해주세요");
					valid[0] = 0;
				} else {
					$("#help-user_id").css("color", "green");
					$("#help-user_id").html("유효한  아이디입니다");
					valid[0] = 1;				
				}
			}
		});//user_id keyup
		
		passwd.keyup(function() {
			var len_passwd = passwd.val().length;
			if(len_passwd < 10 || len_passwd > 20){
				$("#help-passwd").css("color", "red");
				$("#help-passwd").html("비밀번호는 10자 이상 20자 이하로 설정해주세요");
				valid[1] = 0;
			} else {
				$("#help-passwd").css("color", "green");
				$("#help-passwd").html("유효한 비밀번호 입니다");
				valid[1] = 1;
			}
		}) //passwd keyup
		
		
		mobile_num.keyup(function() {
			var reg = /[^0-9]/gi;
			if(reg.test(mobile_num.val())){
				$("#help-mobile_num").css("color", "red");
				$("#help-mobile_num").html("-를 제외한 숫자만 입력해야 합니다");
				valid[2] = 0;
			} else {
				var len_mobile_num = mobile_num.val().length;
				if(10 > len_mobile_num || len_mobile_num  > 11){
					$("#help-mobile_num").css("color", "red");
					$("#help-mobile_num").html("전화번호는 10자리에서 11자리 입니다");
					valid[2] = 0;
				} else {
					$("#help-mobile_num").css("color", "green");
					$("#help-mobile_num").html("유효한 전화번호 입니다");
					valid[2] = 1;
				}
			}// if-else
			
		});// mobile_num keyup
		
		nickname.keyup(function() {
			var len_nickname = nickname.val().length;
			if( len_nickname > 6 || len_nickname <2){
				$("#help-nickname").css("color", "red");
				$("#help-nickname").html("별명은 2자 이상 6자 이하로 설정해주세요");
				valid[3] = 0;
			} else {
				$("#help-nickname").css("color", "green");
				$("#help-nickname").html("유효한 별명입니다");
				valid[3] = 1;
			}
		});// nickname keyup
		
		email.keyup(function() {

			var reg = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi;

			if(reg.test(email.val())){
					
					$("#help-email").css("color", "red");
					$("#help-email").html("이메일에는 한글이 들어갈 수 없습니다");
					valid[4] = 0;
				} else {
					
					if(email.val().length > 15 || email.val().length <4){
						$("#help-email").css("color", "red");
						$("#help-email").html("이메일 아이디는 5자 이상 15자 이하입니다");
						valid[4] = 0;
					} else{
						$("#help-email").css("color", "green");
						$("#help-email").html("유효한 이메일 입니다");
						valid[4] = 1;
					}
				} 
			}); // email key up
		
		user_name.keyup(function() {
			var reg = /[0-9]/gi;
			if(reg.test(user_name.val())){
				$("#help-user_name").css("color", "red");
				$("#help-user_name").html("이름에는 숫자가 들어갈 수 없습니다");
				valid[5] = 0;
			} else {
				var len_user_name = user_name.val().length;
				
				if(len_user_name > 20 || len_user_name <3){
					$("#help-user_name").css("color", "red");
					$("#help-user_name").html("이름은 3자 이상 20자 이하로 입력해주세요");
					valid[5] = 0;
				} else{
					$("#help-user_name").css("color", "green");
					$("#help-user_name").html("유효한 이름입니다");
					valid[5] = 1;
				}
			}		
		});// user_name keyup
		
		address.keyup(function() {
			var len_address = address.val().length;
			if(len_address <10 || len_address >50 ){
				$("#help-address").css("color", "red");
				$("#help-address").html("유효한 주소가 아닙니다");
				valid[6] = 0;
			} else {
				$("#help-address").css("color", "green");
				$("#help-address").html("유효한 주소입니다");
				valid[6] = 1;
			} 
		});// address keyup	
		
		$("#signUp").click(function() {

			//null check
			//user_id
			if(user_id.val() == ''){
				user_id.focus();
				$("#help-user_id").css("color", "red");
				$("#help-user_id").html("아이디를 입력해주세요");
				return;
			}
			
			if(passwd.val() == ''){
				passwd.focus();
				$("#help-passwd").css("color", "red");
				$("#help-passwd").html("비밀번호를 입력해주세요");
				return;
			}
			
			if(nickname.val() == ''){
				nickname.focus();
				$("#help-nickname").css("color", "red");
				$("#help-nickname").html("별명을 입력해주세요");
				return;
			}
			
			if(user_name.val() == ''){
				user_name.focus();
				$("#help-user_name").css("color", "red");
				$("#help-user_name").html("이름을 입력해주세요");
				return;
			}
			
			if(birth_date.val() == ''){
				birth_date.focus();
				$("#help-birth_date").css("color", "red");
				$("#help-birth_date").html("생일을 선택해주세요");
				return;
			}
			
			if(mobile_num.val() == ''){
				mobile_num.focus();
				$("#help-mobile_num").css("color", "red");
				$("#help-mobile_num").html("전화번호를 입력해주세요");
				return;
			}
			
			if(address.val() == ''){
				address.focus();
				$("#help-address").css("color", "red");
				$("#help-address").html("주소를 입력해주세요");
				return;
			}
			
			if(email.val() == ''){
				email.focus();
				$("#help-email").css("color", "red");
				$("#help-email").html("이메일을 입력해주세요");	
				return;
			}
			
/* 			for(var i=0; i<valid.length; i++){
				console.log("valid"+i+":"+valid[i]);
			} */
			
			// null값과 0값을 찾지 못하면 
			if(valid.indexOf(null) == -1 && valid.indexOf(0) == -1 ){
				validResult = true;
			}
			
			// validResult가 true일 때(즉 유효성 검사 결과가 ok일 때 )
/* 			if(validResult){
				$("#form1").attr("action", "${path}/member/insert.do");
				$("#form1").submit();				
			} else{
				alert("입력값을 다시 확인해주세요");
			} */

			
			if(!validResult){
				alert("입력값을 다시 확인해주세요");
			}else if(!check_dup_id){
				user_id.focus();
				$("#help-user_id").css("color", "red");
				$("#help-user_id").html("아이디 중복검사를 해주세요");
			}else if(!check_dup_nickname){
				nickname.focus();
				$("#help-nickname").css("color", "red");
				$("#help-nickname").html("닉네임 중복검사를 해주세요");				
			}else if(!agree){
				alert("약관에 동의를해주세요");
			} else{
				$("#form1").attr("action", "${path}/member/insert.do");
				$("#form1").submit();	
			}
			
			
		});//sign up click
		
		$("#home").click(function() {
			location.href = "${path}";
		});// home click ends
		
		
	});// windown on load


</script>

<script type="text/javascript" src="<c:url value="/webjars/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js" />"></script>

</body>
</html>