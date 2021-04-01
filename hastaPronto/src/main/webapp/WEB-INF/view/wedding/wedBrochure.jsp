<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedBrochure.jsp</title>
</head>
<body>
<c:if test="${authInfo.grade == 'emp' }">
	<a href="wedBroWrite">웨딩사진 등록</a><br />
	<a href="<c:url value='../wedPay/wedPmList'/>">웨딩 결제내역</a><br />
</c:if>

<br />
<!-- 웨딩 예약 버튼 추가쓰 -->
<a href="<c:url value='../wedRes/wedResList'/>">WEDDING RESTAURANT</a><br />
<a href="<c:url value='../wedCs/wedCsList'/>">웨딩 예약 문의</a><br />
<a href="<c:url value='../wedRv/wedRvList'/>">웨딩 최종 예약</a><br />


<c:forEach items="${list}" var="dto" varStatus="status">
<table onclick="javascript:location.href=
	'wedBroInfo?wedNo=${dto.wedNo}';">
	<tr>
		<th colspan="2">
			<c:forTokens items="${dto.wedFile}" delims="`"
				var="i" begin="0" end="0">
				<img alt="" src="../wedding/upload/${i}"/>
			</c:forTokens>	
		</th>
	</tr>
	<tr><th colspan="2">${dto.wedName}</th></tr>
	<tr><th>수용인원</th><th>${dto.wedNum}</th></tr>
</table>
<br /><br /><br /><br /><br /><br /><br /><br />
</c:forEach>

</body>
</html>