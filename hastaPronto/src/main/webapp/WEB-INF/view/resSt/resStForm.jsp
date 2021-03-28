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
	<form:form action="resStRegistPro" method="post"
		modelAttribute="resStRegist">
	<table border = "1">
		<tr><td>메뉴 이름</td><td>${resmenu.rtMenu }</td></tr>
		<tr><td>메뉴 가격</td><td>${resmenu.rtMenuChar }</td></tr>
		<tr><td>메뉴 수량</td><td></td></tr>
		<tr><td>총 가격</td><td></td></tr>
		<tr><td colspan="3"><input type="submit" value="주문서 담기"></td>
				<td><input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
	</table>
	</form:form>
</body>
</html>