<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>작성화면</title>
</head>
<body>
<form action="Ninsert" method="post" enctype="multipart/form-data">
제목 : <input type="text" name="notice_title"><br>
내용 : <input type="text" name="notice_content"><br>
목적지 : <input type="text" name="pname"><br>
이미지 : <input type="file" name="notice_img"><br>
작성자 : <input type="text" name="mid"><br>
<input type="submit" value="작성">
</form>
</body>
</html>