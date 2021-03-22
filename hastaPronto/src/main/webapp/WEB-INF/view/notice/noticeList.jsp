<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.lg:hover{
		background: lightGray;
	}
</style>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${noticeList}" var="noti" varStatus="status">
			<tr class="lg" onclick="javascript:location.href='noticeDetail/${noti.noticeNo}';">
				<td>${status.count}</td>
				<td>${noti.noticeName}</td>
				<td>${noti.noticeDate}</td>
				<td>${noti.readCount}</td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="4"><%@include file="../include/includePage.jsp" %>
			</th>
		</tr>
	</table>
	<a href="noticeRegist">공고등록</a>
</body>
</html>