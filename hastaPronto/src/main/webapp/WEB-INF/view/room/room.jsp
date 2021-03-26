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
	<table>
		<tr>
			<th>이미지</th>
			<th>방이름</th>
		</tr>
		<c:forEach items="${roomList }" var="room">
		<c:set value="${fn:split(room.rmFile, '`')}" var="rmImg"/>
			<tr>
				<td><img alt="사진" src="upload/${rmImg[0]}"  width="200" 
				onclick="javascript:location.href='roomInfo/${room.rmNo}'"></td>
				<td>${room.rmName}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="roomRegist">등록하기</a>
</body>
</html>