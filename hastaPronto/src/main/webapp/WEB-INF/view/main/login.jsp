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
	<form:form action="login" method="post" name="frm"
		modelAttribute="loginCommand">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><form:input path="loginId" /> 
				<form:errors path="loginId" />${notMachedId }</td>
				<th rowspan="2"><input type="submit" value="로그인" /></th>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="loginPw" /> 
				<form:errors path="loginPw" />${notMachedPw }</td>
			</tr>
		</table>
	</form:form>
</body>
</html>