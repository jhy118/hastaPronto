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
	<form:form action="resModifyPro" method="post" modelAttribute="resModify">
	<input type="hidden" name="rtNo" value="${res.rtNo }">
	<table border = "1">
		<tr><td>레스토랑 번호</td><td>${res.rtNo }</td></tr>
		<tr><td>레스토랑 이름</td><td><input type="text" name="rtName" value="${res.rtName }"></td></tr>
		<tr><td>레스토랑 내용</td><td><input type="text" name="rtContent" value="${res.rtContent }"></td></tr>
		<c:forTokens items="${res.rtFile}" delims="`" var="rt">
		<img width="200" src="upload/${rt} ">
		</c:forTokens>
	</table>
		<input type="submit" value="수정" />
		<input type="button" value="취소" onclick="javascript:history.back();">
	</form:form>
</body>
</html>