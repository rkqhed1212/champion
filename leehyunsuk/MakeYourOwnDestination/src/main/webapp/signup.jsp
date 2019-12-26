<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/css/signup.css" rel="stylesheet">
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	function pcheck() {
		var Check = $("pw").val
		var Check2 = $("tpw").val
		if (Check != Check2) {
				
		}
		
	}
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
		<form action="insert">
			<div id="content" align="center">
				<h3 class="title">아이디</h3>
				<input type="text" id="id" name="id" class="box" required="required"
					placeholder="아이디">
				<h3 class="title">비밀번호</h3>
				<input type="password" id="pw" name="pw" class="box"
					required="required" placeholder="비밀번호" onkeyup="pcheck()">
				<h3 class="title">비밀번호 확인</h3>
				<input type="password" id="tpw" name="tpw" class="box"
					required="required" placeholder="비밀번호 확인" onkeyup="pcheck()">
				<h3 class="title">이름</h3>
				<input type="text" id="name" name="name" class="box"
					required="required" placeholder="이름">
				<h3 class="title">나라</h3>
				<input type="text" id="country" name="country" class="box"
					required="required" placeholder="나라">
				<h3 class="title">번호</h3>
				<input type="text" id="tel" name="tel" class="box"
					required="required" placeholder="번호">
				<h3 class="title">이메일</h3>
				<input type="text" id="email" name="email" class="box"
				required="required" placeholder="이메일"> <br> 
				<!-- <button type="submit" name="submit">이메일 인증받기 (이메일 보내기)</button> -->
				<h3 class="title">이메일 인증</h3>
				<input type="text" id="userkey" name="userkey" class="box"
					required="required" placeholder="인증하기"> <br> <br>
				<input type="submit" value="가입" id="b1" class="b1">
			</div>
		</form>	
	</div>
</body>
</html>