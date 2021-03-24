<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="resRegistPro" method="post" modelAttribute="resRegist" enctype="multipart/form-data">
		<table>
			<tr>
			<th>레스토랑 이름</th>
			<td><form:input path = "rtName" /></td>
			</tr>
			<tr>
			<th>레스토랑 내용</th>
			<td><form:textarea path="rtContent" rows="25" cols="40"/></td>
			</tr>
			<tr>
			<th>레스토랑 사진</th>
			<td><input type="file" name="rtFile" multiple="multiple"></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="레스토랑 등록"></td>
				<td><input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>