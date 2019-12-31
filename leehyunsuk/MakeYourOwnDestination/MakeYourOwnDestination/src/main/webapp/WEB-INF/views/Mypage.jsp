<%@page import="com.champion.mvc01.MemberDAO"%>
<%@page import="com.champion.mvc01.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/css/Mypage.css" rel="stylesheet">
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
</script>

</head>
<body>	
	<div id="wrap">
		<div id="header" class="join" align="center">
			<h1>
				<a href="index.jsp" class="logo"> <span class="blind">CHAMPION</span>
				</a>
			</h1>
		</div>
		<div align="center"> 
		<h2>회원정보 수정</h2>
		<hr>
		</div>
		<% String id = (String)session.getAttribute("id"); %>
		<%-- <%
		MemberDTO dto = new MemberDTO();
		String id = (String)session.getAttribute("id"); 
		MemberDAO dao = new MemberDAO();
		MemberDTO dto2 = dao.select(memberDTO);
		%> --%>
		<form action="update">
			<div id="content" align="center">
				<h3 class="title">아이디</h3>
				<h3 align="left" id="id" class="my">${dto.id}</h3>
				<%-- <input type="text" id="id" name="id" class="box" value="<%= id %>"> --%>
				<h3 class="title">비밀번호</h3>
				<input type="password" id="pw" name="pw" class="box"
					required="required" placeholder="비밀번호" onkeyup="pcheck()">
				<h3 class="title">비밀번호 확인</h3>
				<input type="password" id="tpw" name="tpw" class="box"
					required="required" placeholder="비밀번호 확인" onkeyup="pcheck()">
				<h3 class="title">이름</h3>
				<h3 align="left" id="name" class="my">${dto.name}</h3>
				<h3 class="title">나라</h3>
				<h3 align="left" id="country" class="my">${dto.country}</h3>
				<h3 class="title">번호</h3>
				<input type="text" id="tel" name="tel" class="box"
					required="required" placeholder="번호">
				<h3 class="title">이메일</h3>
				<input type="text" id="email" name="email" class="box"
				required="required" placeholder="이메일">
				<h3 class="title">이메일 인증</h3>
				<input type="text" id="userkey" name="userkey" class="box"
					required="required" placeholder="인증하기"> <br> <br> 
				<button id="b1" class="b1">
				수정
				</button>
				<button id="b2" class="b2">
				탈퇴
				</button>
			</div>
		</form>	
	</div>
</body>
</html>