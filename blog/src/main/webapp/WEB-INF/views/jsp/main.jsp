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
			<c:forEach var="i" items="${map.list}">			
				<div class="col-sm-offset-4 col-sm-5" id="readAll">
					<section>
						<!-- 게시자 정보 -->
						<header>
							<div class="posi-left" id="writer_info">
								<img alt="프로필사진" src="" class="img-circle">
								<a>${i.nickname}</a>
								&middot;
								<a href="#">친구추가</a>
								<span>
									게시일 
									<button type="button" class="btnUpdate" value="${i.up_no}">수정</button>
									<button type="button" class="btnRemove" value="${i.up_no}">삭제</button>																	
								</span>			
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
							<p id="p${i.up_no}"> ${i.comments}</p>							
							<div>
							<button class="btn-link">
									<span class="glyphicon glyphicon-heart-empty"></span>
								</button>
								
								<span class="badge">좋아요개수</span>
			
							</div>
						</div>
						
						
						<div id="${i.up_no}" >
							<!-- 댓글 및 좋아요 -->
								<div id="reply-list" class="posi-left">
									<c:forEach var="j" items="${map.reply_list}">
										<c:if test="${i.up_no == j.up_no }">
											<p id="${j.reply_no}">
												${j.nickname}(${j.user_id}) : <mark>${j.reply} </mark> <small>${j.reply_date}</small>
												<button class="replyUpdate" value="${j.reply_no}"><span class="glyphicon glyphicon-pencil" style="display: inline;"></span> </button>
												<button class="replyDelete" value="${j.reply_no}"><span class="glyphicon glyphicon-remove" style="display: inline;"></span> </button>
											</p>
										</c:if>
									</c:forEach>
								</div>							
						
							<!-- 댓글 -->
							
								<form class="form-reply" method="get">
									<div id="reply-div" class="posi-left">
										<img alt="프로필" src="" class="img-circle">
										<input type="hidden" name="up_no" value="${i.up_no}" id="up_no">										
										<input type="text" name="reply" placeholder="댓글...">
										<label> <button type="button" class="btnRemove"><span class="glyphicon glyphicon-remove"></span></button></label>								
									</div>
								</form>							
							
						</div>
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
var up_no;
$(function() {
	$("#btnWrite").click(function() {
		$("#form1").attr("action", "${path}/board/write.do");
		$("#form1").submit();
	});// write ends
	
	// focus event
	$('input[type=text]').focus(function() {
		up_no = $(this).siblings('input[type=hidden]').val();
		
	});
	
	// 엔터키 누르면 작성되는 js
	$('[type=text]').keypress(function(e) {
		
		if(e.which==13){
			 addComment(up_no); 
		}
	});
	
	$(".btnRemove").click(function() {
		var up_no = $(this).val();
		
		if(confirm("이 게시물을 삭제하시겠습니까?")){
			location.href = "${path}/board/delete.do?up_no="+up_no;
		}
	});// 게시물 삭제
	
	$(".btnUpdate").click(function() {
		var up_no = $(this).val();
		window.open(
			"${path}/board/updateForm.do?up_no="+up_no,
			"updateForm",
			"width=500, height=500"
		);
	});// 게시물 수정
	
	$(document).on('click', '.replyDelete', function() {
		var reply_no = $(this).val();
		if(confirm("댓글을 삭제하시겠습니까?")){
			$.ajax({
				type : 'POST',
				url : "${path}/reply/delete.do",
				data : {'reply_no' : reply_no},
				dataType : "text",
				success : function(data) {
					if(data =="success"){
						$("#"+reply_no).remove();
					}
				}
			});//ajax delete ends
		}
	});// 게시물 삭제
	
	
	$(document).on('click', '.replyUpdate', function() {
		var reply_no = $(this).val();
		var mark = $("#"+reply_no +">mark").text();
		var small = $("#"+reply_no +">small").text();
		//1. 수정버튼을 누르면
		//2. p태그 밑의 mark가 input type text로 변하고
		//3. 거기에 글을 적어서 넣은 후 엔터를 치면
		//4. input text가 생기고 
		//5. 그곳의 value를 받아와서! ajax를 통해서 update를 한다
		//6. ajax의 success function에서 mark 값을 다시 바꿔준다.
		$("#"+reply_no+">mark, small, button").remove();
		$("#"+reply_no).append('<input type="text" id="reply">');
		$("#"+reply_no).append('<button class="replyUpdateConfirm">수정</button>');
		$("#"+reply_no).append('<button class="replyUpdateCancle">취소</button>');
		
		$(document).on('click', '.replyUpdateConfirm', function() {
			var reply = $(this).siblings('input[type=text]').val();
			updateTransfer(reply_no, reply);			
		});
		//취소누르면 이전 댓글이 다시 표시되게 그려야한다
		
		$(document).on('click', '.replyUpdateCancle', function() {
			$("#"+reply_no +">input, button, mark, small").remove();
			$("#"+reply_no).append('<mark>' + mark + '</mark>');
			$("#"+reply_no).append('<small>' + small + '</small>');
			$("#"+reply_no).append('<button class="replyUpdate" value="' + reply_no + '"><span class="glyphicon glyphicon-pencil" style="display: inline;"></span> </button>');
			$("#"+reply_no).append('<button class="replyDelete" value="' + reply_no + '"><span class="glyphicon glyphicon-remove" style="display: inline;"></span> </button>');
		
		});
	});
	
	
})// windown on load

