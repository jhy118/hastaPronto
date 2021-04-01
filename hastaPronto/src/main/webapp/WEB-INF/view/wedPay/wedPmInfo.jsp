<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myWedPmInfo.jsp</title>
</head>
<body>
<table border = "1">
	<tr><td align="center">결제번호</td>
		<td>${list.wedPmNo}</td></tr> 
	<tr><td align="center">고객 아이디</td>
		<td>${list.userId}</td></tr>
	<tr><td align="center">결제방법</td>
		<td>${list.wedPmMethod}</td></tr>
	<tr><td align="center">웨딩홀 금액</td>
		<td>${wedList.wedChar}</td></tr>
	<tr><td align="center">레스토랑 금액</td>
		<td>${wedRtList.wedRtChar}</td></tr>
	<tr>
		<td align="center">예약금(선결제금액)</td>
		<td>${(0.1*wedList.wedChar)+(0.1*wedRtList.wedRtChar)}원</td>
	</tr>
	<tr><td align="center">총결제금액</td>
		<td>${list.wedPmChar}</td></tr>
</table>
</body>
</html>