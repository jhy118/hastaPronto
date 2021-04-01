<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedPmList.jsp</title>
</head>
<body>
<table border="1">
	<tr>
		<th>번호</th>
		<th>고객ID</th>
		<th>결제금액</th>
		<th>결제일</th>
	</tr>
	<c:forEach items="${list}" var="dto" varStatus="status">
	<tr onclick="javascript:location.href='wedPmInfo?wedPmNo=${dto.wedPmNo}';">
		<td>${dto.wedPmNo}</td>
		<td>${dto.userId}</td>
		<td>${dto.wedPmChar}원</td>
		<td>${dto.wedPmDate}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>