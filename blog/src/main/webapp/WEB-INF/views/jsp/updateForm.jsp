<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/main.css"></c:url>'>

</head>
<body>
	<div class="container-fluid">
		<form id="updateForm" class="form-group">
			<label for="text">내용 :</label>
			<textarea rows="" cols="" class="form-control" id="text" name="comments" placeholder="${dto.comments}"></textarea>
			<input type="hidden" id="up_no" name="up_no" value="${dto.up_no}">
			<button type="button" class="btn btn-primary" id="form_btnUpdate">수정하기</button>
			<button type="button" class="btn btn-warning" id="form_btnBack">취소하기</button>
		</form>
	</div>

</body>
<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>" ></script>
<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>

<script type="text/javascript">
	$(function() {
		$("#form_btnUpdate").click(function() {
			var update_data = $("#updateForm").serialize();
			var up_no = $("#up_no").val();
			
			$.ajax({
				type : "post",
				url : "${path}/board/update.do",
				data : update_data,
				dataType : "json",
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success : function (data) {
					$(opener.document).find("#p"+up_no).text(data.comments);
					self.close();
				}
			});//ajax ends
			
		});//update ends
		
		$("#form_btnBack").click(function() {
			self.close();
		});
	});

</script>


</html>