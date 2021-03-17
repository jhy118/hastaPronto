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
	<form:form action="deptRegist" method="post" modelAttribute="deptCommand">
		<table border="1">
			<tr>
				<th>부서명</th>
				<td><form:input path="depName"/>
				<form:errors path="depName" /></td>
			</tr>
			<tr>
				<th>부서주소</th>
				<td><form:input path="depAddr"/>
				<form:errors path="depName" /></td>
			</tr>
			<tr>
				<th>부서연락처</th>
				<td><form:input path="depPh" placeholder="000-0000-0000"/>
				<form:errors path="depName" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록하기">
				<input type="button" value="뒤로가기" onclick ="javascript:history.back();"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>