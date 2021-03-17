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
	<form:form action="" method="post" modelAttribute="depCommand">
		<input type="hidden" name = "depNo" value="${dept.depNo}">
		<table border="1">
			<tr>
				<th>부서명</th>
				<td><input type="text" name="depName" value="${dept.depName}"></td>
			</tr>
			<tr>
				<th>부서주소</th>
				<td><input type="text" name="depAddr" value="${dept.depAddr}"></td>
			</tr>
			<tr>
				<th>부서연락처</th>
				<td><input type="text" name="depPh" value="${dept.depPh}"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정하기"> <input
					type="button" value="뒤로가기" onclick="javascript:history.back();"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>