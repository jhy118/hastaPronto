<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
주문서 리스트 페이지입니다.<br />
<table border = "1">
	<tr>
		<th>메뉴 이름</th>
		<th>메뉴 수량</th>
		<th>메뉴 금액</th>   
	</tr>
	<c:forEach items="${resStList}" var="resSt" varStatus="resStatus">
	<tr>
		<th>${resSt.resmenuDTO.rtMenu }</th>    
		<th>${resSt.oderSnum }</th>  
		<th>${resSt.oderSchar }</th>   
	</tr>
	</c:forEach>
	<tr>
	<td colspan="3" align="right">총금액</td>
	</tr>
</table>
</body>
</html>