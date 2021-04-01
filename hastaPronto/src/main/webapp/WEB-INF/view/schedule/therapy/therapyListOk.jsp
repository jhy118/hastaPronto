<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>therapyListOk.jsp</title>
</head>
<body>
<h2> 전체예약 내역 리스트 </h2>
<table border="1">
	<tr>
		<th colspan="3"> 예약리스트 </th>
		<th colspan="2"> 총 예약수 : [${count }] </th>
	</tr>
	<tr>
		<th> 예약번호 </th>
		<th> 예약일 </th>
		<th> 예약시간 </th>
		<th> 예약자명 </th>
		<th> 지정관리사 </th>
	</tr>
		<c:if test="${count > 0 }">
		<c:forEach items="${lists }" var="sch" varStatus="status">
	<tr onclick="javascript:location.href='therapyDetail?schNo=${sch.schNo}'" align="center">
			<th>${sch.schNo }</th>
			<td>${sch.schDate}</td>
			<td>${sch.schTime}</td>
			<td>${sch.schName }</td>
			<td>
				<c:if test="${sch.oseNo eq '107' }">김나린</c:if>
				<c:if test="${sch.oseNo eq '108' }">진유라</c:if>
				<c:if test="${sch.oseNo eq '109' }">김태리</c:if>
				<c:if test="${sch.oseNo eq '110' }">박연우</c:if>
				<c:if test="${sch.oseNo eq '111' }">첫방문(미지정) </c:if>
			</td>
	</tr>
		</c:forEach>
		</c:if>
	<tr align="center"> 
			<th colspan="6">
				<%@ include file="../../include/includePage.jsp" %>&nbsp;&nbsp;
				<c:if test="${count <= 0 }">
					예약내역이 없습니다.
				</c:if>
				<a href="therapyList">뒤로가기</a>&nbsp;&nbsp;
				<a href="/hastaPronto">메인으로 가기</a>
			</th>
		</tr>
</table>
</body>
</html>