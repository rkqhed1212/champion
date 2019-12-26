<%@page import="com.champion.mvc01.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	MemberDAO dao = new MemberDAO();
	
%>
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#login").click(function () {
		var id = $("#id").val
		var pw = $("#pw").val
		if(id == ${id})
			
	
	});
});







</script>
<body>
${errorMessage}<br>
<form action="loginCheck" method="post">
<div id="content" align="center">
				<h3 class="title">아이디</h3>
				<input type="text" id="id" name="id" class="box" required="required"
					placeholder="아이디">
				<h3 class="title">비밀번호</h3>
				<input type="password" id="pw" name="pw" class="box"
					required="required" placeholder="비밀번호" onkeyup="pcheck()">
					<br>
<input type="submit" value="로그인하기" id="login">
<input type="button" value="회원가입" onclick="goJoinForm()">
</form>


</body>
</html>