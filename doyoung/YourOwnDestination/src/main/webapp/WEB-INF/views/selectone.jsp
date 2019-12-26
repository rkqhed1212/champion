<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 상세 화면</title>
<script type="text/javascript">
</script>
</head>
<body>${dto.notice_id } ${dto.notice_title } ${dto.notice_content }

	${dto.notice_img } ${dto.mid } ${dto.pname } ${dto.notice_date }
	
	<form action="cinsert">
	댓글 내용 : <input type="text">
	<input type="submit" value="작성">
	</form>
	<c:forEach items="${Clist}" var="cdto">
	작성자 : ${cdto.mid}
	내용 : ${cdto.comment_content}
	작성일자 : ${cdto.comment_date}
	</c:forEach>
	
</body>
</html>