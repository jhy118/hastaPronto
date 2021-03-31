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
	<form:form enctype="multipart/form-data" method="post" modelAttribute="goods">
		<form:hidden path="goodsNo"/>
		<table>
			<tr>
				<th>상품명</th>
				<td><form:input path="goodsName" />${nameErr}</td>
			</tr>
			<tr>
				<th>이미지 변경</th>
				<td><img alt="사진" src="../upload/${goods.goodsFile }"> <br>
				<input type="file" name="goodsFile"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><form:textarea path="goodsContent" rows="5" cols="30"/></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><form:input path="goodsChar"/>${charErr}</td>
			</tr>
		</table>
		<input type="submit" value="수정하기">
		<input type="button" value="뒤로가기" onclick="javascript:history.back();">
	</form:form>
</body>
</html>