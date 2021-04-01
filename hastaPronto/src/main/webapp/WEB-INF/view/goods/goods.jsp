<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.gr:hover{
		background: lightgray;
	}
</style>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이미지</th>
			<th>상품명</th>
		</tr>
		<c:forEach items="${goodsList}" var="goods" varStatus="status">
			<tr class="gr" onclick="javascript:location.href='goodsDetail/${goods.goodsNo}'">
				<td>${page * 10 - 9 + status.index}</td>
				<th><img alt="상품사진" src="upload/${goods.goodsFile}" height="100" > </th>
				<td>${goods.goodsName}</td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="3"><%@include file="../include/includePage.jsp"%>
			</th>
		</tr>
	</table>
	<input type="button" value="상품등록" onclick="javascript:location.href='goodsRegist';">
</body>
</html>