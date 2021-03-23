<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsPayStList.jsp</title>
</head>
<body>
<a href="payStWrite">등록하기</a><br />
<select name="osNo">
	<c:forEach items="${osList}" var="dto">
		<option value="${dto.osNo}">${dto.osName}</option>
	</c:forEach>
</select>
<c:if test="${osNo.getcount > 0}">
<table border="1">
	<tr><th>대금지급번호</th><th>품목이름</th><th>대금지급날짜</th></tr>
	<c:forEach items="${list}" var="dto" varStatus="status">
		<tr>
			<td>${status.count}</td>			
			<td>${dto.orderContent}</td>
			<td><fmt:formatDate value="${dto.paymentDate}" type="date"
				pattern = "yyyy-MM-dd" /></td>
		</tr>
	</c:forEach>
</table>
</c:if>
<c:if test="${osNo.getcount <= 0}">
	공지글이 없습니다.<br />   
</c:if>   
<%@ include file="../include/includePage.jsp" %><br />
</body>
</html>