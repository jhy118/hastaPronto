<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${noPayList }" var="nP">
		<table border="1" onclick="javascript:location.href='addPayment/${nP.rmRvNo}';">
			<tr>
				<th>예약번호</th>
				<td>${nP.rmRvNo }</td>
				<th>아이디</th>
				<td>${nP.userId}</td>
			</tr>
			<tr>
				<th rowspan="2">날짜</th>
				<td rowspan="2"><fmt:formatDate value="${nP.ckIn}"
						pattern="yyyy/MM/dd hh:mm" /><br> ~<br> <fmt:formatDate
						value="${nP.ckOut}" pattern="yyyy/MM/dd hh:mm"/></td>
				<th>예약자이름</th>
				<td>${nP.memberDTO.userName}</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>${nP.memberDTO.userPh }</td>
			</tr>
		</table>
		<br>
	</c:forEach>
</body>
</html>