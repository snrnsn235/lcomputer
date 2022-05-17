<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
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
</style>
<body>
     <h1 style = "text-align:center;">Home Page</h1>
     <h2 style = "text-align:center;">${user.username}님 환영합니다.</h2>
        <hr>
        <div>
	        <sec:authorize access="isAnonymous()">
	        <table>
		        <tr>
		        	<td><a href="/login">로그인</a></td>
		        	<td><a href="/beforeSignUp">회원가입</a></td>
		        </tr>
	        </table>
	           
	           
	        </sec:authorize>
	        <sec:authorize access="isAuthenticated">
	           <a href="/logout" >로그아웃</a>
	           <sec:authentication property="principal" var="principal"/>
	           <!-- <h2>${principal }</h2> -->
	        </sec:authorize>
	    </div>
	    <div>
         	<sec:authorize access="isAuthenticated()">  
         	<table>
         		<tr>
         			<td><a href="/user/info">내 정보</a></td>
         			<td><a href="/admin">관리자</a></td>
         			<td><a href="/user/list">회원리스트</a></td>
         			<td><a href="/board/list">게시판</a></td>
         	</table>     
            </sec:authorize>
        </div>   
</body>
</html>