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
	<c:forEach items="${resvRoom}" var="resv" varStatus="status">
		<table border="1" onclick="javascript:location.href='reservationDetail/${resv.rmRvNo}'">
			<tr>
				<th>예약번호</th>
				<td>${resv.rmRvNo}</td>
			</tr>
			<tr>
				<th>날짜</th>
				<td><fmt:formatDate value="${resv.ckIn}" type="date"
						pattern="yyyy년 MM월 dd일 hh:mm" /> ~ <fmt:formatDate
						value="${resv.ckOut}" type="date" pattern="yyyy년 MM월 dd일 hh:mm" />
				</td>
			</tr>
			<tr>
				<th>객실명</th>
				<td>${resv.roomDTO.rmName }</td>
			</tr>
		</table>
		<hr>
	</c:forEach>
</body>
</html>