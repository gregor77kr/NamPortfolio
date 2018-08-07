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
				<span class="glyphicon glyphicon-user underline">&nbsp;${sessionScope.user_info.user_name}</span>
 				<ul class="nav nav-pills nav-stacked">
					<li><a href="#">내 정보 관리</a></li>
					<li><a href="#">내 친구 관리</a></li>
					<li><a href="#">내 커뮤니티</a></li>				
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
			<c:forEach var="i" items="${list}">			
				<div class="col-sm-offset-4 col-sm-6" id="readAll">
					<section>
						<!-- 게시자 정보 -->
						<header>
							<div class="">
								<img alt="프로필사진" src="" class="img-circle">
								<a>${i.user_name}</a>
								&middot;
								<a href="#">친구추가</a>							
							</div>
						</header>
	
						<!-- 이미지 -->
						<c:if test="${i.file_name != null }">
							<div class="row">
								<div class="col-sm-offset-2 col-sm-8">
									<img  src='${path}/images/${i.file_name}' style="width: 100%">													
								</div>				
							</div>
						</c:if>
						
						<div id = "comments">
							${i.comments}							
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
										<a href="">댓글 작성자</a>
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
			</c:forEach>
			
			</div>
		</div>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

<!-- script area -->
<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
<script type="text/javascript">
	$(function() {
		$("#btnWrite").click(function() {
			$("#form1").attr("action",
			"${path}/board/write.do");
			$("form1").submit();
		});// write ends
	})

</script>
</body>
</html>