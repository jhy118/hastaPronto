<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osEmpList.jsp</title>
</head>
<body>
<h2>OS_EMPLOYEES LIST</h2>
<table border="1">
	<tr>
		<th colspan="2">강사리스트 </th>
		<th>  외부직원 수 : [${count }]</th>
	</tr>
	<tr>
		<th> 업체번호 </th>
		<th> 강사이름 </th>
		<th> 강좌이름 </th>
	</tr>
	<c:forEach items="${list}" var="osemp" varStatus="status">
		<tr align="center">
			<td> 
				<c:if test="${osemp.osNo eq '89' }">FitnessH</c:if>
				<c:if test="${osemp.osNo eq '90' }">SwimmingS</c:if>
				<c:if test="${osemp.osNo eq '91' }">TheraphyT</c:if>
			</td>
			<td>
				<a href="osEmpDetail?oseNo=${osemp.oseNo}">${osemp.oseName}</a>
			</td>
			<td>${osemp.oseCat }</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="../include/includePage.jsp" %>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="osEmpForm">[강사등록]</a>
</body>
</html>