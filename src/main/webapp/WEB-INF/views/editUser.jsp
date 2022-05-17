<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
<br><br>
<div align="center"><font size=5> 회원정보 수정하기 </font></div> <br>
<div align="center">
<br><br>
<form action="/user/edit">
	<table border=1 width=600>
		<tr>
			<td  align=center>회원성명 </td>
			<td> <input  type=text  name=username  value= ${user.username }></td>
		</tr>
		<tr>
			<td  align=center>회원전화 </td>
			<td><input  type=text  name=tel size=20 value= ${user.tel }></td>
		</tr>
		<tr>
			<td  align=center>회원주소 </td>
			<td><input  type=text  name=address size=20 value= ${user.address }></td>
		</tr>
		<tr>
			<td  align=center>회원이름</td>
			<td><input  type=text  name=uName size=10 value= ${user.uName }></td>
		</tr>
		<tr>
			<td  align=center>회원나이 </td>
			<td><input  type=text  name=age size=10 value= ${user.age }> </td>
		</tr>
		<tr>
			<td colspan=2  align=center>
				<input  type=submit  value="수정"> &emsp;
				<input  type=reset   value="다시입력">
			</td>
		</tr>
	</table>
</form>
</div>
</section>
