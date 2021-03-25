<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedBroWrite.jsp</title>
</head>
<body>
<form:form action="wedBroRegist" name="frm" method="post"
	modelAttribute="wedCommand" enctype="multipart/form-data">
<table border="1">
	<tr><th>웨딩홀이름</th>
		<td><form:input path="wedName" />
			<form:errors path="wedName" /></td></tr>
	<tr><th>홀 이용금액</th>
		<td><form:input path="wedChar" />
			<form:errors path="wedChar" /></td></tr>
	<tr><th>사진</th>
		<td><input type="file" name="wedFile" multiple="multiple" /></td></tr>
	<tr><th>내용</th>
		<td>
			<form:textarea rows="30" cols="50" 
				path="wedContent"></form:textarea>
		</td></tr>
	<tr><th>홀 위치</th>
		<td><form:input path="wedLocation" />
			<form:errors path="wedLocation" /></td></tr>
	<tr><th>수용인원</th>
		<td><form:input path="wedNum" />
			<form:errors path="wedNum" />명</td></tr>
</table>
	<input type="submit" value="등록" />
</form:form>
</body>
</html>