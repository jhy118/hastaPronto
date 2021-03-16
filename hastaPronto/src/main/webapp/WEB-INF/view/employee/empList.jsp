<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>번호</th>
		<th>사번</th>		
		<th>이름</th>		
		<th>입사일</th>		
		<th>주소</th>		
	</tr>
	<c:forEach items="${lists}" var="list" varStatus="status">
	<tr onclick="javascript:location.href='<c:url value="/emp/empDetail/${list.empId}"/>'">
		<th>${status.count}</th>
		<th>${list.empNo}</th>
		<th>${list.empName}</th>
		<th>${list.empRegist}</th>
		<th>${list.empAddr}</th>
	</tr>
	</c:forEach>
</table>
<a href="empRegist">직원등록</a>
</body>
</html>