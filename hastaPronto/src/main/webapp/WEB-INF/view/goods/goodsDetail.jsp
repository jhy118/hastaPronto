<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteGoods() {
		if (confirm('삭제하시겠습니까?')) {
			location.href = '../goodsDelete/${goods.goodsNo}';
		}
	}
</script>
</head>
<body>
	<table>
		<tr>
			<th>상품명</th>
			<td>${goods.goodsName }</td>
		</tr>
		<tr>
			<th>이미지</th>
			<td><img alt="사진" src="../upload/${goods.goodsFile }" width="100"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${fn:replace(goods.goodsContent, cn, br) }</td>
		</tr>
		<tr>
			<th>가격</th>
			<td><fmt:formatNumber pattern="\ #,###"
					value="${goods.goodsChar }" /></td>
		</tr>
	</table>
	<input type="button" value="수정하기"
		onclick="javascript:location.href='../goodsModify/${goods.goodsNo}'">
	<input type="button" value="삭제하기" onclick="deleteGoods();">
	<input type="button" value="목록으로"
		onclick="javascript:location.href='../goods'">
</body>
</html>