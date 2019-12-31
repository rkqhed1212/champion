<%@page import="com.champion.mvc01.MemberDTO"%>
<%@page import="com.champion.mvc01.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#login").click(function () {
		var id = $("#id").val();
		var pw = $("#pw").val();	
		console.log(id)
		console.log(pw)
		$.ajax({
			url:"loginCheck",
			data:{
				id: id, 
				pw: pw,
			},
			success: function (result) {
				console.log(result)
				console.log("ajax전송 완료")
				if (id != result) {
					alert("아이디, 비밀번호, 가입여부를 확인해주세요")
					/* $("#id").val(null); */
					$("#pw").val(null);
					$("#error").empty();
					$("#error").append("ㅎㅀㅇㅎㅇㅀ")
					return false;
				}else{
					alert("환영합니다");
					location.href = "index.jsp"
				}
			}
		});// ajax
	});//로그인 
});//end
</script>
<%-- <% String sid = (String)session.getAttribute("id"); %> --%>
<body>		
	<br>
	<div id="content" align="center">
			<h3 class="title">아이디</h3>
			<input type="text" id="id" name="id" class="box" required="required"
				placeholder="아이디">
			<h3 class="title">비밀번호</h3>
			<input type="password" id="pw" name="pw" class="box" required="required" placeholder="비밀번호" onkeyup="pcheck()">
			<div id="error">
			</div>
			<input type="button" value="로그인하기" id="login"> 
			<input type="button" value="회원가입" onclick="goJoinForm()">
		
	</div>
</body>
</html>