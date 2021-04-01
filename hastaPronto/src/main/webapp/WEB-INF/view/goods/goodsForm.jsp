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
	<form:form method="post" modelAttribute="goodsCommand"
		enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>상품이름</th>
				<td><form:input path="goodsName" />${nameErr}</td>
			</tr>
			<tr>
				<th>사진</th>
				<td><input type="file" name="goodsFile" />${fileErr}</td>

			</tr>
			<tr>
				<th>상품설명</th>
				<td><form:textarea path="goodsContent" cols="30" rows="5" /></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><form:input path="goodsChar" />${charErr}</td>
			</tr>
		</table>
		<input type="submit" value="상품등록">
		<input type="button" value="목록" onclick="javascript:history.back();">
	</form:form>
</body>
</html>