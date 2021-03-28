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
	<table border = "1">
		<tr>
			<th>메뉴 이름</th>
			<th>메뉴 가격</th>
			<th>메뉴 내용</th>  
		</tr>
		<c:forEach items="${resmenuList }" var="resmenu" varStatus="resmenuList">
		<tr onclick="javascript:location.href='resmenuDetail?rtMenuNo=${resmenu.rtMenuNo}'">
			<th>${resmenu.rtMenu }</th>   
			<th>${resmenu.rtMenuChar }</th>  
			<th>${resmenu.rtMenuCon }</th>
		</tr>
		</c:forEach>
	</table>
	<%@ include file = "../include/includePage.jsp" %>
<a href="resmenuForm?rtNo=${rtNo}">레스토랑 메뉴등록</a>
<a href="javascript:location.href='../resSt/resStList'">주문서 담기</a>
</body>
</html>