/**
 * main.jsp에 사용될 java Script
 */

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
