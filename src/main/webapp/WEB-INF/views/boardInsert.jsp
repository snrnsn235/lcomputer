<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 추가</title>
</head>
<body>
<div style = "text-align:center; border-collapse:collapse;	width:500px; margin:40px auto;">
<h2>게시판 추가하기</h2>
<form action="/board/insert" method="post" enctype="multipart/form-data">
	<p> 제목: <input type = "text" name="bTitle"  placeholder = "제목을 입력해주세요"></p>
	<P>	내용 : <textarea name="bContent" placeholder = "내용을 입력해주세요." rows="1" cols="50" ></textarea></P>
	<p> <input type="submit" value="추가하기"></p>
</form>
</div>
</body>
</html>