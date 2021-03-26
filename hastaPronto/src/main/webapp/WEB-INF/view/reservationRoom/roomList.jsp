<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.tbl{
		vertical-align: top;
		display: inline-block;
		margin: 15px;
	}
</style>
</head>
<body>
	<table class = "tbl">
		<tr>
			<th colspan="7">${year}<br>${month}</th>
		</tr>
		<tr>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
		<tr>
			<c:forEach begin="1" end="42" var="idx">
			<c:set value="${idx - firstWeekDay + 1}" var="date"/>
				<th>
				<c:if test="${date gt 0 && date le lastDay}">
					<c:if test="${date ge day}">
						<a href="roomList?chIn=${year}-${month}-${date}T15:00:00">
					</c:if>
				${date}
					<c:if test="${date ge day}">
						</a>
					</c:if>
				</c:if>
				</th>
				<c:if test="${idx % 7 == 0 }">
					</tr>
					<tr>
				</c:if>
			</c:forEach>
		</tr>
	<c:if test="${month + 1 le 12}">
	<c:set value = "${month + 1}" var="month"/>
	</c:if>
	<c:if test="${month + 1 gt 12}">
	<c:set value="${month = 1}" var="month"/>
	<c:set value="${year + 1}" var="year"/>
	</c:if>
	</table>
	<table class = "tbl">
		<tr>
			<th colspan="7">${year}<br>${month}</th>
		</tr>
		<tr>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
		<tr>
			<c:forEach begin="1" end="42" var="idx">
			<c:set value="${idx - nextFstDay + 1}" var="date2"/>
				<th>
				<c:if test="${date2 gt 0 && date2 le nextLastDay}">
						<a href="roomList?chIn=${year}-${month}-${date2}T15:00:00">
				${date2}
						</a>
				</c:if>
				</th>
				<c:if test="${idx % 7 == 0 }">
					</tr>
					<tr>
				</c:if>
			</c:forEach>
		</tr>
	</table>
	
	
</body>
</html>