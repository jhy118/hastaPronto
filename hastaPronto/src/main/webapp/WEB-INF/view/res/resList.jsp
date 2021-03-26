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
	<table border = "1">
		<tr>
			<th>레스토랑 번호</th>
			<th>레스토랑 이름</th>
			<th>레스토랑 내용</th>
		</tr>
		<c:forEach items="${resList }" var="res" varStatus="resList">
		<tr onclick="javascript:location.href='resDetail?rtNo=${res.rtNo}'">
			<th>${resList.count }</th>
			<th>${res.rtName }</th>
			<th>${res.rtContent }</th>
		</tr>
		</c:forEach>
	</table>
	<%@ include file = "../include/includePage.jsp" %>
	<a href="resForm">레스토랑 등록</a>  
</body>
</html>