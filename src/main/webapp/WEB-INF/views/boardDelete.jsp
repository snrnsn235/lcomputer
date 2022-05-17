<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
</head>
<body>
	<h2>삭제 완료</h2>
	<script>
	setTimeout(function() { //일정 시간이 지난 후에 원하는 함수를 예약 실행할 수 있는 호출 스케줄링
		window.location.href = "/board/list"}, 1000);
	
	</script>
	
</body>
</html>