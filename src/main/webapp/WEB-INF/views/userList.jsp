<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
     <h1>ȸ������Ʈ ����������</h1>
      <table>
      	<tr>
      		<td>ȸ�����̵�</td>
      		<td>��й�ȣ</td>
      		<td>ȸ���̸�</td>
      		<td>���Գ�¥</td>
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
