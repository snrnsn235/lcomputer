<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
h1 {
	text-align: center;
}

table {
	border-collapse: collapse;
	margin: 40px auto;
}

table tr th {
	font-weight: 700;
}

table tr td, table tr th {
	border: 1px solid #818181;
	width: 200px;
	text-align: center;
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
<body>
	<h1>회원리스트 관리페이지</h1>
	<a href="/">돌아가기</a>
	<hr>
	<table>
		<tr>
			<td colspan="3">전체 회원수 : ${pagination.count }</td>
		</tr>
		<tr>
			<td>회원이름</td>
			<td>회원아이디</td>
			<td>가입날짜</td>
		</tr>
		<c:forEach var="list" items="${list }">
			<tr>
				<td><a href="${path }/user/detail?username=${list.username}">${list.uName }</a></td>
				<td>${list.username }</td>
				<td>${list.uDateTime }</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<ul>
			<c:choose>
				<c:when test="${pagination.startPage-1 != 0}">
					<li><a href="">◀</a>
					</li>
				</c:when>
			</c:choose>
			<c:forEach var="i" begin="${pagination.startPage}"
				end="${pagination.endPage}" step="1">
				<c:choose>
					<c:when test="${pagination.page eq i }">
						<li style="background-color: #ededed;"><span>${i}</span></li>
					</c:when>
					<c:when test="${ pagination.page ne i }">
						<li><a href="">${i}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${pagination.nextPage lt pagination.lastPage }">
					<li><a href="">▶</a>
					</li>
				</c:when>
			</c:choose>
		</ul>
	</div>
</body>
</html>
