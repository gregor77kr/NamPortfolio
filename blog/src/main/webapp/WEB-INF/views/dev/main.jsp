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

<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>

<body>
	<%@ include file="../include/header.jsp" %>
	
	<div class="container-fluid">
		
		<!-- first row -->
		<div class="row">
		
			<!-- user -->
			<div class="col-sm-4 underline">
				<span class="glyphicon glyphicon-user">${name}</span>
			</div>
			
			<!--  write -->
			<div class="col-sm-6">
				<form action="" class="form-group">
					<textarea rows="" cols="" class="form-control" id="summernote" name="contents">
					
					</textarea>
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
			<div class="col-sm-8">second col-sm-8(게시판)</div>
		</div>
	</div>
	
	
	<%@ include file="../include/footer.jsp" %>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#summernote').summernote(function() {
				height : 400

			});
		})
	</script>
</body>
</html>