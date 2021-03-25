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
	<form:form action="resmenuModifyPro" method="post" modelAttribute="resmenu">
	<form:hidden path="rtMenuNo"/>	
	<form:hidden path="rtNo"/>
	<table border = "1">
		<tr><td>메뉴 이름</td><td><input type="text" name="rtMenu" value="${resmenu.rtMenu }"></td></tr>
		<tr><td>메뉴 가격</td><td><input type="text" name="rtMenuChar" value="${resmenu.rtMenuChar }"></td></tr>
		<tr><td>메뉴 내용</td><td><input type="text" name="rtMenuCon" value="${resmenu.rtMenuCon }"></td></tr>
		<c:forTokens items="${resmenu.rtMenuImage }" delims="`" var="rm">
		<img width="200" src="upload/${rt} ">
		</c:forTokens>
	</table>
		<input type="submit" value="수정" />
		<input type="button" value="취소" onclick="javascript:history.back();">
	</form:form>
</body>
</html>