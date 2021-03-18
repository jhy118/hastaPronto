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
	<a href="<c:url value='dept/deptList'/>">부서</a><br />
	<a href="<c:url value='emp/empList'/>">직원</a><br />
	<a href="<c:url value='mem/memRegist'/>">회원가입</a><br />
	<a href="<c:url value='man/memList'/>">회원리스트</a><br />
	<a href="<c:url value='login/login'/>">로그인</a><br >
	<a href="<c:url value='ann/annList'/>">공지사항</a><br >
	<a href="<c:url value='outsourcing/osList'/>">협력업체</a>
</body>
</html>