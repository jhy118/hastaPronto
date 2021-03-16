<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr><th colspan="3">회원리스트</th><th>회원수 : ${count}</th></tr>
		<tr><th>회원번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>주소</th></tr>
		<c:forEach items="${memList }" var="dto" varStatus="status">
		<tr><th>${status.count }</th>
			<th>${dto.userName }</th>
			<th>${dto.userId }</th>
			<th>${dto.userAddr }</th></tr>
		</c:forEach>
		
	</table>
	<a href="memRegist">직원등록</a>
</body>
</html>