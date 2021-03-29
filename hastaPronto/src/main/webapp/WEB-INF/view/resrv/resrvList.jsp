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
			<th>고객아이디</th>  
			<th>인원수</th>
			<th>날짜</th>
		</tr>     
		<c:forEach items="${resrvList }" var="resrv" varStatus="resrvList">
		<tr onclick="javascript:location.href='resrvDetail?rtRvNo=${resrv.rtRvNo}&rtNo=${rtNo}'">
			<th>${resrv.userId }</th>
			<th>${resrv.rtrvNum }</th>
			<th>${resrv.rtRvTime }</th> 
		</tr>
		</c:forEach>
	</table>
<a href="resrvForm?rtNo=${rtNo }">예약 등록</a>
</body>
</html>
