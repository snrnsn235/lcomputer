<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
     <h1>회원리스트 관리페이지</h1>
      <table>
      	<tr>
      		<td>회원아이디</td>
      		<td>비밀번호</td>
      		<td>회원이름</td>
      		<td>가입날짜</td>
      	</tr>
      	<c:forEach var="list" items="${list }">
	      	<tr>
	      		<td>${list.username }</td>
	      		<td>${list.password }</td>
	      		<td>${list.uName }</td>
	      		<td>${list.uDateTime }</td>
	      	</tr>
      	</c:forEach>
      </table>
</body>
</html>
