<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'>
<%-- <link href="<c:url value="/webjars/summernote/0.8.10/dist/summernote.css" />"> --%>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/template.css"></c:url>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/main.css"></c:url>'>
</head>

<body>

	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
		
	<br>
	<br>
	
	<div id="main">
		<div class="row">
		<!-- first row -->
			<!-- user -->
			<div class="col-sm-4">
				<ul class="nav nav-stacked" style="position: fixed;">
					
					<li>
						<a><span class="glyphicon glyphicon-user"></span>&nbsp;${sessionScope.user_info.user_name}</a>
					</li>
					<!-- 내 정보 관리 -->
					<li class="nav-header dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							내 정보 관리 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">프로필 관리</a></li>
							<li><a href="#">계정 관리</a></li>
						</ul>
					</li>
					<!-- 내 정보 관리 끝 -->
					
					<!-- 알림 -->
					<li class="nav-header dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							알림 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">알림들</a></li>
						</ul>
					</li>
					<!-- 알림 끝 -->
					
					<!-- 커뮤니티 -->
					<li class="nav-header dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							내 커뮤니티 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#"> 커뮤니티 목록</a>
						</ul>
					</li>
					<!-- 커뮤니티 끝 -->
				</ul>
			</div>
			
			<!--  write -->
			<div class="col-sm-6" id="write_div">
			
				<form  method="post" enctype="multipart/form-data" id="form1">
					<div class="form-group">
						<textarea rows="" cols="" class="form-control" id="text" placeholder="당신의 일상을 공유해보세요" name="comments"></textarea>
						<div id="write_btn_div">
							<input type="file" class="form-control" value="사진올리기" name="file">
							<button class="btn btn-primary" id="btnWrite"><span class="glyphicon glyphicon-ok-sign">&nbsp;게시</span></button>				
						</div>
					</div>	
				</form>
			</div>
		</div>

		<!-- second row -->
		<div class="row">


			<!-- 게시물(readAll) -->
			<c:forEach var="i" items="${list}">			
				<div class="col-sm-offset-4 col-sm-5" id="readAll">
					<section>
						<!-- 게시자 정보 -->
						<header>
							<div class="posi-left" id="writer_info">
								<img alt="프로필사진" src="" class="img-circle">
								<a>${i.nickname}</a>
								&middot;
								<a href="#">친구추가</a>
								<span>게시일 <button type="button" id="btnRemove"><span class="glyphicon glyphicon-remove"></span></button></span>							
							</div>
						</header>
	
						<!-- 이미지 -->
						<c:if test="${i.file_name != null }">
							<div class="row">
								<div class="col-sm-offset-2 col-sm-8">
									<img  src="${path}/images/${i.user_id}/${i.file_name}" style="width: 100%;">													
								</div>				
							</div>
						</c:if>
						
						<div id = "comments" class="posi-left">
							${i.comments}							
							<div>
								<button class="btn-link">
									<span class="glyphicon glyphicon-heart-empty"></span>
								</button>
								<span class="badge">좋아요개수</span>							
							</div>
						</div>
	
						<!-- 댓글 및 좋아요 -->
						<div id="like" class="posi-left">
							<div>
								<img alt="프로필" src="" class="img-circle">
								<span id="reply-list">
									댓글!
								</span>
							</div>
						</div>
							
						<!-- 댓글 -->
							<section>
								<form id="form-reply" method="get">
									<div id="reply-div" class="posi-left">
										<img alt="프로필" src="" class="img-circle">
										<input type="hidden" name="up_no" value="${i.up_no}">										
										<input type="text" name="reply" placeholder="댓글...">
										<label> <button type="button" id="btnRemove"><span class="glyphicon glyphicon-remove"></span></button></label>								
									</div>
								</form>
							</section>
					</section>
				</div>
			</c:forEach>
			
			</div>
		</div>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

<!-- script area -->
<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
<%-- <script type="text/javascript" src="<c:url value="/resources/js/main.js"/>" charset="UTF-8"></script> --%>

<script type="text/javascript">
$(function() {
	$("#btnWrite").click(function() {
		$("#form1").attr("action", "${path}/board/write.do");
		$("#form1").submit();
	});// write ends

	// 엔터키 누르면 작성되는 js
	$('[type=text]').keypress(function(e) {
		if(e.which==13){
			$("#form-reply").attr("action", "${path}/reply/write.do");
			$("#form-reply").submit();
		}
	});
})

</script>

</body>
</html>