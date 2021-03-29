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
					<c:if test="${date ge day && date eq lastDay && month eq 12}">
						<a href="roomList?ckIn=${year}-${month}-${date}T15:00:00&ckOut=${year + 1}-${month + 1}-${1}T11:00:00">
					</c:if>
					<c:if test="${date ge day && date eq lastDay && month ne 12}">
						<a href="roomList?ckIn=${year}-${month}-${date}T15:00:00&ckOut=${year}-${month + 1}-${1}T11:00:00">
					</c:if>
					<c:if test="${date ge day && date ne lastDay}">
						<a href="roomList?ckIn=${year}-${month}-${date}T15:00:00&ckOut=${year}-${month}-${date + 1}T11:00:00">
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
						<c:if test="${date ge day && date2 eq nextLastDay && month eq 12}">
						<a href="roomList?ckIn=${year}-${month}-${date2}T15:00:00&ckOut=${year + 1}-${month + 1}-${1}T11:00:00">
					</c:if>
					<c:if test="${date ge day && date2 eq nextLastDay && month ne 12}">
						<a href="roomList?ckIn=${year}-${month}-${date2}T15:00:00&ckOut=${year}-${month + 1}-${1}T11:00:00">
					</c:if>
					<c:if test="${date ge day && date2 ne nextLastDay}">
						<a href="roomList?ckIn=${year}-${month}-${date2}T15:00:00&ckOut=${year}-${month}-${date2 + 1}T11:00:00">
					</c:if>
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
		<c:set var="exist" value="0"/>
	<c:forEach items="${vcRoom}" var="room">
		<c:if test="${room.rmName != null }">
		<table onclick="javascript:location.href='roomResv?ckIn=${ckIn}&ckOut=${ckOut}&rmNo=${room.rmNo}'" >
			<tr>
				<td rowspan="7"><img alt="이미지" src="../room/upload/${fn:split(room.rmFile, '`')[0]}" width = "500"></td>
			</tr>
			<tr>
				<td><h3>${room.rmName}</h3></td>
			</tr>
			<tr>
				<td>수용인원 : 성인 ${room.rmNum }인</td>
			</tr>
			<c:forTokens items="${room.rmContent}" delims="`" var="content">
				<tr>
					<td>${content}</td>
				</tr>
			</c:forTokens>
			<tr>
				<th>${room.rmChar }</th>
			</tr>
		</table>
		<hr width="800">
		<c:set value="${exist + 1}" var="exist"/>
		</c:if>
	</c:forEach>
	<c:if test="${exist eq 0 }">
		현재 비어있는 방이 없습니다.
	</c:if>
</body>
</html>