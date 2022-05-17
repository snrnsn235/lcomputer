<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	h1 {
	text-align: center;
	}
	table {
		border-collapse:collapse;
		margin:40px auto;
	}
	table tr th {
		font-weight:700;
	}
	table tr td, table tr th {
		border:1px solid #818181;
		width:400px;
		height:3px;
		text-align:center;
	}
	a {
		text-decoration:none;
		color:#000;
		font-weight:700;
		border:none;
		cursor:pointer;
		padding:10px;
		display:inline-block;
	}
	
	div {
		border-collapse:collapse;
		margin:40px auto;
		width : 780px;
	}
	div textarea {
		 height: 200px;
		 padding: 100px 100px;
		 box-sizing: border-box;
		 border: 2px solid #ccc;
		 border-radius: 4px;
		 background-color: #f8f8f8;
		 font-size: 16px;
		 overflow:auto;
	}
	
	li {
		list-style:none;
		width:50px;
		line-height:50px;
		border:1px solid #ededed;
		float:left;
		text-align:center;
		margin:0 5px;
		border-radius:5px;
	}
</style>
</head>
<body>
	<h1>게시판 상세페이지</h1>
	<table>
			<tr>
				<td>번호</td>
				<td>${board.bIdx }</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${board.bTitle }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${board.bContent }</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${board.uId }</td>
			</tr>
			
			<tr style = "height:50px;">
				<td style = "boarder:none;">
					<a href = "${path }/board/get?bIdx=${board.bIdx }" style="width:70%; font-weight:700; background-color:#818181; color:#fff;">수정</a>
				</td>
				<td style = "boarder:none;">
					<a href = "${path }/board/delete?bIdx=${board.bIdx }" style="width:70%; font-weight:700; background-color:red; color:#fff;">삭제</a>
				</td>
			</tr>
			<tr>
				<td style = "boarder:none;">
					<a href ="" style="width:70%; font-weight:700; background-color:green; color:#fff;">답글달기</a>
				</td>
				<td style = "boarder:none;">
					<a href ="/board/list" style="width:70%; font-weight:700; background-color:skyblue; color:#fff;">돌아가기</a>
				</td>
			</tr>		
	</table>
</body>
</html>