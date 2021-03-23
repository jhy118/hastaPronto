<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post">
		<table border="1">
			<tr>
				<th>이메일</th>
				<td><input type="text" name="appEmail"></td>
				<th rowspan="2"><input type="submit" value="확인"></th>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="appPw"></td>
			</tr>
		</table>
		${error}
	</form:form>
</body>
</html>