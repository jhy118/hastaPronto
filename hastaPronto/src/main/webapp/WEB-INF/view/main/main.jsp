<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="<c:url value='emp/empList'/>">직원</a><br />
	<a href="<c:url value='mem/memRegist'/>">회원</a><br/>
	<a href="<c:url value='login/login'/>">로그인</a>
</body>
</html>