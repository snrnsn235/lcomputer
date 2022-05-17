<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세페이지</title>
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
a {
	text-decoration: none;
	color: #000;
	font-weight: 700;
	border: none;
	cursor: pointer;
	padding: 10px;
	display: inline-block;
}
</style>

<body>
	<h1>회원 상세 페이지</h1>
	<a href="/user/list">돌아가기</a>
	<hr>
	
	<table>
		<tr>
			<td>회원 ID
			<td>${user.username }
		</tr>
		<tr>
			<td>회원이름
			<td>${user.uName }
		</tr>
		<tr>
			<td>회원 나이
			<td>${user.age }
		</tr>
		<tr>
			<td>회원가입날짜
			<td>${user.uDateTime }
		</tr>
		<tr>
			<td>회원주소
			<td>${user.address }
		</tr>
		<tr>
			<td>회원 전화번호
			<td>${user.tel}
		</tr>
		<tr style="height:50px;">
			<td style="border:none;">
				<a href="${path }/user/get?username=${user.username}" style="width:70%;font-weight:700;background-color:#818181;color:#fff;">수정</a>
			</td>
			<td style="border:none;">
				<a href="${path }/user/delete?username=${user.username}" style="width:70%;font-weight:700;background-color:red;color:#fff;">삭제</a>
			</td>
		</tr>
	</table>
</body>
</html>