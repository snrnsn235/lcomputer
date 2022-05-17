<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#sform {
       	border-collapse:collapse;
		width:300px;
		margin:40px auto;
        }
</style>
<body>
	<h1 style = "text-align:center;">회원 가입</h1>
		<hr>
	<div id="sform">
		<form action="/signup" method="post">
			<!-- csrf -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			<p> 아이디 : <input type = "text" name="username" placeholder="id 입력"></p>
			<p> 비밀번호 : <input type = "password" name="password" placeholder="password 입력"></p>
			<p> 이름 : <input type = "text" name="uName" placeholder="name 입력"></p>
			<p> 연락처 : <input type = "text" name="tel" value="${user.u_tel }"></p>
			<p> 주소 : <input type = "text" name="address" value="${user.u_address }"></p>
			<p> 나이 : <input type = "text" name="age" value="${user.u_age }"></p>
			<button type="submit">가입하기</button>
		</form>
	</div>
</body>
</html>