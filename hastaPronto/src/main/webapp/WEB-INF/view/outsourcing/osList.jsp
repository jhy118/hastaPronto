<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osList.jsp</title>
</head>
<body>
<h2>OUTSOURCING LIST</h2>
<table border="1">
	<tr>
		<th colspan="2">업체리스트 </th>
		<th>  [${count }] 업체</th>
	</tr>
	<tr>
		<th> 업체번호 </th>
		<th> 업체이름 </th>
		<th> 사업분류이름 </th>
	</tr>
	<c:forEach items="${osList}" var="dto" varStatus="status">
	<tr align="center">
		<td>${status.count }</td>
		<td>${dto.osName }</td>
		<td>${dto.repName }</td>
	</tr>
	</c:forEach>
</table>
<%@ include file="../include/includePage.jsp" %>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="osForm">업체등록하기</a>
</body>
</html>