function updateTransfer(reply_no, reply) {
	$.ajax({
		type : 'POST',
		url : "${path}/reply/update.do",
		data : {'reply_no' : reply_no, 'reply' : reply},
		dataType : 'text',
		success : function(data) {
				
				var reply_date = dateSelect();
				$("#"+reply_no + "> input[type='text'], button, mark, small").remove();
				$("#"+reply_no).append('<mark>' + reply + '</mark>');
				$("#"+reply_no).append('<small>' + reply_date + '</small>');
				$("#"+reply_no).append('<button class="replyUpdate" value="' + reply_no + '"><span class="glyphicon glyphicon-pencil" style="display: inline;"></span> </button>');
				$("#"+reply_no).append('<button class="replyDelete" value="' + reply_no + '"><span class="glyphicon glyphicon-remove" style="display: inline;"></span> </button>');
		}
	});
}//transfer ends

function dateSelect(){
	var today = new Date();
	var month = today.getMonth()+ 1;
	
	var twoDigitsMonth = (month < 10) ? "0"+month : month;	
	var year = today.getFullYear().toString().substring(2);	
	
	var curDate = year + "/" + twoDigitsMonth + "/" + today.getDate();
	return curDate;
}


function getCommentList(up_no) {
	
	$.ajax({
		type : 'POST',
		url : "${path}/reply/readOne.do",
		data : {'up_no' : up_no},
		success : function(data) {
			
			var html = "";
			
			$.each(data, function(idx, val) {
				// <p>${j.nickname}(${j.user_id}) : <mark>${j.reply} </mark> <small>${j.reply_date}</small> </p>
				html += "<p>" + val.nickname + "(" + val.user_id + ") :";
				html += "<mark>" + val.reply + "</mark>";
				html += "<small>" + val.reply_date + "</small>" + "</p>";
			});
			
			$("#" + up_no +">#reply-list").html(html);
		}
	});
}// getCommentList ends

function addComment(up_no) {
	
	$.ajax({
		type : 'POST',
		url : '${path}/reply/write.do',
		data : $("#"+up_no+">form").serialize(),
		dataType : "text",
		success : function(data) {
			if(data == 'success'){
				getCommentList(up_no);
			}
			
		}
	})
} // add comment ends


</script>

</body>
</html>