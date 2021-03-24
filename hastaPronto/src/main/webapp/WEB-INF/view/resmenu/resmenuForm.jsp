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
	<form:form action="resmenuRegistPro" method="post" 
				modelAttribute="resmenuRegist" enctype="multipart/form-data">
		<table>
			<tr>
			<th>메뉴 이름</th>
			<td></td>
			</tr>
			<tr>
			<th>메뉴 가격</th>
			<td></td>
			</tr>
			<tr>
			<th>메뉴 내용</th>
			<td></td>
			</tr>
			<tr>
			<th>메뉴 사진</th>
			<td></td>
			</tr>
			<tr><td colspan="3"><input type="submit" value="메뉴 등록"></td>
				<td><input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>