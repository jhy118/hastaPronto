<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="" method="post" modelattribute="">
		<table>
			<tr>
				<th>이름</th>
				<td><form:input path="empName"/></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="empPh"/></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="empEmail"/></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="empAddr"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><form:="empAddr"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>