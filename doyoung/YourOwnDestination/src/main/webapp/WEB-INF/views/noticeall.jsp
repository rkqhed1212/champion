<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 전체 확인</title>
</head>
<body>
게시판 전체 보기
<c:forEach items="${Nlist}" var="dto">
<div>
<hr>
번호 : ${dto.notice_id}<br>
제목 : <a href="selectone?notice_id=${dto.notice_id}">${dto.notice_title}</a><br>
내용 : ${dto.notice_content}<br>
이미지 : ${dto.notice_img}<br>
글쓴이 : ${dto.mid}<br>
작성일자 : ${dto.notice_date}<br>
목적지 : ${dto.pname}<br>
</div>
</c:forEach>
<a href="insert.jsp">작성 페이지로 </a>
</body>
</html>