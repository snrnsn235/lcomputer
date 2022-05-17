<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
</head>
<style>
h1 {
	text-align: center;
}

</style>
<body>
<h1>게시판 수정하기</h1>
<hr>
<br>
		<form action="/board/edit" align="center" name="board" method="post">
			<input type="hidden" name="bIdx" value="${board.bIdx }">
			<p> 제목 : <input type = "text" name="bTitle" value="${board.bTitle }">
			<p> 내용 : <input type = "text" name="bContent" value="${board.bContent }">
			<p> <input type="submit" value="수정완료"></p>
		</form>
		

</body>
</html>